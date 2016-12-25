# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :geo_example, ecto_repos: [GeoExample.Repo]

config :geo_example, GeoExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "geo_example",
  hostname: "localhost",
  port: "5432",
  types: GeoExample.PostgresTypes
