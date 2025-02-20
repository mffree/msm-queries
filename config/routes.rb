Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "index"}) # standard to name the controller after the table and name the action index since it pulls the records from the table

  get("/directors/:the_id", { :controller => "directors", :action => "show" }) # dynamic route for the director details
end
