class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :player
      t.string :team
      t.integer :points
      t.decimal :cost
      t.string :position

      t.timestamps
    end
  end
end
