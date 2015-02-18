require 'faker'
User.delete_all
List.delete_all
Item.delete_all
 # Create Users
 10.times do
   user = User.new(
     username: Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10),
     avatar:   Faker::Avatar.image
   )
   user.skip_confirmation!
   user.save!
 end

  me = User.new(
   username: 'Nathan Pena',
   email:    'nnpena@outlook.com',
   password: 'helloworld',
 )
 me.skip_confirmation!
 me.save!
 
 users = User.all

  # Create Lists
  users.each do |f|
    List.create!(
      title: Faker::Lorem.sentence,
      user_id: f.id)
  end

lists = List.all

  # Create Items
  50.times do 
    Item.create!(
      name: Faker::Lorem.sentence,
      list: lists.sample)
  end
  
puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
 