defmodule ViaTelemetry.Ubx.Custom.Companion.BodyrateThrottleCmd do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.Companion.MsgIds, as: MsgIds
  require ViaTelemetry.Ubx.Custom.Bytes, as: B
  require ViaTelemetry.Ubx.Custom.Multipliers, as: M
  require ViaUtils.Shared.GoalNames, as: SGN

  defmacro class, do: ClassDefs.companion()
  defmacro id, do: MsgIds.bodyrate_throttle_cmd()
  defmacro bytes, do: [B.rollrate_rps(), B.pitchrate_rps(), B.yawrate_rps(), B.throttle_scaled()]

  defmacro multipliers,
    do: [M.rollrate_rps(), M.pitchrate_rps(), M.yawrate_rps(), M.throttle_scaled()]

  defmacro keys,
    do: [SGN.rollrate_rps(), SGN.pitchrate_rps(), SGN.yawrate_rps(), SGN.throttle_scaled()]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
