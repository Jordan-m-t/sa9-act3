require 'bodies_water.rb'

RSpec.describe Ocean do
    it 'returns the correct string representation' do
      expect(Ocean.new.to_s).to eq('from Ocean')
    end
  end
  
  RSpec.describe Lake do
    it 'returns the correct string representation' do
      expect(Lake.new.to_s).to eq('from Lake')
    end
  
    it 'correctly overrides m3 method' do
      expect { Lake.new.m3 }.to output("I am Lake m3()\n").to_stdout
    end
  end
  
  RSpec.describe Bay do
    it 'returns the correct string representation' do
      expect(Bay.new.to_s).to eq('from Bay')
    end
  
    it 'correctly overrides m1 method' do
      expect { Bay.new.m1 }.to output("I am Bay m1()\n").to_stdout
    end
  
    it 'enhances m2 method with additional behavior' do
      expect { Bay.new.m2 }.to output("I am Ocean m2()\nI am Bay m2()\n").to_stdout
    end
  end
  
  RSpec.describe Pond do
    it 'returns the correct string representation' do
      expect(Pond.new.to_s).to eq('from Pond')
    end
  
    it 'correctly overrides m4 method' do
      expect { Pond.new.m4 }.to output("I am Pond m4()\n").to_stdout
    end
  end