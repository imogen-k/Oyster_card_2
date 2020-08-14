require 'journeylog'

describe JourneyLog do

  let(:journey){ double :journey }
  let(:station){ double :station }


  it 'JourneyLog is an instance of a class' do
  expect(subject).to be_instance_of(JourneyLog)
end

it 'responds to method' do
    expect(subject).to respond_to(:start_journey)
end

it 'responds to method' do
    expect(subject).to respond_to(:finish_journey)
end

it 'expect list_journey method to return array of hashes containing journeys' do
  expect(subject.list_journey).to eq(subject.journeys)
end

it 'checks that the list of journeys is empty by default' do
  expect(subject.journeys.count).to eq 0
end

it 'records a journey' do
  expect(subject.start_journey).to eq(nil)
end

end
