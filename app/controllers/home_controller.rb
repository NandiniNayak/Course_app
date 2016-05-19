class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @articles = Article.order(created_At: :desc)
  end
end
