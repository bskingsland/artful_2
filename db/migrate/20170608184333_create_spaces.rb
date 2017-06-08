class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :classification
      t.string :url
      t.string :photograph
      t.string :city
      t.string :neighborhood
      t.string :visit_status

      t.timestamps

    end
  end
end
