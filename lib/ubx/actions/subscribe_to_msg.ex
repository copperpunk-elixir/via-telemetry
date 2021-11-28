defmodule ViaTelemetry.Ubx.Actions.SubscribeToMsg do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.Bytes, as: B
  require ViaTelemetry.Ubx.Multipliers, as: M
  require ViaTelemetry.Ubx.Actions.MsgIds, as: MsgIds
  require ViaUtils.Shared.ValueNames, as: SVN
  defmacro class, do: MsgClasses.actions()
  defmacro id, do: MsgIds.subscribe_to_msg()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.message_class(),
      B.message_id(),
      B.message_frequency_hz()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.message_class(),
      M.message_id(),
      M.message_frequency_hz()
    ]

  defmacro keys,
    do: [
      SVN.vehicle_id(),
      SVN.time_since_boot_s(),
      SVN.message_class(),
      SVN.message_id(),
      SVN.message_frequency_hz()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
