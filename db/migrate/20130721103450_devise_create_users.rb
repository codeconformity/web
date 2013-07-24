class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :uid, null: false, default: ''
      t.string :provider, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :nickname, null: false, default: ''
      t.string :first_name
      t.string :last_name
      t.string :avatar_url
      t.datetime :remember_created_at
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.timestamps
    end

    add_index :users, :email, :unique => true
    add_index :users, :nickname, :unique => true
    add_index :users, [:uid, :provider], :unique => true
  end
end
