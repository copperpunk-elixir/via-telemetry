defmodule ViaTelemetry.Ubx.MsgClasses do
  defmacro standard_nav(), do: 0x01
  defmacro companion(), do: 0x11
  defmacro vehicle_cmds(), do: 0x12
  defmacro actions(), do: 0x13
  defmacro vehicle_state(), do: 0x50

  defmacro all_classes(),
    do: [standard_nav(), companion(), vehicle_cmds(), actions(), vehicle_state()]

  # def get_ids_for_class(msg_class) do
  #   case(msg_class)
  # end
end
