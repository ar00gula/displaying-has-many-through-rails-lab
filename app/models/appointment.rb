class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def datetime
        d = self.appointment_datetime.to_formatted_s(:long).split(" ")
        "#{d[0]} #{d[1]} #{d[2]} at #{d[3]}"
    end
end