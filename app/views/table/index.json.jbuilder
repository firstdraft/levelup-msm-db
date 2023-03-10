json.total_count @records.count
json.records @records, partial: "table/table", locals: {columns: @columns.map(&:to_sym)}, as: :table
