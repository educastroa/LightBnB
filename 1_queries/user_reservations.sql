SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating, users.email
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
join users ON users.id = property_reviews.guest_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id, users.email
ORDER BY reservations.start_date
LIMIT 10;