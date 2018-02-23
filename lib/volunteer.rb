class Volunteer

attr_reader(:id, :name)
attr_accessor(:project_id)

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
  end

  def self.all


  end


end
