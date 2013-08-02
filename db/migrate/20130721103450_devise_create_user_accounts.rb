class DeviseCreateUserAccounts < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table(:user_accounts, id: :uuid) do |t|
      t.string      :uid, null: false, default: ''
      t.string      :provider, null: false, default: ''
      t.string      :email, null: false, default: ''
      t.datetime    :remember_created_at
      t.integer     :sign_in_count, :default => 0
      t.datetime    :current_sign_in_at
      t.datetime    :last_sign_in_at
      t.string      :current_sign_in_ip
      t.string      :last_sign_in_ip
      t.uuid        :user_id
      t.timestamps
    end

    add_index :user_accounts, :email, unique: true
    add_index :user_accounts, [:uid, :provider], unique: true
  end
end
