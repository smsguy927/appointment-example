# frozen_string_literal: true

class Appointment
  @@all = []
  attr_reader :doctor, :patient, :time

  def initialize(doctor, patient, time)
    @doctor = doctor
    @patient = patient
    @time = time
    @@all << self
  end

  def self.all
    @@all
  end
end
