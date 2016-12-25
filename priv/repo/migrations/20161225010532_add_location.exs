defmodule GeoExample.Repo.Migrations.AddLocation do
  use Ecto.Migration

  def up do
    create table(:locations) do
      add :name,     :string
      add :geom,     :geometry
    end
  end

  def down do
    drop table(:locations)
  end

end
