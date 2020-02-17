Rails.application.routes.draw do
   get("/", { :controller => "movies", :action => "index" })

  # Movie routes

  # CREATE
   get("/insert_movie_record", :controller => "movies", :action => "create")

  # READ
   get("/movies", :controller => "movies", :action => "index")
   get("/movies/last_decade", :controller => "movies", :action => "last_decade")
   get("/movies/long", :controller => "movies", :action => "long")
   get("/movies/short", :controller => "movies", :action => "short")
  
   get("/movies/:the_movie_id", :controller => "movies", :action => "show")
   get("/movies/:the_movie_id/director", :controller => "movies", :action => "director")
   get("/movies/:the_movie_id/characters", :controller => "movies", :action => "characters")
   get("/movies/:the_movie_id/cast", :controller => "movies", :action => "cast")

  # UPDATE
   get("/update_movie/:the_movie_id", :controller => "movies", :action => "update")

  # DELETE
   get("/delete_movie/:the_movie_id", :controller => "movies", :action => "destroy")

   get("/directors/:the_director_id", :controller => "directors", :action => "show")

  # CREATE
   get("/insert_character_record", :controller => "characters", :action => "create")


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
