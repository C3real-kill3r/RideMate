class AddCapacityToRides < ActiveRecord::Migration[5.2]
  def change
    add_column :rides, :capacity, :integer
  end
end
