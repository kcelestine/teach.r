require 'rails_helper'

describe User do
  subject(:fake_user) { User.new(
    name: "Fake User",
    email: "fake@user.com",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_no_name) { User.new(
    email: "fake@user.com",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_no_email) { User.new(
    name: "Fake User",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_bad_email) { User.new(
    name: "Fake User",
    email: "fakecom",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_no_psswd) { User.new(
    name: "Fake User",
    email: "fake@user.com",
    password_confirmation: "September" ) }

  let(:fake_user_diff_psswd) { User.new(
    name: "Fake User",
    email: "fake@user.com",
    password: "1September",
    password_confirmation: "September" ) }

  let(:fake_user_name_8) { User.new(
    name: "Fake",
    email: "fake@user.com",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_name_50) { User.new(
    name: "Fake User Fake User Fake User Fake User Fake User Fake User Fake User Fake User Fake User Fake User Fake User",
    email: "fake@user.com",
    password: "September",
    password_confirmation: "September" ) }

  let(:fake_user_name_special) { User.new(
    name: "Fake~User",
    email: "fake@user.com",
    password: "September",
    password_confirmation: "September" ) }

  it 'is a valid user' do
    expect(fake_user).to be_valid
  end

  it 'is not a valid user without a name' do
    expect(fake_user_no_name.valid?).to eq(false)
  end

  it 'is not a valid user without an email' do
    expect(fake_user_no_email.valid?).to eq(false)
  end

  it 'is not a valid user without a valid email' do
    expect(fake_user_bad_email.valid?).to eq(false)
  end

  it 'is not a valid user without a password' do
    expect(fake_user_no_psswd.valid?).to eq(false)
  end

  it 'is not a valid user without the password matching the password confirmation' do
    expect(fake_user_diff_psswd.valid?).to eq(false)
  end

  it 'is not a valid user with a name less than 8 characters' do
    expect(fake_user_name_8.valid?).to eq(false)
  end

  it 'is not a valid user with a name greater than 50 characters' do
    expect(fake_user_name_50.valid?).to eq(false)
  end
end
