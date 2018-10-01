class CoffeeTime < ApplicationRecord
  belongs_to :worker
  belongs_to :coffee_type

  def coffee_permission(worker_id, coffee_type_id)	
    if !worker_id.empty?
	    @occupation_id = Worker.find(worker_id).occupation_id
      OccupationCoffeePermission.where(coffee_type_id: coffee_type_id).where(occupation_id: @occupation_id)
    else
      OccupationCoffeePermission.where(coffee_type_id: coffee_type_id).where(occupation_id: @occupation_id)
    end
  end

  def get_workers
  	Worker.all.map { |r| [r.name, r.id] }
  end

  def get_coffees
  	CoffeeType.all.map { |r| [r.name, r.id] }
  end
end
