Rails.application.routes.draw do

  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "show"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "show"})

  get("/delete_photo/:toast_id", {:controller => "photos", :action => "baii"})

  get("/insert_photo", {:controller => "photos", :action => "create"})

  get("/update_photo/:modify_id", {:controller => "photos", :action => "update"})

  get("/insert_comment", {:controller => "photos", :action=> "comment"})

  get("/insert_username", {:controller => "users", :action=> "username"})

  get("/update_username/:modify_id", {:controller => "users", :action => "update"})

  get("/", {:controller => "users", :action => "home"})




end
