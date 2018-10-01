class Worker < ApplicationRecord
  validates :name, presence: true

  def occupation
  	return Occupation.find(occupation_id).name
  end

  def get_occupations
    Occupation.all.map { |r| [r.name, r.id] }
  end
end
