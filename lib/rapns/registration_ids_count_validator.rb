module Rapns
  class RegistrationIdsCountValidator < ActiveModel::Validator
    def validate(record)
      limit = options[:limit] || 100
      if record.registration_ids && record.registration_ids.size > limit
        record.errors[:base] << "Number of registration_ids cannot be larger than #{limit}."
      end
    end
  end
end
