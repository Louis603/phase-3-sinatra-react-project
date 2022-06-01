class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/types' do
    types = Type.all
    types.to_json
  end

  get "/pokemons" do
    pokemons = Pokemon.all
    # pokemons.to_json(include:{moves: { include: [:type]}})
    pokemons.to_json
    # (include: :type)
  end

  get '/pokemons/:id' do 
    pokemons = Pokemon.find(params[:id])
    pokemons.to_json(include:{moves: {include: [:type]}}, methods: [:types])
  end

  post '/pokemons' do
    Pokemon.create(pokemon_params).to_json
    # (
    #   name: params[:name],
    #   hp: params[:hp],
    #   height: params[:height],
    #   met_at: params[:met_at],
    #   description: params[:description],
    #   type_id: params[:type_id],
    #   image: params[:image]
    # )
    # pokemons.to_json
  end

  def pokemon_params
    allowed_params = [ "name", "hp", "height", "met_at", "description", "type_id", "image"]
    params.filter do |param, value|
      allowed_params.include?(param)
    end
  end

  delete '/pokemons/:id' do 
    pokemons = Pokemon.find(params[:id]).destroy
    pokemons.to_json
  end

  delete '/pokemon_moves/:id' do
    pokemons = PokemonMove.where(pokemon_id: params[:id]).destroy_all
    pokemons.to_json
  end

  patch '/pokemons/:id' do 
    pokemons = Pokemon.find(params[:id])
    pokemons.update(
      name: params[:name],
      hp: params[:hp],
      height: params[:height],
      # met_at: params[:met_at],
      description: params[:description]
      # type_id: params[:type_id],
      # image: params[:image]
    )
    pokemons.to_json
  end

  get '/moves' do 
    moves = Move.all
    moves.to_json
  end

  post '/moves' do 
    moves = Move.create(
      name: params[:name], 
      damage: params[:damage], 
      type_id: params[:type_id])
    moves.to_json
  end

  post '/pokemons/:id/add_moves' do
    pokemons = PokemonMove.create(
      move_id: params[:move_id],
      pokemon_id: params[:id]
    )
    pokemons.to_json
  end
end
