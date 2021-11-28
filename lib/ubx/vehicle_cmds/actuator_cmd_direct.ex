defmodule ViaTelemetry.Ubx.VehicleCmds.ActuatorCmdDirect do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds

  @doc """
   This is a variable length message - You must define the keys and bytes on your own
   The multiplier for each value is 10000
   Every command consists of a pair:

   channel_number (1 bytes)
   channel_value (2 bytes, [-10000,10000])

  """
  defmacro class, do: MsgClasses.vehicle_cmds()
  defmacro id, do: MsgIds.actuator_cmd_direct()
  defmacro multipliers, do: 1.0e-4

  @id_bytes 1
  @value_bytes_construct -2
  @value_bytes_deconstruct 2
  def get_payload_bytes_and_values(actuator_output_map, channel_names) do
    ViaTelemetry.Ubx.Utils.variable_length_bytes_and_values(
      actuator_output_map,
      channel_names,
      @id_bytes,
      @value_bytes_construct,
      multipliers()
    )
  end

  def get_output_values(payload, channel_names) do
    ViaTelemetry.Ubx.Utils.get_output_values_fixed_byte_size_pairs(
      payload,
      channel_names,
      @id_bytes,
      @value_bytes_deconstruct,
      multipliers()
    )
  end

  def get_class(), do: class()
  def get_id(), do: id()
  def get_multipliers(), do: multipliers()
end
