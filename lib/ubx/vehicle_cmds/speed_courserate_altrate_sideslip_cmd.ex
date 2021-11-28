defmodule ViaTelemetry.Ubx.VehicleCmds.SpeedCourserateAltrateSideslipCmd do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.Bytes, as: B
  require ViaTelemetry.Ubx.Multipliers, as: M
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds
  require ViaUtils.Shared.GoalNames, as: SGN

  defmacro class, do: MsgClasses.vehicle_cmds()
  defmacro id, do: MsgIds.speed_courserate_altrate_sideslip_cmd()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.pilot_control_level(),
      B.groundspeed_mps(),
      B.course_rate_rps(),
      B.altitude_rate_mps(),
      B.sideslip_rad()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.pilot_control_level(),
      M.groundspeed_mps(),
      M.course_rate_rps(),
      M.altitude_rate_mps(),
      M.sideslip_rad()
    ]

  defmacro keys,
    do: [
      SGN.vehicle_id(),
      SGN.time_since_boot_s(),
      SGN.pilot_control_level(),
      SGN.groundspeed_mps(),
      SGN.course_rate_rps(),
      SGN.altitude_rate_mps(),
      SGN.sideslip_rad()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
