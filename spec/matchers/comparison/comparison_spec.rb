describe 'Matchers Comparison' do
  it '>' do
    expect(5).to be > 1    
  end

  it '>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5    
  end

  it '<' do
    expect(5).to be < 10    
  end

  it '<=' do
    expect(5).to be <= 12
    expect(5).to be <= 5    
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2,7).inclusive
    expect(2).to be_between(2,7).inclusive 
    expect(7).to be_between(2,7).inclusive 
  end

  # it 'be_between inclusive / Aggregate failures', :aggregate_failures do
  #   expect(5).to be_between(2,7).inclusive
  #   expect(1).to be_between(2,7).inclusive 
  #   expect(8).to be_between(2,7).inclusive 
  # end

  it 'be_between inclusive / Aggregate failures' do
    expect(5).to be_between(2,7).inclusive
    expect(1).to be_between(2,7).inclusive 
    expect(8).to be_between(2,7).inclusive 
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2,7).exclusive
    expect(3).to be_between(2,7).exclusive 
    expect(6).to be_between(2,7).exclusive 
  end

  it 'match' do
    expect("test@.com").to match(/..@../)
  end

  it 'start_with' do
    expect("program test").to start_with("program")
    expect([1,2,3]).to start_with(1)
  end

  it 'end_with' do
    expect("program test").to end_with("test")
    expect([1,2,3]).to end_with(3)
  end
end