defmodule ViaTelemetry.Ubx.Companion.MsgIds do
  alias ViaTelemetry.Ubx.Companion, as: Companion
  defmacro dt_accel_gyro(), do: 0x00
  defmacro bodyrate_throttle_cmd(), do: 0x01

  def get_module_for_id(id) do
    case id do
      bodyrate_throttle_cmd() -> Companion.BodyrateThrottleCmd
      dt_accel_gyro() -> Companion.DtAccelGyro
    end
  end
end
