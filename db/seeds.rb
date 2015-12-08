include RandomData


10.times do
  user = User.new(
  name: RandomData.random_word,
  email: "#{RandomData.random_word}@#{RandomData.random_word}.com",
  password: "password"
  )
  user.skip_confirmation!
  user.save!
end

users = User.all

options = [true, false]
50.times do
  Wiki.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    private: options.sample,
    user: users.sample

  )

end
admin = User.new(
name:     'Erik Lopez Adminstrator',
email:    'eriklpzang@bloccit.com',
password: 'bloccit12',
)
user.skip_confirmation!
user.save!

p "Database Seeded"
