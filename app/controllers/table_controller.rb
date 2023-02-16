class TableController < ApplicationController
  def movies
    @records = Movie.all.paginate(page: params[:page], per_page: 8)
    @table = Movie
    set_columns
    respond_to do |format|
      format.html
      format.json { render "index" }
    end
  end
  
  def directors
    @records = Director.all.paginate(page: params[:page], per_page: 8)
    @table = Director
    set_columns
    respond_to do |format|
      format.html
      format.json { render "index" }
    end
  end
  
  def actors
    @records = Actor.all.paginate(page: params[:page], per_page: 8)
    @table = Actor
    set_columns
    respond_to do |format|
      format.html
      format.json { render "index" }
    end
  end
  
  def characters
    @records = Character.all.paginate(page: params[:page], per_page: 8)
    @table = Character
    set_columns
    respond_to do |format|
      format.html
      format.json { render "index" }
    end
  end

  private

  def set_columns
    @columns = @table.columns.map(&:name).excluding(columns_to_exclude)
  end

  def columns_to_exclude
    params[:exclude] || []
  end
end
