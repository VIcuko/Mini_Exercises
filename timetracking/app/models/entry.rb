class Entry < ActiveRecord::Base
	validates :hours, numericality: true
	validates :minutes, numericality: {only_integer: true, greater_than: 0}
	validates :date, :hours, :minute, presence: true
	validates :project_id, presence: true

	belongs_to :project
end
