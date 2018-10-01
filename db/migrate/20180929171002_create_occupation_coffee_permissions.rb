class CreateOccupationCoffeePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :occupation_coffee_permissions do |t|
      t.references :occupation, foreign_key: true
      t.references :coffee_type, foreign_key: true

      t.timestamps
    end
  end
end
