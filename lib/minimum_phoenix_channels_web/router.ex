defmodule MinimumPhoenixChannelsWeb.Router do
  use MinimumPhoenixChannelsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MinimumPhoenixChannelsWeb do
    pipe_through :api
  end
end
