defmodule GeoExample.Mixfile do
  use Mix.Project

  def project do
    [app: :geo_example,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      mod: {GeoExample, []},
      applications: [:logger, :postgrex, :ecto]
    ]
  end

  defp deps do
    [
      {:ecto, "~> 2.1"},
      {:geo, "~> 1.3"},
      {:postgrex, "~> 0.13.0"},
      {:poison, "~> 3.0"}
    ]
  end
end
