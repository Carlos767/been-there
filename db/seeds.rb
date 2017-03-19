User.destroy_all
Article.destroy_all
Vote.destroy_all


5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.free_email, 
    password: "password"
    )
end


5.times do
  Location.create(
    country: 'USA',
    city: 'San Francisco'
    )
end

5.times do 
  Article.create(
    user_id: 1,
    category_id: 3,
    title: Faker::Hipster.sentence(1),
    body: Faker::Hipster.paragraph(3)
    )
end



5.times do
  Vote.create(
  user_id: 2,
  article_id: 4,
  vote_value: [-1, 0, 1].sample
  )
end


5.times do 
  Comment.create(
  user_id: 1,
  article_id: 3,
  body: Faker::Hipster.sentence
   ) 
end


puts "Yay!"