class TypesController < ApplicationController
    get '/types' do
        types = Type.all
        types.to_json
    end
    
    get '/types/most_often' do
        # most_type in model
        pokemons = Type.most_type
        pokemons.to_json
    end
end