defmodule Admin.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:people_id, references(:people))
      add(:email, :string)

      timestamps()
    end

    create(unique_index(:users, :email))
  end
end
