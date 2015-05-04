class PokemonsController < ApplicationController

  def show
    pokemon = Pokemon.find(show_params[:id])
    render json: pokemon, root: false
  end

  def index
    pokemon = Pokemon.all
    render json: pokemon, root: false
  end

  private
  def show_params
    params.permit(:id)
  end
end
