defmodule ViaTelemetry.Ubx.Actions.MsgIds do
  alias ViaTelemetry.Ubx.Actions, as: Actions
  defmacro subscribe_to_msg(), do: 0x00

  def get_module_for_id(id) do
    case id do
      subscribe_to_msg() -> Actions.SubscribeToMsg
    end
  end
end
