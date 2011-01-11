class CreateRolesUsers < ActiveRecord::Migration
  def self.up
      create_table :roles_users, :id => false do |t|
        t.references :role
        t.references :user
      end
    add_index :roles_users, [ :role_id, :user_id ], :unique => true
  end

  def self.down
    drop_table :roles_users
  end
end
