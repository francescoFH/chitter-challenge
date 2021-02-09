require 'user'

describe User do
  describe '.create' do
    it 'creates a new user' do
      user = User.create(handle: 'tester', email: 'test@testing.com', password: "password123", name: 'Mr Test')
      table_data = DatabaseConnection.query("SELECT * FROM users WHERE id = #{user.id};")

      expect(user).to be_a User
      expect(user.id).to eq table_data.first['id']
      expect(user.handle). to eq '@tester'
      expect(user.name).to eq 'Mr Test'
    end
  end

  describe '.find' do
    it 'finds the user by an id' do
      user = User.create(handle: 'tester', email: 'test@testing.com', password: "password123", name: 'Mr Test')
      search = User.find(id: user.id)

      expect(search.id).to eq user.id
      expect(search.handle).to eq user.handle
    end

    it 'returns nil if id is not given' do
      expect(User.find(id: nil)).to eq nil
    end
  end

  describe '.authenticate' do
    it 'return a user given a correct email and password, if it exists' do
      User.create(handle: 'tester1', email: 'test1@testing.com', password: "password123", name: 'Mr Test1')

      expect(User.authenticate(email: 'wrong@email.com', password: 'password123')).to be_nil
    end

    it 'returns nil if given an incorret password' do
      User.create(handle: 'tester1', email: 'test1@testing.com', password: "password123", name: 'Mr Test1')

      expect(User.authenticate(email: 'test1@testing.com', password: 'wrong')).to be_nil
    end
  end
end
