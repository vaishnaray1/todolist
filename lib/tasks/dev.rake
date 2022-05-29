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
  
  users.each do | user |
    rand(10).times do
      item = user.items.create(
        category: 20
        priority:  ["Normal", "Urgent"].sample
        completed:  false
        due_date:  Faker::Date.forward(days: 23)
        description:  Faker::Verb.base
      )
    end
  end
  # 30.times do 
  #   item = Item.new
  #   item.owner_id = rand(1..usernames.length())
  #   item.category_id = rand(1..categories.length())
  #   item.priority =  ["Normal", "Urgent"].sample
  #   item.completed =  false
  #   item.due_date =  Faker::Date.forward(days: 23)
  #   item.description =  Faker::Verb.base
  #   item.save
  # end
  p "#{Item.count} items have been created"
  # t.references :owner, null: false, foreign_key: {to_table: :users}
  # t.references :category, null: false, foreign_key: true
  # t.string :priority, default: "Normal"
  # t.boolean :completed, default: false
  # t.datetime :due_date
  # t.text :description
  # t.integer :interactions_count, default: 0


  


  p "#{Interaction.count} interactions have been created"

end