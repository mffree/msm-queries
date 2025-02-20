class MoviesController < ApplicationController
  
  # Movie index page
  def index
    render({ :template => "movie_templates/list" })
  end

  # Movie details page
  def show
    # Getting the right movie
    the_id = params.fetch("the_id")
    matching_records = Movie.where({ :id => the_id })
    @the_movie = matching_records.at(0)

    # Getting the matching director
    @matching_director = Director.where({ :id => @the_movie.director_id }).at(0)

    render({ :template => "movie_templates/details" })
  end


end
