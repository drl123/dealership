# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dealership,
  ecto_repos: [Dealership.Repo]

# Configures the endpoint
config :dealership, DealershipWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oE29GGbwNJlspvdhrRqL0qPjUz8h+jW1m5h7+QAVH6WDU8ql0dv4F46Lp6zNL+gT",
  render_errors: [view: DealershipWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dealership.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
