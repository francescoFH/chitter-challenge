require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peep = Peep.create(post: 'This is my first peep', poster: '@tester', poster_name: 'Mr Test')
      Peep.create(post: 'This is my second peep', poster: '@tester1', poster_name: 'Mr Test1')

      peeps = Peep.all

      expect(peeps.last.post).to include "This is my first peep"
      expect(peeps.last.id).to eq peep.id
      expect(peeps.length).to eq 2
      expect(peeps.first).to be_a Peep
    end
  end

  describe '.create' do
    it 'creates a new peep' do
      peep = Peep.create(post: 'Testing a peep', poster: '@tester', poster_name: 'Mr Test')
      table_data = DatabaseConnection.query("SELECT * FROM peeps WHERE id = #{peep.id};")

      expect(peep).to be_a Peep
      expect(peep.id).to eq table_data.first['id']
      expect(peep.post).to eq 'Testing a peep'
    end
  end
end
