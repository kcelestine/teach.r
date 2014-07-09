require 'rails_helper'

describe Course do
  let(:hari) { Instructor.new( name: "superman",
                         email: "Hari@c.com",
                         password_digest: "hunter2",
                         type: "i")}

  let(:wdi) { Course.new( 
			name: "Web Development Immersive",
			course_code: "WDI0614",
			start_date: "June 9, 2014",
			end_date: "September 8, 2014" ) }

  it "is valid with a username, email, and password" do
    expect(hari).to be_valid
  end
end


