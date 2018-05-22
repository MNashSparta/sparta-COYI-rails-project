class ResourcePolicy < Struct.new(:user, :resource)

def level_2?
  user.access_level == 2
end
end
