defmodule Admin.Repo.Migrations.AddThirdParties do
  use Ecto.Migration

  def change do
    create table(:third_parties) do
      add(:type_document_id, :string)
      add(:document_id, :string)
      add(:first_name, :string)
      add(:second_name, :string)
      add(:first_surname, :string)
      add(:second_surname, :string)
      add(:country_code, :smallint)
      add(:phone, :integer)
      add(:email, :string)
      add(:hash_password, :string)
      add(:reset_password_sent_at, :string)
      add(:verified, :boolean, default: false, null: false)

      timestamps()
    end

    create(unique_index(:users, [:type_document_id, :legal_id]))
    create(unique_index(:users, [:email]))
  end
end
