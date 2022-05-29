task sample_data: :environment do
  p "Creating sample data"

  if Rails.env.development?
    Category.destroy_all
    Interaction.destroy_all
    Item.destroy_all
    User.destroy_all
  end

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
    p "#{User.count} users have been created"

  end

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
  p "#{Category.count} categories have been created"
  end


  p "#{Item.count} items have been created"


  p "#{Interaction.count} interactions have been created"

end