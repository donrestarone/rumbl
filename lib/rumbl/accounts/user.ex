defmodule Rumbl.Accounts.User do
  @moduledoc """
  alias Rumbl.Repo
  Repo.insert(%User{name: "jose", username: "josevalim"})
  """
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :name, :string
    field :username, :string

    timestamps()
  end
end
