class PokemonsController < ApplicationController

    get "/pokemons" do
        pokemons = Pokemon.all
        # pokemons.to_json(include:{moves: { include: [:type]}})
        pokemons.to_json(include: :type)
        # (include: :type)
    end

    get '/pokemons/:id' do 
        pokemons = Pokemon.find(params[:id])
        pokemons.to_json(include:{moves: {include: [:type]}}, methods: [:types])
    end
end