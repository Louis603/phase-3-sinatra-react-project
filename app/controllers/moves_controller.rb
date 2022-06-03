class MovesController < ApplicationController
    get '/moves' do 
        moves = Move.all.order(:type_id)
        moves.to_json
    end

    get '/moves/most_often' do
        # most_move in model
        pokemons = Move.most_move
        pokemons.to_json
    end

    post '/moves' do 
        moves = Move.create(
          name: params[:name], 
          damage: params[:damage], 
          type_id: params[:type_id])
        moves.to_json
    end
end