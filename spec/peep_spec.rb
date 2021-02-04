require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peep.all

      expect(peeps).to include "This is my first peep"
      expect(peeps).to include "This is my second peep"
    end
  end
end