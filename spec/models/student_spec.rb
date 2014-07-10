require 'rails_helper'

describe Student do
  subject(:khad) { Student.new(
    name: "Khadijh Celestine",
    email: "khadijahthegreat@gmail.com",
    password: "October",
    password_confirmation: "October" ) }

  it 'is a valid student' do
    expect(khad).to be_valid
  end
  
  it 'is a student' do
    expect(khad.class.name).to eq("Student")
  end
  
  it 'is a user' do
    expect(khad.class.superclass.name).to eq("User")
  end
end
