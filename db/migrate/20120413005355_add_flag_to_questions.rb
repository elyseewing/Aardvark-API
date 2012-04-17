class AddFlagToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :flag, :integer
    add_column :questions, :flag_text, :string
  end

  def self.down
    remove_column :questions, :flag
    remove_column :questions, :flag_text
  end
end
