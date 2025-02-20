class ActorsController < ApplicationController

  # Actor index page
  def index
    render({ :template => "actor_templates/list" })
  end

  # Actor details page
  def show
    the_id = params.fetch("the_id")
    matching_records = Actor.where({ :id => the_id })
    @the_actor = matching_records.at(0)

    render({ :template => "actor_templates/details" })
  end
end
