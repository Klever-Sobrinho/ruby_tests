require 'person'

shared_examples 'status' do |feeling|
    it "#{feeling}" do
        person.send("#{feeling}!")
        expect(person.status).to eq("Feeling #{feeling.capitalize}!")
    end
end

describe 'Person' do
  subject(:person) { Person.new }

  include_examples 'status', :happy
  it_behaves_like 'status', :sad
  it_should_behave_like 'status', :glad
#   it 'happy!' do
#       person.happy!
#       expect(person.status).to eq("Felling happy!")
#   end

#   it 'sad!' do
#     person.sad!
#     expect(person.status).to eq("Felling sad!")
#   end

#   it 'glad!' do
#     person.glad!
#     expect(person.status).to eq("Felling glad!")
#   end
end