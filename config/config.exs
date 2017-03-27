# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_json_api,
  ecto_repos: [PhxJsonApi.Repo]

# Configures the endpoint
config :phx_json_api, PhxJsonApi.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gx0SnQEqVb/x/aWmubOZPxy9X44a3W6vGDidpv0mpr05Dpl2QOZuBqlpa6FoEuLD",
  render_errors: [view: PhxJsonApi.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxJsonApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
