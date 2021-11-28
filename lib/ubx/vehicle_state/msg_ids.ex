defmodule ViaTelemetry.Ubx.VehicleState.MsgIds do
  alias ViaTelemetry.Ubx.VehicleState, as: VS

  defmacro attitude_attrate(), do: 0x10
  defmacro position_velocity(), do: 0x11

  def get_module_for_id(id) do
    case id do
      attitude_attrate() -> VS.AttitudeAttrateVal
      position_velocity() -> VS.PositionVelocityVal
    end
  end
end
