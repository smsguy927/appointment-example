class Appointment
    @@all = []
    attr_reader :doctor, :patient, :appt_time

    def initialize(doctor, patient, appt_time)
        @doctor = doctor
        @patient = patient
        @appt_time = appt_time

        @@all << self
    end

    def self.all
        @@all
    end
end