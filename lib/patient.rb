class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appt_instance|
            appt_instance.patient == self
        end 
    end

    def doctors
        appointments.map do |my_appt|
            my_appt.doctor
        end

    end
end
