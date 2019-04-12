json.array! @list_users.each do |list_user|
  json.id list_user.id
  json.list_id  list_user.list_id
  json.user_id  list_user.user_id
end
  