class GithubController < ApplicationController

  before_filter do
    unless session[:github_token]
      redirect_to "/auth/github"
    end
  end

  def star
    if res = client.star("adamcooke/staytus")
      render :text => "Starred!"
    else
      render :text => "Not starred!"
    end
  end

  private

  def client
    client = Octokit::Client.new(:access_token => session[:github_token])
  end

end
