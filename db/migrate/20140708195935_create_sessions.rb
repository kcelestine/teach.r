class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
			t.belongs_to :course
			t.string :name
			t.datetime :date
			t.integer :session_num
    end
  end
end
