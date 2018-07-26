require 'faker'

10.times do
  Patient.create(F_name: Faker::Name.first_name, L_name: Faker::Name.last_name)
end


10.times do
  Doctor.create(F_name: Faker::Name.first_name, L_name: Faker::Name.last_name, Specialty:Faker::Science.element ,
    Postal_code: Faker::Address.postcode)
  end

  # create 15 appointments, each of them with a doctor and a patient
  15.times do
    Appoitment.create(Date: Faker::Time.forward(60, :day), patient_id: Patient.all.sample.id, doctor_id: Doctor.all.sample.id)
  end