require "pry"
require_relative "./doctor"
require_relative "./patient"
require_relative "./appointment"

doctor1 = Doctor.new("Dr. Person", "Knee Doctor")
doctor2 = Doctor.new("Dr. Human", "Brain Doctor")

patient1 = Patient.new("Angelo")
patient2 = Patient.new("Justin Morgan")

appointment1 = Appointment.new(doctor1, patient1, "Monday, 5PM")
appointment2 = Appointment.new(doctor1, patient2, "Tuesday, 5PM")
appointment3 = Appointment.new(doctor2, patient1, "Wednesday, 5PM")

binding.pry
