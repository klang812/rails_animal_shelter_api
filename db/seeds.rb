class Seed
  def self.begin
    Animal.destroy_all()
    Dog.destroy_all()
    Cat.destroy_all()
    seed = Seed.new
    seed.generate_dog
    seed.generate_cat
  end
  def generate_dog
    50.times do
      Dog.create!(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed,
        animal_id: animal.id
      )
    end
  end
  def generate_cat
    50.times do
      Cat.create!(
        name: Faker::Creature::Cat.name,
        breed: Faker::Creature::Cat.breed,
        animal_id: animal.id
    )
    end
  end
  puts "Congrats #{Dog.count} dogs has been made"
  puts "Congrats #{Cat.count} cats has been made"
end


Seed.begin