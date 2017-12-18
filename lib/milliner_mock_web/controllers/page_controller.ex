defmodule MillinerMockWeb.PageController do
  use MillinerMockWeb, :controller

  def signup(conn, _params) do
    output = %{ status: "OK", message: "Signup Successful"}
    
    :timer.sleep(Enum.random(1000..3000))
    conn
    |> json(output)
  end

  def create(conn, %{"hat" => hat, "cluster" => cluster}) do
    output = %{ status: "OK", message: "Create Successful"}
    :timer.sleep(Enum.random(10000..30000))    
    conn
    |> json(output)
  end
end
