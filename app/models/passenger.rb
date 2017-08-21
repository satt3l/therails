class Passenger < ActiveRecord::Base
	has_many :tickets
end
