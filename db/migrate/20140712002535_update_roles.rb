class UpdateRoles < ActiveRecord::Migration
  def self.up
    User.connection.execute("UPDATE users SET role = type;")
  end

  def self.down
  end
end
