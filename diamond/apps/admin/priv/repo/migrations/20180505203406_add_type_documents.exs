defmodule Admin.Repo.Migrations.AddTypeDocuments do
  use Ecto.Migration

  def change do
    create table(:type_documents) do
      add(:country_id, references(:countries))
      add(:acronym, :string)
      add(:description, :string)
    end
  end
end
