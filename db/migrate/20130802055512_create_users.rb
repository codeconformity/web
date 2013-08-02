class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.string :nickname, null: false, default: ''
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, default: ''
      t.string :avatar_url
    end

    add_index :users, :email, unique: true
    add_index :users, :nickname, unique: true
  end
end
