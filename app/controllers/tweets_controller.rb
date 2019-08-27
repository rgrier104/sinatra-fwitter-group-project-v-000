class TweetsController < ApplicationController

  get '/tweets' do
    if !logged_in?
      redirect to "/login"
    else
      @user = User.find(session[:user_id])
    erb :'/tweets/index'
  end
  end

  get '/tweets/new' do
    if !logged_in?
      redirect to "/login"
    else
      erb :'/tweets/new'
    end
  end

  post '/tweets' do
    if params[:content] != ""
      @user = User.find(session[:user_id])
      @user.tweets << Tweet.create(content: params[:content])

      redirect "/tweets"
    else
      redirect "/tweets/new"
    end
  end

  get '/tweets/:id' do
    @tweet = Tweet.find(params[:id])

    erb :"/tweets/show"
  end

end
