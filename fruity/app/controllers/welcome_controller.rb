class WelcomeController < ApplicationController

  def index
  @fruits = Fruit.all
  end

  def create
  Fruit.create(name: params[:name], description: params[:description])
    redirect_to '/'
  end

def update
  id = params[:id]
  @fruit = Fruit.find_by(id: id)
  Fruit.update(params[:id], name: params[:name], description: params[:description])
  @fruit.save

end
end
