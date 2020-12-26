defmodule Rumbl.Accounts do
  @moduledoc """
  alias Rumbl.Accounts
  alias Rumbl.Accounts.User
  Accounts context for handling user related concerns
  """

  alias Rumbl.Accounts.User
  @doc """
    Accounts.list_users()
  """
  def list_users do
    [
      %User{id: "1", name: "Jose", username: "josevalim"},
      %User{id: "2", name: "foo", username: "bar"},
    ]
  end
  @doc """
    Accounts.get_user("1")
  """
  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end
  @doc """
    Accounts.get_user_by(%{id: "1", name: "Jose"})
  """
  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
