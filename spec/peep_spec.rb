require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (peep) VALUES('This is my first peep');")
      connection.exec("INSERT INTO peeps (peep) VALUES('This is my second peep');")
      
      peeps = Peep.all

      expect(peeps).to include "This is my first peep"
      expect(peeps).to include "This is my second peep"
    end
  end
end
