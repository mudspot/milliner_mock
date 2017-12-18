# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :milliner_mock,
  ecto_repos: [MillinerMock.Repo]

# Configures the endpoint
config :milliner_mock, MillinerMockWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U6q51OiRewrQgC/heZPwo6l93erfgZMtigvZkaQsysmFu2wLUrB56ENzOMeveeBf",
  render_errors: [view: MillinerMockWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MillinerMock.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
