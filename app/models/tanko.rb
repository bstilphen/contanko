class Tanko < ActiveRecord::Base

validates :service_name, presence: true,
                    length: { minimum: 5 }

end
