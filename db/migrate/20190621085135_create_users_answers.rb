class CreateUsersAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :users_answers do |t|
      t.belongs_to :answer
      t.belongs_to :user
    end
  end
end
