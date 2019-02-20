require 'person'

describe 'Attributes' do

#    before(:each) do
#     @person = Person.new
#    end

  let(:person) { Person.new }

  it 'have attributes' do
    person.name = "Klever"
    person.age = 20

    expect(person).to have_attributes(name: a_string_starting_with("K"), age: (a_value >= 20))
  end

  it 'have attributes' do
    person.name = "Jose"
    person.age = 25

    expect(person).to have_attributes(name: a_string_starting_with("J"), age: (a_value >= 20))
  end
end