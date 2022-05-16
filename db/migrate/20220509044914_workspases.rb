class Workspases < ActiveRecord::Migration[5.2]
  def change
    create_table :work_spaces do |t|
      t.belongs_to :user
      t.string   :name
    end
  end
end
