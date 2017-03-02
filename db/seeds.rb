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
  Category.create(
    name: Faker::Hipster.sentence(1)
    )
end

5.times do 
  Article.create(
    user_id: User.all.sample,
    category_id: Category.all.sample,
    title: Faker::Hipster.sentence,
    body: Faker::Hipster.paragraph(3)
    )
end



5.times do
  Vote.create(
  user_id: User.all.sample,
  article_id: Article.all.sample,
  vote_value: [-1, 0, 1].sample
  )
end


5.times do 
  Comment.create(
  user_id: User.all.sample,
  article_id: Article.all.sample,
  body: Faker::Hipster.sentence
   ) 
end


puts "Yay!"