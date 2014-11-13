class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :status
      t.string :user
      t.integer :number_of_likes
    end
  end
end
