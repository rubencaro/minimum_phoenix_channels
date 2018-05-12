defmodule MinimumPhoenixChannelsWeb.MainChannel do
  use Phoenix.Channel

  def join("main:" <> _subchannel_id, _params, socket) do
    push(socket, "hey", %{hola: "mundo"})
    {:ok, socket}
  end
end