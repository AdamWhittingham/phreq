defmodule Glance.BuildResolver do
  def all(_args, _info) do
    {:ok, Glance.Repo.all(Glance.Build)}
  end
end
