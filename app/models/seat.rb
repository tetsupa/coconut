class Seat < ActiveRecord::Base
  belongs_to :flight
  def validate
    if baggage > flight.baggage_allowance
      errors.add_to_base("You have too much baggage")
    end
  end
end
