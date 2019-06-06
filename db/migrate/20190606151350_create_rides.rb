class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :origin
      t.string :destination
      t.datetime :take_off
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :rides, [:user_id, :created_at]
  end
end
