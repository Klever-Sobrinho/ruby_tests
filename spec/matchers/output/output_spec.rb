describe 'Matcher output' do
  it { expect{ puts "klever" }.to output.to_stdout }
  it { expect{ print "klever" }.to output("klever").to_stdout }
  it { expect{ puts "klever" }.to output(/klever/).to_stdout }

  it { expect{ warn "klever" }.to output.to_stderr }
  it { expect{ warn "klever" }.to output("klever\n").to_stderr }
  it { expect{ warn "klever" }.to output(/klever/).to_stderr }
end