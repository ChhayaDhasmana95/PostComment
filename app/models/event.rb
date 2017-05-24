class Event < ApplicationRecord
  belongs_to :employee


  validate :manager
	def manager
		e_rec=Employee.where(id: employee_id)
		i_man=e_rec[0].role
		if i_man != "manager"
			errors.add(error: "Action denied! you can't create event ")
		end
	end
end
