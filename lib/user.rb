require_relative 'database_connection'

class User
  attr_reader :id, :username

  def initialize(id:, username:)
    @id = id
    @username = username
  end

  def self.create(username:, email:, password:)
    entry = DatabaseConnection.query(
      "INSERT INTO users (username, email, password)
       VALUES('#{username}', '#{email}', '#{password}')
       RETURNING id, username;")
    User.new(id: entry[0]['id'], username: entry[0]['username'])
  end
end
