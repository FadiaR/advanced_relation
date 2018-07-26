require 'faker'

10.times do
  Assembly.create(name: Faker::Name.name)
end


10.times do
  Part.create(part_number: Faker::Name.first_name)
  end

  # create 15 appointments, each of them with a doctor and a patient
  Assembly.all.each do |assembly|
  	assembly.parts << Part.find(1)
  end