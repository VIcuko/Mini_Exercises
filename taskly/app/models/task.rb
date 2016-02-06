class Task < ActiveRecord::Base
	belongs_to :user

	def complete!
		self.completed = true
		self
	end

	def as_json(options={})
	  super(only: [:name,:due_date],
	    methods: [:tasks_count],
	    include: [tasks:  { only: :name }])
	end

	def task_name
	  self.name
	end

	def task_name
	  self.name
	end

end
