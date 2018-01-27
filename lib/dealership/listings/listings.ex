defmodule Dealership.Listings do
  @moduledoc """
  The Listings context.
  """

  import Ecto.Query, warn: false
  alias Dealership.Repo

  alias Dealership.Listings.Car

  @doc """
  Returns the list of car.

  ## Examples

      iex> list_car()
      [%Car{}, ...]

  """
  def list_cars(params) do
    Car
    |> Car.for_sale()
    |> Repo.paginate(params)
  end

  @doc """
  Gets a single car.

  Raises if the Car does not exist.

  ## Examples

      iex> get_car!(123)
      %Car{}

  """
  def get_car!(id), do: Repo.get!(Car, id)

  @doc """
  Creates a car.

  ## Examples

      iex> create_car(%{field: value})
      {:ok, %Car{}}

      iex> create_car(%{field: bad_value})
      {:error, ...}

  """
  def create_car(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a car.

  ## Examples

      iex> update_car(car, %{field: new_value})
      {:ok, %Car{}}

      iex> update_car(car, %{field: bad_value})
      {:error, ...}

  """
  def update_car(%Car{} = car, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Car.

  ## Examples

      iex> delete_car(car)
      {:ok, %Car{}}

      iex> delete_car(car)
      {:error, ...}

  """
  def delete_car(%Car{} = car) do
    raise "TODO"
  end

  @doc """
  Returns a datastructure for tracking car changes.

  ## Examples

      iex> change_car(car)
      %Todo{...}

  """
  def change_car(%Car{} = car) do
    raise "TODO"
  end
end