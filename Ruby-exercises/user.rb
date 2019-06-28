# frozen_string_literal: true

require 'minitest/autorun'

class User
  def initialize
    @current_id = 0
    @users = []
  end

  def create(first_name, last_name, email, age, address)
    # check for email...
    user_email = find_email(email)

    if user_email.eql?(nil) && !first_name.empty? && !last_name.empty? && !email.empty?
      user = {
        id: @current_id,
        first_name: first_name,
        last_name: last_name,
        email: email,
        age: age,
        address: address
      }
      @users << user
      @current_id.next
      user
    else
      p 'invalid user'
    end
  end

  def count
    @users.size
  end

  def all
    @users.each { |user| p user }
  end

  def find(id)
    @users.select { |user| user[:id].eql? id }
  end

  def where(info)
    p @users.select { |user| where_helper(user, info) }
  end

  def update(id, **info)
    @users.select do |user|
      if user[:id].eql? id
        info.keys.each do |key|
          user[key] = info[key]
        end
      end
    end
  end

  def delete(id)
    @users.delete_if { |user| user[:id].eql? id }
  end

  private

  def where_helper(user, info)
    info.keys.each { |key| info[key].eql? user[key] }
  end
  # if (user[:first_name].eql? info[:first_name] &&
  #   user[:last_name].eql? info[:last_name] &&
  #   user[:email].eql? info[:email] &&
  #   user[:age].eql? info[:age] &&
  #   user[:address].eql? info[:address])
  # end

  def find_email(email)
    @users.select { |user| user[:email].eql? email }.first
  end
end

users = User.new
users.create('juan', 'saieh', '@gmail', '', '')
users.create('jucer', 'saieh', 'koombea', '', '')
users.create('jucer', 'asd', 'koombea', '', '')
# users.where( { last_name: 'saieh' })
# users.update(0, {first_name: 'jose', last_name: 'saieh'} )
# users.all
# users.find(2)
# users.delete(1)
# users.all

describe User do
  before do
    @user_test = User.new
    @user_test.create('juan', 'saieh', '@hotmail', 23, '')
  end

  describe 'testing user creation' do
    it 'must return a hash with user properties passed' do
      create_user_test = { id: 0, first_name: 'juan', last_name: 'saieh', email: '@gmail', age: 23, address: '' }
      @user_test.create('juan', 'saieh', '@gmail', 23, '').must_equal(create_user_test) # USER IS NOT CREATED!, ITS TESTING A METHOD
    end
  end

  describe 'testing count method' do
    it 'must return 1, only one user is created' do
      @user_test.count.must_equal(1)
    end
  end

  describe 'testing all method' do
    it 'must return the created user' do
      @user_test.all.must_equal([{ id: 0, first_name: 'juan', last_name: 'saieh', email: '@hotmail', age: 23, address: '' }])
    end
  end

  describe 'using find method to search for create_user_test' do
    it 'must return create_user_test' do
      @user_test.find(0).must_equal([{ id: 0, first_name: 'juan', last_name: 'saieh', email: '@hotmail', age: 23, address: '' }])
    end
  end
end
