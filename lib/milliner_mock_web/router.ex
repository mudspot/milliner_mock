defmodule MillinerMockWeb.Router do
  use MillinerMockWeb, :router

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

  scope "/api", MillinerMockWeb do
    pipe_through :api #:browser # Use the default browser stack

    post "/signup", PageController, :signup
    get "/manage/hat/create/:cluster/:hat", PageController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", MillinerMockWeb do
  #   pipe_through :api
  # end
end
