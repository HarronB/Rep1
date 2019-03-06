#Below is the default file comments
    # This file should contain all the record creation needed to seed the database with its default values.
      # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
      #
      # Examples:
      #
      #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
      #   Character.create(name: 'Luke', movie: movies.first)



#commecnt out in lecture video
    # new_house = House.create(name: 'Griffith', points: 45)

    # #the following are 2 ways to make a student that belongs to a house
    # # The 1st way auto associtaes it to the house, as its creates it by way of that house.
    # new_house.students.create(name: 'Harry Pots')
    # # OR  method 2 below
    # Student.create(name: 'Hermione Grang', house: new_house)




  Student.destroy_all
  Teacher.destroy_all
  House.destroy_all


#can only ask for what they have
# if they have 8 housees, can only call for 8 qunieq
# to use faker properly we must modiy the GEM files   VIEW GEM FILE FOR HOW
8.times do
  house = House.create(name: Faker::Movies::HarryPotter.unique.house,
                        points: Faker::Number.between(10,90))


  number_of_students = rand(10..20)
  number_of_teachers = rand(4..8)

  #alternatively the below can be used to set a desired range of students and teachers using Faker
  # number_of_students = Faker::Number.between(10,20).to_i
  # number_of_teachers = Faker::Number.between(4, 8).to_i
  number_of_students.times do
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end

  number_of_teachers.times do
    house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
  end

end




#FOR VERIFICATION IN CONSOLE
  puts "Number of houses: #{House.count}"
  puts "Number of students: #{Student.count}"
  puts "Number of teachers: #{Teacher.count}"
