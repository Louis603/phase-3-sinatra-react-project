class Type < ActiveRecord::Base
    has_many :pokemons
    has_many :moves

    def self.most_type
        self.all.sort_by {|type| type.pokemons.count}.last
    end
end