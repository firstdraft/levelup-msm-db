json.array! @records, partial: "table/table", locals: {columns: @columns.map(&:to_sym)}, as: :table
