class PokemonsController < ApplicationController

    # Gets most caught pokemon 
    get '/pokemon/most_often' do
        images = Pokemon.all.pluck(:image)
        pokemons = images.max_by {|img| images.count(img)}
        pokemons.to_json
    end

    #Gets all pokemon and includes Type from type table
    get "/pokemons" do
        pokemons = Pokemon.all
        # pokemons.to_json(include:{moves: { include: [:type]}})
        pokemons.to_json(include: :type)
    end

    #Gets single pokemon to include Moves.type and type of single pokemon
    get '/pokemons/:id' do 
        pokemons = Pokemon.find(params[:id])
        pokemons.to_json(include:{moves: {include: [:type]}}, methods: [:types])
    end

    post '/pokemons' do
        Pokemon.create(pokemon_params).to_json(include: :type)
    end

    delete '/pokemons/:id' do 
        pokemons = Pokemon.find(params[:id]).destroy
        pokemons.to_json
    end

    patch '/pokemons/:id' do 
        pokemons = Pokemon.find(params[:id])
        pokemons.update(
          name: params[:name],
          hp: params[:hp],
          height: params[:height],
          description: params[:description]
        )
        pokemons.to_json(include: :type)
    end
    
    def pokemon_params
        allowed_params = [ "name", "hp", "height", "met_at", "description", "type_id", "image" ]
        params.filter do |param, value|
          allowed_params.include?(param)
        end
    end
end