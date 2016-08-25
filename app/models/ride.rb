class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride

    if user.tickets < attraction.tickets && user.height < attraction.min_height
      "Sorry. You do not have enough tickets the Roller Coaster. You are not tall enough to ride the Roller Coaster."

    elsif user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets the Roller Coaster."

    elsif user.height < attraction.min_height
      "Sorry. You are not tall enough to ride the Roller Coaster."

    else
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.save
    end

  end
end

# at what moment in time does a Ride get created?
# when a user clicks that button
# RidesController#create - can receive the post request that will get sent by clicking 'go on the whatever ride'
# google how to use Rails button_to with a post request that includes params
# button_to blah labh method: x, params: y
# then @ride = Ride.create(etc); ride.take_ride; redirect_to show page for that user
