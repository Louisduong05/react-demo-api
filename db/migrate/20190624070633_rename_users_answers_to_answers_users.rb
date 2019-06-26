class RenameUsersAnswersToAnswersUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :users_answers, :answers_users
  end
end
