defmodule Glance.Schema.Types do
  use Absinthe.Schema.Notation

  object :build do
    field :id, :id
    field :projectName, :string
    field :status, :string
  end
end
