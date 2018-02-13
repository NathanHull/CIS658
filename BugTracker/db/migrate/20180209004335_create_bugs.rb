class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.integer :issue_type, default: :feature
      t.integer :priority, default: :medium
      t.integer :status, default: :open

      t.timestamps

      after_initialize do
          if self.new_record?
              self.issue_type = :feature
              self.priority = :medium
              self.status = :open
      end
    end
  end
end
