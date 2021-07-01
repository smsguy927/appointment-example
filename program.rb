require "pry"
require_relative "./doctor"
require_relative "./patient"
require_relative "./appointment"

doctor_1 = Doctor.new("John Doe", "Brain Surgery")
doctor_2 = Doctor.new("Susan Smith", "Cardiology")
patient_1 = Patient.new("Alice Green")
patient_2 = Patient.new("Robert Martin")
appointment_1 = Appointment.new(doctor_1, patient_1, "8/1/2021 5:30 pm")
appointment_2 = Appointment.new(doctor_1, patient_2, "8/1/2021 6:30 pm")
appointment_3 = Appointment.new(doctor_2, patient_1, "8/1/2021 12:30 pm")
appointment_3 = Appointment.new(doctor_2, patient_2, "8/1/2021 1:30 pm")


puts Doctor.all
puts Patient.all
puts doctor_1.appointments
puts doctor_1.patients

binding.pry
