class TableController < ApplicationController
  def movies
    @records = Movie.all.paginate(page: params[:page], per_page: 8)
    @table = Movie
  end
  
  def directors
    @records = Director.all.paginate(page: params[:page], per_page: 8)
    @table = Director
  end
  
  def actors
    @records = Actor.all.paginate(page: params[:page], per_page: 8)
    @table = Actor
  end
  
  def characters
    @records = Character.all.paginate(page: params[:page], per_page: 8)
    @table = Character
  end
end
