class AddHouseIdRefToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :house_id, null: false, foreign_key: true
  end
end
