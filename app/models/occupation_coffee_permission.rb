class OccupationCoffeePermission < ApplicationRecord
  belongs_to :occupation
  belongs_to :coffee_type

end
