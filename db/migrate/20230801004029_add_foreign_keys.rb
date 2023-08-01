class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :taxi_id, :integer
    add_column :rides, :passenger_id, :integer
    add_foreign_key :rides, :taxis, column: :taxi_id
    add_foreign_key :rides, :passengers, column: :passenger_id
  end
end
