defmodule ViaTelemetry.Ubx.Custom.VehicleState.AttitudeAndRates do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.Bytes, as: B
  require ViaTelemetry.Ubx.Custom.Multipliers, as: M
  require ViaTelemetry.Ubx.Custom.VehicleState.MsgIds, as: MsgIds
  require ViaUtils.Shared.ValueNames, as: SVN

  defmacro class, do: ClassDefs.vehicle_state()
  defmacro id, do: MsgIds.attitude()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.roll_rad(),
      B.pitch_rad(),
      B.yaw_rad(),
      B.rollrate_rps(),
      B.pitchrate_rps(),
      B.yawrate_rps()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.roll_rad(),
      M.pitch_rad(),
      M.yaw_rad(),
      M.rollrate_rps(),
      M.pitchrate_rps(),
      M.yawrate_rps()
    ]

  defmacro keys,
    do: [
      SVN.vehicle_id(),
      SVN.time_since_boot_s(),
      SVN.roll_rad(),
      SVN.pitch_rad(),
      SVN.yaw_rad(),
      SVN.rollrate_rps(),
      SVN.pitchrate_rps(),
      SVN.yawrate_rps()
    ]

  def get_keys(), do: keys()
  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
end
