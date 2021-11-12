defmodule ViaTelemetry.Ubx.Custom.VehicleState.MsgIds do
  alias ViaTelemetry.Ubx.Custom.VehicleState.Attitude
  alias ViaTelemetry.Ubx.Custom.VehicleState.PositionVelocity

  defmacro attitude(), do: 0x10
  defmacro position_velocity(), do: 0x11

  def get_module_for_id(id) do
    case id do
      attitude() -> Attitude
      position_velocity() -> PositionVelocity
    end
  end
end
