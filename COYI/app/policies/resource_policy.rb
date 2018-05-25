class ResourcePolicy < Struct.new(:user, :resource)


def user_present?
   !user.present?
end

def level_1?
  user.present? &&
  user.access_level == 1
end
def level_2?
  if user.present?
  user.access_level == 2 ||
  user.access_level == 3 ||
  user.access_level == 4
  end
end
def level_5?
  user.present? &&
  user.access_level == 5
end

end
