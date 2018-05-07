defmodule Admin.Models.User do
  use Ecto.Schema

  schema "users" do
    belongs_to(:people, Admin.Models.People)
    field(:email, :string)
    field(:hash_password, :string)
    field(:reset_password_sent_at, :string)
    field(:verified, :boolean, default: false, null: false)
    field(:status)

    timestamps()
  end
end
