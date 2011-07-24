class Flight < ActiveRecord::Base
  validates_presence_of :destination
  validates_presence_of :baggage_allowance
  validates_presence_of :capacity
end
