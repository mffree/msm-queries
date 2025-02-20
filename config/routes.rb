Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "index"}) # standard to name the controller after the table and name the action index since it pulls the records from the table

  get("/directors/youngest", { :controller => "directors", :action => "youngest" }) # route for the youngest director

  get("/directors/eldest", { :controller => "directors", :action => "eldest" }) # route for the oldest director

  get("/directors/:the_id", { :controller => "directors", :action => "show" }) # dynamic route for the director details

  get("/movies", { :controller => "movies", :action => "index" }) # movies index page

  get("/movies/:the_id", { :controller => "movies", :action => "show" }) # dynamic route for the movie details

  get("/actors", { :controller => "actors", :action => "index" }) # movies index page

  get("/actors/:the_id", { :controller => "actors", :action => "show" }) # dynamic route for the movie details


end
