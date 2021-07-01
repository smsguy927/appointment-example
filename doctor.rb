class Doctor
    @@all = []
    attr_reader :name, :specialty

    def initialize(name, specialty)
        @name = name
        @specialty = specialty
        @@all << self
    end

    def appointments
        Appointment.all.select{|appt| appt.doctor === self}
    end

    def self.all
        @@all
    end
end