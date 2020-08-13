require 'journeylog'

describe JourneyLog do

  let(:journey){ double :journey } #this may need to have some methods
  let(:station){ double :station }
  let(:journey_class){double :journey_class, new: journey}
  subject {described_class.new(journey_class: journey_class)}

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


end
