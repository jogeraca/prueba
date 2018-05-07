defmodule Admin.Repo.Migrations.AddCountries do
  use Ecto.Migration

  def change do
    create table(:countries) do
      add(:iso_code, :string)
      add(:country_code, :string)
      add(:description, :string)
    end
  end
end
