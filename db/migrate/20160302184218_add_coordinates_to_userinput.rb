class AddCoordinatesToUserinput < ActiveRecord::Migration
  def change
    add_column :userinputs, :latitude, :float
    add_column :userinputs, :longitude, :float
  end
end
