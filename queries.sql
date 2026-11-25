-- 1. Full profile
SELECT * FROM profile;

-- 2. Movies ordered by rank
SELECT title, release_year FROM movie ORDER BY my_rank;

-- 3. Movies released after 2010
SELECT title FROM movie WHERE release_year > 2010;

-- 4. Profile name with hobbies
SELECT profile.full_name, hobby.hobby_name
FROM profile
JOIN hobby ON hobby.profile_id = profile.profile_id
ORDER BY hobby.hobby_id;

-- 5. Enquiry count per profile, including profiles with no enquiries
SELECT profile.full_name, COUNT(enquiry.enquiry_id) AS enquiry_count
FROM profile
LEFT JOIN enquiry ON enquiry.profile_id = profile.profile_id
GROUP BY profile.profile_id, profile.full_name
ORDER BY profile.profile_id;
