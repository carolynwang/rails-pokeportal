class PokemonController < ApplicationController
    def capture
        pokemon = Pokemon.find_by(id: params[:id])
        pokemon.update(trainer: current_trainer)

        redirect_to root_path
    end

    def damage
        pokemon = Pokemon.find_by(id: params[:id])
        pokemon.update(health: pokemon.health - 10)
        if pokemon.health <= 0
            pokemon.destroy
        end

        redirect_to current_trainer
    end

    def new
        @pokemon = Pokemon.create()
    end

    def create

        params.require(:pokemon).permit(:name, :index)
        pokemon = Pokemon.create(name: params[:pokemon][:name], ndex: params[:pokemon][:ndex], trainer: current_trainer, health: 100, level: 1)
        if !pokemon.valid?
            flash[:error] = pokemon.errors.full_messages.to_sentence
            redirect_to new_path
        else
            redirect_to current_trainer
        end
    end
end
