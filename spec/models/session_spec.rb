require 'rails_helper'

describe Session do
  before(:each) do
    hari.save
    wdi.save
  end

  let(:wdi) { Course.new(
    name: "Web Development Immersive",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" )}

  let(:hari) { Teacher.new(
    name: "superman",
    email: "Hari@c.com",
    password: "hunter2",
    password_confirmation: "hunter2" )}

  subject(:first) { Session.new(
    name: "Intro to Git",
    course_id: wdi.id,
    sequence_num: 1,
    date: "June 9, 2014" )}

  let(:no_name) { Session.new(
    course_id: wdi.id,
    sequence_num: 2,
    date: "June 9, 2014" )}

  let(:no_sequence_num) { Session.new(
    name: "Intro to Http",
    course_id: wdi.id,
    date: "June 9, 2014" )}

  let(:no_date) { Session.new(
    name: "Intro to Rails",
    course_id: wdi.id,
    sequence_num: 3)}

  let(:dup_date) { Session.new(
    name: "Intro to Rails",
    course_id: wdi.id,
    sequence_num: 3,
    date: "June 9, 2014")}

  let(:dup_sequence_num) { Session.new(
    name: "Intro to Http",
    course_id: wdi.id,
    date: "June 9, 2014",
    sequence_num: 1 )}

  let(:dup_name) { Session.new(
    course_id: wdi.id,
    sequence_num: 2,
    date: "June 9, 2014" )}

  it 'is a valid session with a name, course_id, sequence_num, and date' do
    first.save
    expect(first).to be_valid
  end

  it 'is belongs to a course' do
    first.save
    expect(first.course_id).to eq(1)
  end

  it 'is not a valid session without a name' do
    expect(no_name.valid?).to eq(false)
  end

  it 'is not a valid session without a sequence_num' do
    expect(no_sequence_num.valid?).to eq(false)
  end

  it 'is not a valid session without a date' do
    expect(no_date.valid?).to eq(false)
  end

  it 'is not a valid session without a duplicate name within the course' do
    first.save
    expect(dup_date.valid?).to eq(false)
  end

  it 'is not a valid session without a duplicate sequence_num within the course' do
    first.save
    expect(dup_sequence_num.valid?).to eq(false)
  end

  it 'is not a valid session without a duplicate date within the course' do
    first.save
    expect(dup_date.valid?).to eq(false)
  end

#     No sequence_num
# Invalid Session : No course_id
# Invalid Session : No name
# Invalid Session : No date

end
