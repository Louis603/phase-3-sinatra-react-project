class Move < ActiveRecord::Base
    belongs_to :type
    has_many :pokemon_moves
    has_many :pokemons, through: :pokemon_moves

    def self.most_move 
        self.all.sort_by {|move| move.pokemons.count}.last
    end
end