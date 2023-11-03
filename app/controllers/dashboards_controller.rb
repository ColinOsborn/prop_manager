class DashboardsController < ApplicationController
  def show
    @users = User.all.last(5)
  end

  def index
    @users = User.all.last(5)
  end
end
