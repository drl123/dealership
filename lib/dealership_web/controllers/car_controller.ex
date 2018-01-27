defmodule DealershipWeb.CarController do
  use DealershipWeb, :controller

  alias Dealership.Listings

  def index(conn, params) do
    {cars, kerosene} = Listings.list_cars(params)
    render(conn, "index.html", cars: cars, kerosene: kerosene)
  end

  defp id_from_slug(slug) do
    slug
    |> String.split("-")
    |> List.last()
  end

  def show(conn, %{"id" => slug}) do
    car = slug
          |> id_from_slug()
          |> Listings.get_car!()
    render(conn, "show.html", car: car)
  end
end
