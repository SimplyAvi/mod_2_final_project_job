class CreateHirings < ActiveRecord::Migration[5.2]
  def change
    create_table :hirings do |t|
      t.string :job_title
      t.string :job_field
      t.string :seniority
      t.string :job_position
      t.string :job_key_skill
      t.string :job_employment_type
      t.string :job_education_level
      t.integer :company_id
      t.timestamps
    end
  end
end
