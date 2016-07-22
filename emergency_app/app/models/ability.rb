class Ability
  include CanCan::Ability

  def initialize(user)
    include CanCan::Ability
    # def initialize(user)
  end
end
