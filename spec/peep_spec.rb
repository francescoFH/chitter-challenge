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

  describe '.create' do
    it 'creates a new peep' do
      Peep.create([peep: 'Testing a Peep'])

      expect(Peep.all).to include 'Testing a Peep'
    end
  end
end
