class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
