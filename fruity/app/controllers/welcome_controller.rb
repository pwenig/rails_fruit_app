class WelcomeController < ApplicationController

  def index
  @fruits = Fruit.all
  end

  def create
  Fruit.create(name: params[:name], description: params[:description])
    redirect_to '/'
  end

end
