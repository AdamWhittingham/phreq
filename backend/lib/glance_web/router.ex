defmodule GlanceWeb.Router do
  use GlanceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug CORSPlug, origin: ["http://localhost:3000", "http://localhost:4000"]
  end

  forward "/", Absinthe.Plug,
    schema: Glance.Schema

end
