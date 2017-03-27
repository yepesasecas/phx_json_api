defmodule PhxJsonApi.Repo.Migrations.CreatePhxJsonApi.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users) do
      add :email, :string
      add :first_name, :string
      add :last_name, :string

      timestamps()
    end

    create unique_index(:accounts_users, [:email])
  end
end
