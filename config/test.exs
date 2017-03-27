use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_json_api, PhxJsonApi.Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phx_json_api, PhxJsonApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "andresyepes",
  password: "",
  database: "phx_json_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
