defmodule ViaTelemetry.Ubx.VehicleCmds.AttitudeThrottleCmd do
  require ViaTelemetry.Ubx.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds

  defmacro class, do: ClassDefs.vehicle_cmds()
  defmacro id, do: MsgIds.attitude_throttle_cmd()
  defmacro bytes, do: [-2, -2, -2, 2]
  defmacro multipliers, do: [1.0e-4, 1.0e-4, 1.0e-4, 1.0e-4]
  defmacro keys, do: [:roll_rad, :pitch_rad, :yaw_rad, :throttle_scaled]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
