require 'rails_helper'

describe Course do
  let(:hari) { Instructor.new( name: "superman",
                         email: "Hari@c.com",
                         password_digest: "hunter2",
                         type: "i")}

  it "is valid with a username, email, and password" do
    expect(hari).to be_valid
  end
end


