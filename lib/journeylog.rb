require_relative 'oystercard'
require_relative 'journey'


class JourneyLog

  attr_accessor :start_journey, :finish_journey, :journey, :list_journey

   def initialize
     @start_journey
     @finish_journey
     @journeys = []
     @last_journey = Journey.new
   end

   def list_journey
     @journeys << { entry_station: @start_journey, exit_station: @finish_journey }
   end

   def journeys
     @journeys.dup
   end

   private

   def current_journey

      if @start_journey == nil
      @start_journey = "Incomplete journey"
      elsif @finish_journey == nil
      @finish_journey = "Incomplete journey"
      end
    end
   end
