defmodule Admin.Models.Country do
  use Ecto.Schema

  schema "countries" do
    field(:iso_code, :string)
    field(:country_code, :string)
    field(:description, :string)

    timestamps()
  end
end
