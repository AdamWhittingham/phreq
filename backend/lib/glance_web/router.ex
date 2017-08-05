defmodule GlanceWeb.Router do
  use GlanceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug CORSPlug, origin: ["http://localhost:3000", "http://localhost:4000"]
  end

  # Other scopes may use custom stacks.
  # scope "/api", GlanceWeb do
  #   pipe_through :api
  # end
end
