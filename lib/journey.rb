require_relative 'journeylog'

class Journey

  attr_accessor :start_station, :end_station, :journey

  PENALTY_FEE = 6

  def initlialize
    @start_station
    @end_station
    @journey
  end

  def end_journey
    @journey = { :entry_station => @start_station, :exit_station => @end_station }
    @journey = nil
  end

  def complete?
    !!@start_station && !!@end_station
  end

  def calculate_fare

    complete? ? 1 : PENALTY_FEE

  end
end
