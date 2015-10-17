use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
# config :hello_phoenix, HelloPhoenix.Endpoint,
#   secret_key_base: "oPFfCjJ021FhII83081MjLKrb7ekWVzLMIKxGYeOIiMKjof917hJN8ArPVvNyZsu"

# # Configure your database
# config :hello_phoenix, HelloPhoenix.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   username: "postgres",
#   password: "postgres",
#   database: "hello_phoenix_prod",
#   pool_size: 20

# Configure secret_key_base for cookie-based session storage
config :hello_phoenix, HelloPhoenix.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :hello_phoenix, HelloPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  size: 20 # The amount of database connections in the pool