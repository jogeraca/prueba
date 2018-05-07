defmodule Admin.Models.TypeDocument do
  use Ecto.Schema

  schema "type_documents" do
    belongs_to(:countries, Admin.Models.Country)
    field(:acronym)
    field(:description)
  end
end
