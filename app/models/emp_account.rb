class EmpAccount < ApplicationRecord
  belongs_to :employee
  has_one :emp_account_history
end
