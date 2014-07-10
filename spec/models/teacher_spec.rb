require 'rails_helper'

describe Teacher do
  subject(:khad) { Teacher.new(
    name: "Khadijh Celestine",
    email: "khadijahthegreat@gmail.com",
    password: "October",
    password_confirmation: "October" ) }

  it 'is a valid teacher' do
    expect(khad).to be_valid
  end

  it 'is an teacher' do
    expect(khad.class.name).to eq("Teacher")
  end

  it 'is a user' do
    expect(khad.class.superclass.name).to eq("User")
  end
end
