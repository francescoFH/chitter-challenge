require 'user'

describe User do
  describe '.create' do
    it 'creates a new user' do
      user = User.create(username: 'Tester', email: 'test@testing.com', password: "password123")
      table_data = DatabaseConnection.query("SELECT * FROM users WHERE id = #{user.id};")

      expect(user).to be_a User
      expect(user.id).to eq table_data.first['id']
      expect(user.username). to eq 'Tester'
    end
  end

  describe '.find' do
    it 'finds the user by an id' do
      user = User.create(username: 'Tester', email: 'test@testing.com', password: "password123")
      search = User.find(id: user.id)

      expect(search.id).to eq user.id
      expect(search.username).to eq user.username
    end

    it 'returns nil if id is not given' do
      expect(User.find(id: nil)).to eq nil
    end

  end
end
