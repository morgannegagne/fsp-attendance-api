class CreateSignins < ActiveRecord::Migration[5.1]
  def change
    create_table :signins do |t|
      t.date :date
      t.time :time
      t.integer :user_id
    end
  end
end
