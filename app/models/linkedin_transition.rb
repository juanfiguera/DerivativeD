class LinkedinTransition < ActiveRecord::Base
  attr_accessible :from_company_id, :from_company_industry, :from_company_name, :from_company_position, :joined_date, :profile_id, :to_company_id, :to_company_industry, :to_company_name, :to_company_position
end
