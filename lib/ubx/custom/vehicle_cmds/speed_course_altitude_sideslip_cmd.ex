defmodule ViaTelemetry.Ubx.Custom.VehicleCmds.SpeedCourseAltitudeSideslipCmd do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.VehicleCmds.MsgIds, as: MsgIds
  require ViaTelemetry.Ubx.Custom.Bytes, as: B
  require ViaTelemetry.Ubx.Custom.Multipliers, as: M
  require ViaUtils.Shared.GoalNames, as: SGN

  defmacro class, do: ClassDefs.vehicle_cmds()
  defmacro id, do: MsgIds.speed_course_altitude_sideslip_cmd()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.pilot_control_level(),
      B.groundspeed_mps(),
      B.course_rad(),
      B.altitude_m(),
      B.sideslip_rad()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.pilot_control_level(),
      M.groundspeed_mps(),
      M.course_rad(),
      M.altitude_m(),
      M.sideslip_rad()
    ]

  defmacro keys,
    do: [
      SGN.vehicle_id(),
      SGN.time_since_boot_s(),
      SGN.pilot_control_level(),
      SGN.groundspeed_mps(),
      SGN.course_rad(),
      SGN.altitude_m(),
      SGN.sideslip_rad()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
