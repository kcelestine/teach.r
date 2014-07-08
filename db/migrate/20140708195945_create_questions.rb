class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :session
			t.boolean :pending
			t.string :question
			t.text :answer
    end
  end
end
