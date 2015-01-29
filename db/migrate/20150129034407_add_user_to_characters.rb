class AddUserToCharacters < ActiveRecord::Migration
  def change
  	change_table :characters do |t|
      t.references :user, index: true
    end
  end
end
