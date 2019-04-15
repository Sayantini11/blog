class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.text :body
    	t.integer :category_id
    	t.string :feature_image_url
    	t.boolean :is_published


      t.timestamps
      t.datetime :publish_date
    end
  end
end
