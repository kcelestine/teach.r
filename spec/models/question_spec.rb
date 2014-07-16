require 'rails_helper'

describe Question do
  before(:each) do
    hari.save
    wdi.save
    first.save
  end

  let(:wdi) { Course.new(
    name: "Web Development Immersive",
    user_id: hari.id,
    start_date: "June 9, 2014",
    end_date: "September 8, 2014" )}

  let(:hari) { Teacher.new(
    name: "superman",
    email: "Hari@c.com",
    password: "newhunter2",
    password_confirmation: "newhunter2" )}

  let(:first) { Session.new(
    name: "Intro to Git",
    course_id: wdi.id,
    sequence_num: 1,
    date: "June 9, 2014" )}

  subject(:why) { Question.new(
    question: "Why is github important to me as a junior developer?",
    answer: "Because, it gives employers a sense of what you can do.",
    session_id: first.id
    )}

  let(:no_session_id) { Question.new(
    question: "Why is github important to me as a junior developer?",
    answer: "Because, it gives employers a sense of what you can do."
    )}

  let(:no_question) { Question.new(
    answer: "Because, it gives employers a sense of what you can do.",
    session_id: first.id
    )}

  it 'is a valid question with a question, and a session_id' do
    expect(why).to be_valid
  end

  it 'is belongs to a session' do
    expect(why.session_id).to be_truthy
  end

  it 'is not a valid question without a session_id' do
    expect(no_session_id.valid?).to eq(false)
  end

  it 'is not a valid question without a question' do
    expect(no_question.valid?).to eq(false)
  end
end
