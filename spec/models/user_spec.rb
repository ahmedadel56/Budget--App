require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Validate user' do
    @user = User.create(name: 'Ahmed', email: 'ahmdadl563@gmail.com', password: '123456')
    expect(@user.save).to eq(true)
  end
  it "User's name should not be null" do
    user = User.create(name: '', email: 'ahmdadl563@gmail.com', password: '123456').save
    expect(user).to eq(false)
  end
  it "User's name length should be > 3" do
    user = User.create(name: 'Ahmed', email: 'ahmdadl563@gmail.com', password: '123456').save
    expect(user).to eq(true)
  end
  it "User's name length should not be < 3" do
    user = User.create(name: 'Eb', email: 'ahmdadl563@gmail.com', password: '123456').save
    expect(user).to eq(false)
  end
  it "User's email presence" do
    user = User.create(name: 'Ahmed', password: '123456').save
    expect(user).to eq(false)
  end
  it "User's email is valid" do
    user = User.create(name: 'Ahmed', email: 'ahmdadl563g', password: '123456').save
    expect(user).to eq(false)
  end
  it "User's password is valid" do
    user = User.create(name: 'Ahmed', email: 'ahmdadl563@gmail.com', password: '12').save
    expect(user).to eq(false)
  end
end
