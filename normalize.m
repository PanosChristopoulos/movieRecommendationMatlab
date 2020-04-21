newRatingsNormalized = normalize(newRatings, 'range');

uNormalized = [user_id, item_id, newRatingsNormalized];

user_id = uNormalized(:, 1);
item_id = uNormalized(:, 2);
rating = uNormalized(:, 3);


RNormalized = zeros(943,1682);
WNormalized = zeros(943,1682);

for i=1:100000
     RNormalized(user_id(i), item_id(i)) = rating(i);
     WNormalized(user_id(i), item_id(i)) =1;
end
