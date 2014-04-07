class Car < ActiveRecord::Base
  extend Enumerize
  STATUSES = { new: 1, used: 2, broken: 3 }

  hstore_accessor :data,
    status: :integer

  enumerize :status, in: STATUSES, default: :new
end
