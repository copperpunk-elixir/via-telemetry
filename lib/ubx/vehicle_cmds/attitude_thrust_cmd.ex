defmodule ViaTelemetry.Ubx.VehicleCmds.AttitudeThrustCmd do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.Bytes, as: B
  require ViaTelemetry.Ubx.Multipliers, as: M
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds
  require ViaUtils.Shared.GoalNames, as: SGN

  defmacro class, do: MsgClasses.vehicle_cmds()
  defmacro id, do: MsgIds.attitude_thrust_cmd()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.pilot_control_level(),
      B.roll_rad(),
      B.pitch_rad(),
      B.deltayaw_rad(),
      B.thrust_scaled()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.pilot_control_level(),
      M.roll_rad(),
      M.pitch_rad(),
      M.deltayaw_rad(),
      M.thrust_scaled()
    ]

  defmacro keys,
    do: [
      SGN.vehicle_id(),
      SGN.time_since_boot_s(),
      SGN.pilot_control_level(),
      SGN.roll_rad(),
      SGN.pitch_rad(),
      SGN.deltayaw_rad(),
      SGN.thrust_scaled()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
