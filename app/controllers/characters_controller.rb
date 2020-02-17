class CharactersController < ApplicationController
 
  def create
    character = Character.new

    character.name = params.fetch("input_name")
    character.actor_id = params.fetch("input_actor_id")
    character.movie_id = params.fetch("input_movie_id")

    character.save

    redirect_to("/movies/#{character.movie_id}")
  end

end
