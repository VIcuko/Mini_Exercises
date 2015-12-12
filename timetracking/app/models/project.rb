class Project < ActiveRecord::Base
	validates :name, uniqueness: true
	validates :name, presence: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /[a-zA-Z0-9_ ]*/ }

	has_many :entries

	def self.iron_find (id)
		where(id: id).first
	end

	def self.clean_old
		date=Time.now.midnight - 1.week
		projects=where("created_at<?",date)
		projects.destroy_all
	end

	def self.last_created_projects(n)
		limit(n).order("created_at DESC")
	end

	def how_many_hours
		time=entries.reduce(0) do |sum,x|
			sum+x.hours.to_f+((x.minutes.to_f)/60).round(2)
		end
		binding.pry
		time.round(2)
	end
	def how_many_hours_this_month(month,year)
		time=entries.reduce(0) do |sum,entry|
			sum+entry.hours.to_f+((entry.minutes.to_f)/60).round(2) if entry.created_at.month==month && entry.created_at.year==year
		end
		time.round(2)
	end
	def entries_this_month(month,year)
		entries.where(created_at: Date.new(year,month,1)..Date.new(year,month,-1))
		# self.entries.each do |entry|
		# 	entry.
		# end
	end
	def how_many_hours_Quino(filtered_entries)
		entries_to_search = filtered_entries
		hours = entries_to_search.sum(:hours)
		minutes = entries_to_search.sum(:minutes)
		hours += minutes/60
	end

	def entries_this_month_Quino(month, year)
		date=Date.new(year,month)
		filtered_entries = entries.where(date: date.all_month)
	end
	def total_hours_this_month_Quino(month, year)
		how_many_hours_Quino(entries.entries_this_month_Quino(month, year))
	end
end
