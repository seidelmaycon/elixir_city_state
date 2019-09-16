defmodule ElixirGraphql.Repo.Migrations.AddFieldsToCities do
  use Ecto.Migration

  def change do
    alter table("cities") do
      add :uf, :string
      add :state, :string
    end
  end
end
