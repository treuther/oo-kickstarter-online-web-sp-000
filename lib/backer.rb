class Backer
  attr_reader :name, :backed_projects
  attr_accessor :project
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
  
end