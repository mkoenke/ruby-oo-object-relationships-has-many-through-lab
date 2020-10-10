class Doctor
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments 
        Appointment.all.select do |appt_instance|
            appt_instance.doctor == self
        end
    end

    def patients
        appointments.map do |my_appt|
            my_appt.patient
        end
    end
end