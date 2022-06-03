class PokemonMovesController < ApplicationController
    post '/pokemons/:id/add_moves' do
        pokemons = PokemonMove.create(
          move_id: params[:move_id],
          pokemon_id: params[:id]
        )
        pokemons.to_json
    end

    delete '/pokemon_moves/:id' do
        pokemons = PokemonMove.where(pokemon_id: params[:id]).destroy_all
        pokemons.to_json
    end
end