# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rdio,
  ecto_repos: [Rdio.Repo]

# Configures the endpoint
config :rdio, RdioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ydTfaWlKbcujfI9g7ZnknWTY/W1iEwwarPZaRE9wCUpZ4D9wlp+wkWCwgq3qnYn5",
  render_errors: [view: RdioWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Rdio.PubSub,
  live_view: [signing_salt: "ZEhAU5Bx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
