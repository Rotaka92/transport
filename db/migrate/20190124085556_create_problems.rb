class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.float :ofv

      t.timestamps
    end
  end
end
