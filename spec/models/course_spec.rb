require 'rails_helper'

describe Course do
  # before(:each) do
  #   hari.save
  # end

  let(:hari) { Teacher.new(
		name: "superman",
    email: "Hari@c.com",
    password: "newhunter2",
    password_confirmation: "newhunter2" )}

  subject(:wdi) { Course.new(
		name: "Web Development Immersive",
		user_id: hari.id,
		start_date: "June 9, 2014",
		end_date: "September 8, 2014" ) }

  let(:wdi_v_req) { Course.new(
		name: "Web Development Immersive",
		user_id: hari.id ) }

  let(:wdi_i_name_dup) { Course.new(
    name: "Web Development Immersive",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  let(:wdi_i_course_code_dup) { Course.new(
    name: "Web Development Immersive",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  let(:wdi_i_name) { Course.new(
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  let(:wdi_i_user_id) { Course.new(
    name: "Web Development Immersive",
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  let(:wdi_name_less_5_characters) { Course.new(
    name: "Web",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  let(:wdi_name_greater_50_characters) { Course.new(
    name: "Web WebWebWebWebWebWebWebWebWeb WebWebWebWebWebWebWebWebWeb WebWebWebWebWebWebWebWebWeb",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" ) }

  it "is valid with a name, user_id, start_date and end_date" do
    hari.save
    expect(wdi).to be_valid
  end

  it "has an teacher" do
    hari.save
    expect(User.find(wdi.user_id).type).to eq("Teacher")
  end

  it "is valid with a name, user_id" do
    hari.save
    expect(wdi_v_req).to be_valid
  end

  it "is not valid with a name thats taken" do
    wdi.save
    expect(wdi_i_name_dup.valid?).to eq(false)
  end

  it "is not valid with  thats taken" do
    wdi.save
    expect(wdi_i_course_code_dup.valid?).to eq(false)
  end

  it "is not valid without a name" do
    expect(wdi_i_name.valid?).to eq(false)
  end

  it "is not valid without a user_id" do
    expect(wdi_i_user_id.valid?).to eq(false)
  end

  it 'is not valid with a name greater than 50 characters' do
    expect(wdi_name_greater_50_characters.valid?).to eq(false)
  end

  it 'is not valid with a name less than 5 characters' do
    expect(wdi_name_less_5_characters.valid?).to eq(false)
  end
end
