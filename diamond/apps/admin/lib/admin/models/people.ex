defmodule Admin.Models.People do
  use Ecto.Schema

  schema "people" do
    belongs_to(:type_document, Admin.Models.TypeDocument)
    field(:document_id, :string)
    field(:first_name, :string)
    field(:second_name, :string)
    field(:first_surname, :string)
    field(:second_surname, :string)
    field(:country_code, :integer)
    field(:phone, :integer)
    field(:email, :string)
    belongs_to(:user, Admin.Models.User)

    timestamps()
  end
end
