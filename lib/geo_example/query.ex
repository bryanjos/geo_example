defmodule GeoExample.Query do
  import Ecto.Query

  def add_location() do
    location = %GeoExample.Location{name: "Home", geom: Geo.WKT.decode("SRID=4326;POINT(30 -90)")}
    GeoExample.Repo.insert!(location)
  end

  def get_locations() do
    query = from l in GeoExample.Location,
    select: l

    GeoExample.Repo.all(query)
  end
end
