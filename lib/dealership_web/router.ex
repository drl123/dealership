defmodule DealershipWeb.Router do
  use DealershipWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DealershipWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/cars", CarController
    get "/inventory/:id", LegacyRedirect, forward_to: "/cars"
  end

  # Other scopes may use custom stacks.
  # scope "/api", DealershipWeb do
  #   pipe_through :api
  # end
end
