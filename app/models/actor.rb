class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.map{|c| "#{c.name} - #{c.show.name}"}
    # actor = Actor.new(:first_name, :last_name)
    # character = Character.new(:name)
    # show = Show.new(:name)
    # characters.show = show
    # characters.save
  end
end