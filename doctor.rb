# frozen_string_literal: true

class Doctor
  @@all = []
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end

  def patients
    appointments.map{|appt| appt.patient}
  end

  def self.all
    @@all
  end
end
