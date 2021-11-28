defmodule ViaTelemetry.Ubx.StandardNav.MsgIds do
  alias ViaTelemetry.Ubx.StandardNav, as: SN

  defmacro pvt(), do: 0x07
  defmacro relposned(), do: 0x3C

  def get_module_for_id(id) do
    case id do
      pvt() -> SN.Nav
      relposned() -> SN.Relposned
    end
  end
end
