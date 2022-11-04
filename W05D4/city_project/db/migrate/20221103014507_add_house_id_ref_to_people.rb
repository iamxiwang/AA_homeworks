class AddHouseIdRefToPeople < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :people, :houses, column: :house_id
  end
end
