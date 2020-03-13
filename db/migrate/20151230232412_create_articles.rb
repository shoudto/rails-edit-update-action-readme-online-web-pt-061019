class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t| # creating an article table 
      t.string :title             # creating attributes title and description
      t.text :description

      t.timestamps null: false 
    end
  end
end
