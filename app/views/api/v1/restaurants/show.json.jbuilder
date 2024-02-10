
json.extract! @restaurant, :id, :name, :address, :user_id
json.extract! @restaurant.user, :email
json.comments @restaurant.comments do |comment|
    json.extract! comment, :id, :content
    json.extract! comment.user, :email
end