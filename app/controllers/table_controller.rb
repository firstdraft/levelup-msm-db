class TableController < ApplicationController
  def show
    table_name = params[:name]
    model_class = table_name.classify.constantize
    @records = model_class.all.paginate(page: params[:page], per_page: 8)
    @table = model_class
    set_columns
    respond_to do |format|
      format.html { render table_name }
      format.json { render "index" }
    end
  end

  def structure
    table_name = params[:name]
    model_class = table_name.classify.constantize
    model_hash = {}
    model_class.columns.each do |column|
      if columns_to_exclude.exclude?(column.name)
        model_hash[column.name] = column.type.to_s
      end
    end
    render json: model_hash.to_json
  end

  private

  def set_columns
    @columns = @table.columns.map(&:name).excluding(columns_to_exclude)
  end

  def columns_to_exclude
    params[:exclude] || []
  end
end
