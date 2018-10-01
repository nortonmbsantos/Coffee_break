class Occupation < ApplicationRecord
	has_many :occupation_coffee_permissions
	has_many :workers
end
