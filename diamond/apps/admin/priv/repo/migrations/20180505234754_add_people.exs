defmodule Admin.Repo.Migrations.AddPeople do
  use Ecto.Migration

  def change do
    create table(:people) do
      add(:type_document_id, references(:type_documents))
      add(:document_id, :string)
      add(:first_name, :string)
      add(:second_name, :string)
      add(:first_surname, :string)
      add(:second_surname, :string)
      add(:country_code, :integer)
      add(:address, :string)
      add(:phone, :integer)
      add(:email, :string)

      timestamps()
    end

    create(unique_index(:people, [:type_document_id, :document_id]))
  end
end
