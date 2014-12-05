class UsersController < ApplicationController
  def show
    @messages = User.find(params[:id]).messages
  end
end
