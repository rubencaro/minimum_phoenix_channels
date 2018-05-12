defmodule MinimumPhoenixChannelsWeb.MainChannel do
  use Phoenix.Channel

  def join("main:" <> _subchannel_id, _params, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    # push socket, "hey", %{hola: "mundo"}
    broadcast!(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end
end
