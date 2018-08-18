
class Project < ActiveRecord::Base
    belongs_to :portfolio
    has_one    :project_manager
    has_many   :milestones
end