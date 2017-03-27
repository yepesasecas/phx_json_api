defmodule PhxJsonApi.Accounts.User do
  use Ecto.Schema

  schema "accounts_users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end
end
