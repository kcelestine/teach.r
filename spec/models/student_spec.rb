require 'rails_helper'

describe Student do
  subject(:khad) { Student.new(
    name: "Khadijh Celestine",
    email: "khadijahthegreat@gmail.com",
    password: "October9",
    password_confirmation: "October9" ) }

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
