defmodule Rumbl.Accounts do
  @moduledoc """
  alias Rumbl.Accounts
  alias Rumbl.Accounts.User
  Accounts context for handling user related concerns
  """
  alias Rumbl.Repo
  alias Rumbl.Accounts.User
  @doc """
    Accounts.list_users()
  """
  def list_users do
    Repo.all(User)
  end
  @doc """
    Accounts.get_user("1")
  """
  def get_user(id) do
    Repo.get!(User, id)
  end
  @doc """
    Accounts.get_user_by(%{id: "1", name: "Jose"})
  """
  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
