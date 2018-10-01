class Worker < ApplicationRecord

  def occupation
  	return Occupation.find(occupation_id).name
  end
end
