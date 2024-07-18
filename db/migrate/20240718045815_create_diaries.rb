class CreateDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
