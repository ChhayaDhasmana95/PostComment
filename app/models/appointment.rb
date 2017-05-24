class Appointment < ApplicationRecord
	belongs_to :doctor
	belongs_to :patient
	validate :check
	def check
		p_inf=Patient.where(id: patient_id)
		is_doc=p_inf[0].role
		if is_doc
			d_inf=Doctor.where(id: doctor_id)
			doc_id=d_inf[0].udid
			pat_id=p_inf[0].upid
			if  doc_id == pat_id
				errors.add(error:"Doctor and Patient can be same person")
            end
        end
	end
end
