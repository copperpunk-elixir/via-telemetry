defmodule ViaTelemetry.Ubx.Custom.VehicleState.PositionVelocity do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.Bytes, as: B
  require ViaTelemetry.Ubx.Custom.Multipliers, as: M
  require ViaTelemetry.Ubx.Custom.VehicleState.MsgIds, as: MsgIds
  require ViaUtils.Shared.ValueNames, as: SVN

  defmacro class, do: ClassDefs.vehicle_state()
  defmacro id, do: MsgIds.position_velocity()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.latitude_rad(),
      B.longitude_rad(),
      B.altitude_m(),
      B.agl_m(),
      B.airspeed_mps(),
      B.groundspeed_mps(),
      B.course_rad(),
      B.vertical_velocity_mps()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.latitude_rad(),
      M.longitude_rad(),
      M.altitude_m(),
      M.agl_m(),
      M.airspeed_mps(),
      M.groundspeed_mps(),
      M.course_rad(),
      M.vertical_velocity_mps()
    ]

  defmacro keys,
    do: [
      SVN.vehicle_id(),
      SVN.time_since_boot_s(),
      SVN.latitude_rad(),
      SVN.longitude_rad(),
      SVN.altitude_m(),
      SVN.agl_m(),
      SVN.airspeed_mps(),
      SVN.groundspeed_mps(),
      SVN.course_rad(),
      SVN.vertical_velocity_mps()
    ]

  def get_keys(), do: keys()
  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
end
