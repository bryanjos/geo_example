defmodule GeoExample.Location do
  use Ecto.Schema

  schema "locations" do
    field :name
    field :geom, Geo.Geometry
  end
end