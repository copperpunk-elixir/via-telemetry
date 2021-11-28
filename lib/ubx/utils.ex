defmodule ViaTelemetry.Ubx.Utils do
  require Logger
  require ViaUtils.Shared.ValueNames, as: SVN
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses

  def variable_length_bytes_and_values(
        output_map,
        identifier_map,
        id_bytes,
        value_bytes,
        multiplier
      ) do
    Enum.reduce(identifier_map, {[], []}, fn {id_key, id_value}, {bytes_acc, values_acc} ->
      single_output = Map.fetch!(output_map, id_value)

      {[id_bytes, value_bytes] ++ bytes_acc,
       [id_key, round(single_output / multiplier)] ++ values_acc}
    end)
  end

  def get_output_values_fixed_byte_size_pairs(
        payload,
        identifier_map,
        id_bytes,
        value_bytes,
        multiplier
      ) do
    Enum.reduce(Stream.chunk_every(payload, id_bytes + value_bytes), %{}, fn chunk, acc ->
      {id_key_endian, value_endian} = Enum.split(chunk, id_bytes)
      # Logger.debug("id/value_ending: #{id_key_endian}/#{inspect(value_endian)}")
      # , id_bytes)
      id_key = ViaUtils.Enum.list_to_int_little_end(id_key_endian)
      # Logger.debug("id_key: #{id_key}")
      # Logger.debug("value_endian/val_bytes: #{inspect(value_endian)}/#{value_bytes}")
      value =
        ViaUtils.Enum.list_to_int_little_end(value_endian)
        |> ViaUtils.Math.twos_comp(value_bytes * 8)
        |> Kernel.*(multiplier)

      value_key = Map.get(identifier_map, id_key, nil)
      if is_nil(value_key), do: acc, else: Map.put(acc, value_key, value)
    end)
  end

  @spec add_time(map) :: map()
  def add_time(values) do
    Map.put(values, SVN.time_since_boot_s(), ViaUtils.Process.time_since_boot_s())
  end

  def get_module_for_class_and_id(msg_class, msg_id) do
    get_id_module =
      case msg_class do
        MsgClasses.companion() -> ViaTelemetry.Ubx.Companion
        MsgClasses.vehicle_cmds() -> ViaTelemetry.Ubx.VehicleCmds
        MsgClasses.actions() -> ViaTelemetry.Ubx.Actions
        MsgClasses.vehicle_state() -> ViaTelemetry.Ubx.VehicleState
        MsgClasses.standard_nav() -> ViaTelemetry.Ubx.StandardNav
      end
      |> Module.concat(MsgIds)

    apply(get_id_module, :get_module_for_id, [msg_id])
  end
end
