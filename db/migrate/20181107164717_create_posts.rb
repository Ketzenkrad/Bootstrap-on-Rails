class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      #для названий
      t.string :title
      #для контента;
      t.text :body
      #стандартный параметр
      t.timestamps
    end
  end
end
