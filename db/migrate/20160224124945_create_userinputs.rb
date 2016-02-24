class CreateUserinputs < ActiveRecord::Migration
  def change
    create_table :userinputs do |t|
      t.string :location1
      t.string :location2
      t.string :location3

      t.timestamps null: false
    end
  end
end
