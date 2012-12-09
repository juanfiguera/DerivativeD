class CreateLinkedinTransitions < ActiveRecord::Migration
  def change
    create_table :linkedin_transitions do |t|
      t.integer :profile_id
      t.integer :from_company_id
      t.string :from_company_name
      t.string :from_company_position
      t.integer :from_company_industry
      t.integer :to_company_id
      t.string :to_company_name
      t.string :to_company_position
      t.integer :to_company_industry
      t.date :joined_date

      t.timestamps
    end
  end
end
