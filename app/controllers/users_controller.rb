class UsersController < ApplicationController


  def index 

    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc})

    render({ :template => "user_templates/index.html.erb"})

  end

  def show 

    url_username = params.fetch("path_username")

    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.at(0)

    render({:template => "user_templates/show.html.erb"})
  end

  def username

    input_username = params.fetch("query_username")

    a_new_username = User.new

    a_new_username.username = input_username

    a_new_username.save

    redirect_to("/users/" + a_new_username.username)
  end

  def update

    the_id = params.fetch("modify_id")
    matching_usernames = User.where(:username => the_id)

    the_username = matching_usernames.at(0)
    
    input_username = params.fetch("query_username")

    the_username.username = input_username

    the_username.save

    redirect_to("/users/" + the_username.username)

  end

  def home 

    redirect_to("/users")

  end








end
