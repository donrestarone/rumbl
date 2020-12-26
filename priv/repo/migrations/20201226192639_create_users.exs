defmodule Rumbl.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      # database level presence constraint
      add :username, :string, null: false
      add :password_hash, :string

      timestamps()
    end
    # index, with unique constraint at db level
    create unique_index(:users, [:username])
  end
end
