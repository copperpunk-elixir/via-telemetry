defmodule ViaTelemetry.Ubx.VehicleCmds.BodyrateThrottleCmd do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds
  require ViaTelemetry.Ubx.Bytes, as: B
  require ViaTelemetry.Ubx.Multipliers, as: M
  require ViaUtils.Shared.GoalNames, as: SGN

  defmacro class, do: MsgClasses.vehicle_cmds()
  defmacro id, do: MsgIds.bodyrate_throttle_cmd()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.pilot_control_level(),
      B.rollrate_rps(),
      B.pitchrate_rps(),
      B.yawrate_rps(),
      B.throttle_scaled()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.pilot_control_level(),
      M.rollrate_rps(),
      M.pitchrate_rps(),
      M.yawrate_rps(),
      M.throttle_scaled()
    ]

  defmacro keys,
    do: [
      SGN.vehicle_id(),
      SGN.time_since_boot_s(),
      SGN.pilot_control_level(),
      SGN.rollrate_rps(),
      SGN.pitchrate_rps(),
      SGN.yawrate_rps(),
      SGN.throttle_scaled()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
  def get_size(), do: 7
end
