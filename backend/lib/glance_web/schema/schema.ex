defmodule Blog.Schema do
  use Absinthe.Schema
  import_types Glance.Schema.Types

  query do
    field :builds, list_of(:build) do
      resolve &Glance.BuildResolver.all/2
    end
  end

end
