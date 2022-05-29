task sample_data: :environment do
  p "Creating sample data"

  require 'faker'

  if Rails.env.development?
    Item.destroy_all
    Interaction.destroy_all
    Category.destroy_all
    User.destroy_all
  end

  #Create sample users
  usernames = Array.new {}

  usernames << "alice"
  usernames << "bob"
  usernames << "craig"
  usernames << "diana"
  usernames << "enoch"

  usernames.each do | username |
    User.create(
      username: username.downcase,
      email: "#{username}@example.com",
      password: "password",
      private: [true, false].sample
      )
  end
  p "#{User.count} users have been created"

  #Creat sample categories
  categories = Array.new {}

  categories << "Work"
  categories << "School"
  categories << "Hobbies"
  categories << "Final Project"
  categories << "Groceries"

  categories.each do | theme |
    Category.create(
      title: theme
    )
  end
  p "#{Category.count} categories have been created"

  #Create sample items
  
  # users.each do | user |
  #   rand(10).times do
  #     item = user.items.create(
  #       category: rand(1..categories.length())
  #       priority:  ["Normal", "Urgent"].sample
  #       completed:  false
  #       due_date:  Faker::Date.forward(days: 23)
  #       description:  Faker::Verb.base
  #     )
  #   end
  # end

  sample_items = Array.new{}

  30.times do 
    item = Item.new
    item.owner_id = User.ids.sample
    #item.owner_id = rand(1..usernames.length())
    item.category_id = Category.ids.sample
    #item.category_id = rand(1..categories.length())
    item.priority =  ["Normal", "Urgent"].sample
    item.completed =  false
    item.due_date =  Faker::Date.forward(days: 23) 
    item.description =  Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)
    item.save
    # sample_items << item.id
  end
  p "#{Item.count} items have been created"


  10.times do
    interaction = Interaction.new
    interaction.item_id = Item.ids.sample
    interaction.user_id = User.ids.sample
  end
  # sample_items.each do | item_id |
  #   Interaction.create(
  #     item: item_id
  #     user: User.ids.keys.sample
  #     )
  # end
  p "#{Interaction.count} interactions have been created"

end