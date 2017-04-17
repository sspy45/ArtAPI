class ChangeUserTable < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :name, :email
      t.string :username, null: false
    end

    add_index :users, unique: true
  end
end
