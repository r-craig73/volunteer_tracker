class Project

attr_reader(:id, :title, :project_id)
attr_accessor(:name)

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
    @project_id = attributes.fetch(:project_id)
    @name = attributes.fetch(:name)
  end

  def ==(another)
    self.title().==(another.title())
  end

  def self.all


  end




end
