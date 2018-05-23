class ResourcePolicy < Struct.new(:user, :resource)

def level_1?
  user.access_level == 1
end
def level_2?
  user.access_level == 2
  user.access_level == 3
  user.access_level == 4
end
def level_5?
  user.access_level == 5
end
end
