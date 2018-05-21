class CreateSchoolClassesTable < ActiveRecord::Migration
  def change
    create_table :school_classes_tables do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
