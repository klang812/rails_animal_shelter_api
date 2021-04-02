class Seed
  def self.begin
    Animal.destroy_all()
    Dog.destroy_all()
    Cat.destroy_all()
    seed = Seed.new
    seed.generate_dog
    seed.generate_cat
    puts "Congrats #{Dog.count} dogs has been made"
    puts "Congrats #{Cat.count} cats has been made"
  end
  def generate_dog
    animal = Animal.create!(animal_type: "dog")
    50.times do
      animal.dogs.create!(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed 
      )
    end
  end
  def generate_cat
    animal = Animal.create!(animal_type: "cat")
    50.times do
      animal.cats.create!(
        name: Faker::Creature::Cat.name,
        breed: Faker::Creature::Cat.breed  
    )
    end
  end
end


Seed.begin