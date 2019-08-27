class TweetsController < ApplicationController

  get '/tweets' do
    if !logged_in?
      redirect to "/login"
    else
    erb :'/tweets/show'
  end
  end

  get '/tweets/new' do
    if !logged_in?
      redirect to "/login"
    else
      erb :'/tweets/new'
    end
  end

end
