class UsersController < ApplicationController




  get '/logout' do
    erb :'/users/logout'
  end

  post '/logout' do
    session.clear
    redirect to '/'
  end

end
