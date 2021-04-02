FactoryBot.define do
  factory(:dog) do
    name {Faker::Creature::Dog.name}
    breed {Fager::Creature::Dog.breed}
  end
  factory(:cat) do
    name {Faker::Creature::Cat.name}
    breed {Fager::Creature::Cat.breed}
  end
end