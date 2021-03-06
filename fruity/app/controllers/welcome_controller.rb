class WelcomeController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def new
  end

  def create
    create_fruit = Fruit.new
    create_fruit.name = params[:name]
    create_fruit.description = params[:description]
    create_fruit.save
    redirect_to '/'
  end

  def edit
    @fruit = Fruit.find(params[:id])
  end

  def update
    update_fruit = Fruit.find(params[:id])
    update_fruit.name = params[:name]
    update_fruit.description = params[:description]
    update_fruit.save
    redirect_to '/'
  end

  def destroy
    @fruit = Fruit.find(params[:id])
    @fruit.destroy!
    redirect_to '/'
  end
end
