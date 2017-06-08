class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.integer :space_id
      t.integer :user_id

      t.timestamps

    end
  end
end
