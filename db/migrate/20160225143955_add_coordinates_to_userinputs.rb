class AddCoordinatesToUserinputs < ActiveRecord::Migration
  def change
    add_column :userinputs, :latitude1, :float
    add_column :userinputs, :longitude1, :float
    add_column :userinputs, :latitude2, :float
    add_column :userinputs, :longitude2, :float
    add_column :userinputs, :latitude3, :float
    add_column :userinputs, :longitude3, :float
  end
end
