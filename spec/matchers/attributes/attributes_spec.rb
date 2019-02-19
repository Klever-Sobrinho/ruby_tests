require 'person'

describe 'Attributes' do
  it 'have attributes' do
    person = Person.new
    person.name = "Klever"
    person.age = 20
    expect(person).to have_attributes(name: a_string_starting_with("K"), age: (a_value >= 20))
  end
end