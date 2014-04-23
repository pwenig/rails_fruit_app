class WelcomeController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def create
    create_fruit = Fruit.new
    create_fruit.name = params[:name]
    create_fruit.description = params[:description]
    create_fruit.save
    redirect_to '/'
  end


  def update
    update_fruit = Fruit.find(params[:id])
    update_fruit.name = params[:name]
    update_fruit.description = params[:description]
    update_fruit.save

  end

  def destroy
    destroy_fruit = Fruit.find(params[:id])
    destroy_fruit.destroy!
    redirect_to '/'
  end
end
