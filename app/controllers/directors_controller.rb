class DirectorsController < ApplicationController
  def show
    the_id = params.fetch(:the_director_id)
    director = Director.where({ :id => the_id }).at(0)

    render({ :json => director.as_json })
  end
end
