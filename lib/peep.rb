require 'pg'

class Peep
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbanme: 'chitter')
    end

    result = connection.exec("SELECT * FROM peeps;")
    result.map { |peep| peep['peep'] }
  end
end
