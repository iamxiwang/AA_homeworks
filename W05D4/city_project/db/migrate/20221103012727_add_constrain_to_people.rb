class AddConstrainToPeople < ActiveRecord::Migration[7.0]
  def change
    change_column_null :people, :name, false
    change_column_null :people, :house_id, false

  end
end
