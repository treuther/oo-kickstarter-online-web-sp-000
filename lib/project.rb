class Project
  attr_reader :title, :backers
  attr_accessor :project
  
  def initialize(title)
    @title = title
    @project = Project.new(title)
    @backers = []
  end
  
end