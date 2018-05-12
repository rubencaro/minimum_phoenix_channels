# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :minimum_phoenix_channels, MinimumPhoenixChannelsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Fl9X3aKDKkdgIxBk3U7r95Ohtih5U/QTlfOIAZ+bYpn775HoUdObnNDNc5gx6cyZ",
  render_errors: [view: MinimumPhoenixChannelsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MinimumPhoenixChannels.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
