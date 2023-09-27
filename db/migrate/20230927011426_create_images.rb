class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :title
      t.integer :year
      t.string :director

      t.timestamps
    end
  end
end
