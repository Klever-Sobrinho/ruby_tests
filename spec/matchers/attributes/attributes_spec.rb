require 'person'

describe 'Attributes' do
  before(:suite) do
    puts ">>>>>>>> Before test suite"
  end

  after(:suite) do
    puts ">>>>>>>> After test suite"
  end

  before(:context) do
    puts ">>>>>>>> Before all tests"
  end

  after(:all) do
    puts ">>>>>>>> After all test"
  end

  # before(:each) do
  #   puts "BEFORE"
  #   @person = Person.new
  # end

  # after(:each) do
  #   @person.name = "Without name!"
  #   puts "AFTER>>>>>> #{@person.inspect}"
  # end

  around(:each) do |test|
    puts "BEFORE"
    @person = Person.new

    test.run # roda o teste

    @person.name = "Without name!"
    puts "AFTER>>>>>> #{@person.inspect}"
  end

  it 'have attributes' do
    @person.name = "Klever"
    @person.age = 20

    expect(@person).to have_attributes(name: a_string_starting_with("K"), age: (a_value >= 20))
  end

  it 'have attributes' do
    @person.name = "Jose"
    @person.age = 25

    expect(@person).to have_attributes(name: a_string_starting_with("J"), age: (a_value >= 20))
  end
end