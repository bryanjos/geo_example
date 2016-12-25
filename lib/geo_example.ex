defmodule GeoExample do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(GeoExample.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: GeoExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end