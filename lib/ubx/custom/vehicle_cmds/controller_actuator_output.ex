defmodule ViaTelemetry.Ubx.Custom.VehicleCmds.ControllerActuatorOutput do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.Bytes, as: B
  require ViaTelemetry.Ubx.Custom.Multipliers, as: M
  require ViaTelemetry.Ubx.Custom.VehicleCmds.MsgIds, as: MsgIds
  require ViaUtils.Shared.GoalNames, as: SGN
  defmacro class, do: ClassDefs.vehicle_cmds()
  defmacro id, do: MsgIds.controller_actuator_output()

  defmacro bytes,
    do: [
      B.vehicle_id(),
      B.time_since_boot_s(),
      B.actuator_scaled(),
      B.actuator_scaled(),
      B.actuator_scaled(),
      B.actuator_scaled()
    ]

  defmacro multipliers,
    do: [
      M.vehicle_id(),
      M.time_since_boot_s(),
      M.actuator_scaled(),
      M.actuator_scaled(),
      M.actuator_scaled(),
      M.actuator_scaled()
    ]

  defmacro keys,
    do: [
      SGN.vehicle_id(),
      SGN.time_since_boot_s(),
      SGN.aileron_scaled(),
      SGN.elevator_scaled(),
      SGN.rudder_scaled(),
      SGN.throttle_scaled()
    ]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
