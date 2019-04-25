# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  u1 = User.create!(username: 'Markov')
  u2 = User.create!(username: 'Gizmo')
  u3 = User.create!(username: 'Totto')
  u4 = User.create!(username: 'Jon')

  p1 = Poll.create!(title: 'Cats Poll', author: u1)
  p2 = Poll.create!(title: 'Video Games Poll', author: u3)

  q1 = Question.create!(text: 'What Cat Is Cutest?', poll: p1)
  ac1 = AnswerChoice.create!(text: 'Markov', question: q1)
  ac2 = AnswerChoice.create!(text: 'Curie', question: q1)
  ac3 = AnswerChoice.create!(text: 'Sally', question: q1)

  q2 = Question.create!(text: 'Which Toy Is Most Fun?', poll: p1)
  ac4 = AnswerChoice.create!(text: 'String', question: q2)
  ac5 = AnswerChoice.create!(text: 'Ball', question: q2)
  ac6 = AnswerChoice.create!(text: 'Bird', question: q2)

  q3 = Question.create!(text: 'What is Totto''s Evil Twin Called?', poll: p2)
  ac7 = AnswerChoice.create!(text: 'Badeline', question: q3)
  ac8 = AnswerChoice.create!(text: 'Botto', question: q3)
  ac9 = AnswerChoice.create!(text: 'Twevil', question: q3)

  q4 = Question.create!(text: 'EEEEEEEEEEEEeeeeeeee......?', poll: p2)
  ac10 = AnswerChoice.create!(text: '...nter the Gungeon!', question: q4)
  ac11 = AnswerChoice.create!(text: '...nough Already!', question: q4)
  ac12 = AnswerChoice.create!(text: '...mpty the Garbage!', question: q4)

    r1 = Response.create!(
        respondent: u2,
        answer_choice: ac3
    )
    r2 = Response.create!(
        respondent: u2,
        answer_choice: ac4
    )
    r3 = Response.create!(
        respondent: u3,
        answer_choice: ac8
    )
    r4 = Response.create!(
        respondent: u4,
        answer_choice: ac10
    )
end
