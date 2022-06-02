# README

This application is a todo list that keeps tracks of items and marks them as complete when done. 


* Database creation

  Table name: items
        #  id                 :bigint           not null, primary key
        #  completed          :boolean          default(FALSE)
        #  description        :text
        #  due_date           :datetime
        #  interactions_count :integer          default(0)
        #  priority           :string           default("Normal")
        #  created_at         :datetime         not null
        #  updated_at         :datetime         not null
        #  category_id        :bigint           not null
        #  owner_id           :bigint           not null
        
 Table name: categories

        #  id          :bigint           not null, primary key
        #  items_count :integer          default(0)
        #  title       :string
        #  created_at  :datetime         not null
        #  updated_at  :datetime         not null
        
 Table name: interactions

        #  id         :bigint           not null, primary key
        #  created_at :datetime         not null
        #  updated_at :datetime         not null
        #  item_id    :bigint           not null
        #  user_id    :bigint           not null
        
Table name: users

        #  id                     :bigint           not null, primary key
        #  email                  :string           default(""), not null
        #  encrypted_password     :string           default(""), not null
        #  items_count            :integer          default(0)
        #  private                :boolean
        #  remember_created_at    :datetime
        #  reset_password_sent_at :datetime
        #  reset_password_token   :string
        #  tasks_count            :integer          default(0)
        #  username               :citext
        #  created_at             :datetime         not null
        #  updated_at             :datetime         not null

