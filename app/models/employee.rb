class Employee < ApplicationRecord
  has_one :emp_account, dependent: :destroy
  # has_one :emp_account_history, :through => :emp_account
  has_one :emp_account_history, through: :emp_account
end
