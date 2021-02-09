require 'user'

describe User do
  describe '.create' do
    it 'creates a new user' do
      user = User.create(username: 'Tester', email: 'test@testing.com', password: "password123")
      table_data = DatabaseConnection.query("SELECT * FROM user WHERE id = #{user.id};")

      expect(user).to be_a User
      expect(user.id).to eq table_data.first['id']
      expect(user.username). to eq 'Tester'
    end  
  end
end
