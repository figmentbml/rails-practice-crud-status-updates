class CreateStatusUpdates < ActiveRecord::Migration
  def change
    create_table :statusupdate do |t|
      t.text :status
      t.string :user
      t.integer :number_of_likes
    end
  end
end
