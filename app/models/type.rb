class Type < ActiveRecord::Base
    has_many :pokemons
    has_many :moves

    def most_type
        self.sort_by {|type| type.pokemons.count}.last
    end
end