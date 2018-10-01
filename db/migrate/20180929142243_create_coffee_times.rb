class CreateCoffeeTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_times do |t|
      t.references :worker, foreign_key: true
      t.references :coffee_type, foreign_key: true

      t.timestamps
    end
  end
end
