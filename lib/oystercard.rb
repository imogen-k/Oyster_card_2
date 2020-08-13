require_relative 'journey'
require_relative 'journeylog'


class Oystercard

  attr_reader :journey, :balance, :entry_station, :journey_list, :journey_log

  def initialize(journey = Journey.new, journey_log = JourneyLog.new)
    @balance = 0
    @entry_station
    @journey_list = []
    @journey = journey
    @journey_log = journey_log
  end

  attr_reader :balance, :entry_station, :journey_list

  MAX_BALANCE = 90
  MIN_FARE = 1

  def top_up(amount)
    fail "DENIED: Max balance is #{MAX_BALANCE}" if balance + amount > MAX_BALANCE
    @balance += amount
  end

  def in_journey?
    !!entry_station
  end

  def touch_in(station)
    fail "Insuffient funds available" if balance < MIN_FARE
    @entry_station = station
    @journey.start_station = station
    @journey_log.start_journey = station
  end

  def touch_out(station)
    @journey.end_station = station
    @journey_log.finish_journey = station
    @journey_log.list_journey
    deduct(@journey.calculate_fare)
    @journey_list << { :entry_station => @entry_station, :exit_station => station }
    @entry_station = nil
  end

  private
  def deduct(amount)
    @balance -= amount
  end

end
