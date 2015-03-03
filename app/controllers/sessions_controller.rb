class SessionsController < ApplicationController

  def github
    session[:github_token] = request.env['omniauth.auth'].credentials.token
    session[:github_uid] = request.env['omniauth.auth'].uid
    redirect_to root_path
  end

end
