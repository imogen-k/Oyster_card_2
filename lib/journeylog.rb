require_relative 'oystercard'


class JourneyLog

  attr_accessor :start_journey, :finish_journey

   def initialize(journey_class: Journey)
      @start_journey
      @finish_journey
      @journeys = []
   end

   def list_journey
     return  @journeys << { :entry_station => @start_journey, :exit_station => @finish_journey }
      #list_journey = nil
   end

   def journeys
     @journeys.dup
   end

   private

   def current_journey
     @current_journey ||= journey_class.new
   end

end
