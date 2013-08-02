class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.string :nickname, null: false, default: ''
      t.string :first_name
      t.string :last_name
      t.string :avatar_url
    end

    add_index :users, :nickname, unique: true
  end
end
