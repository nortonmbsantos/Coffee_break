
#Occupation id = 1
Occupation.create!(name: "Desenvolvedor Fornt End");
#Occupation id = 2
Occupation.create!(name: "Desenvolvedor Back End");
#Occupation id = 3
Occupation.create!(name: "Tester");
#Occupation id = 4
Occupation.create!(name: "Desenvolvedor Chefe");

#Coffee type id = 1
CoffeeType.create!(name: "Café normal");
#Coffee type id = 2
CoffeeType.create!(name: "Café pingado");
#Coffee type id = 3
CoffeeType.create!(name: "Cappuccino");
#Coffee type id = 4
CoffeeType.create!(name: "Mochaccino");


OccupationCoffeePermission.create!(coffee_type_id: 1,  occupation_id: 1);
OccupationCoffeePermission.create!(coffee_type_id: 1,  occupation_id: 2);
OccupationCoffeePermission.create!(coffee_type_id: 1,  occupation_id: 3);
OccupationCoffeePermission.create!(coffee_type_id: 1,  occupation_id: 4);

OccupationCoffeePermission.create!(coffee_type_id: 2,  occupation_id: 2);
OccupationCoffeePermission.create!(coffee_type_id: 2,  occupation_id: 3);
OccupationCoffeePermission.create!(coffee_type_id: 2,  occupation_id: 4);

OccupationCoffeePermission.create!(coffee_type_id: 3,  occupation_id: 3);
OccupationCoffeePermission.create!(coffee_type_id: 3,  occupation_id: 4);

OccupationCoffeePermission.create!(coffee_type_id: 4,  occupation_id: 4);
