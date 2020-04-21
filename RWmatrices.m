uSorted = sortrows(u, [1 2]);
newRatings = [];

for i=1:943;
    clear userSum;
    clear size;

    userID = (uSorted.user_id == i);
    userRatings = (uSorted.rating(userID));
    userSum = sum(sum(userRatings));
    userRatingsNumber = size(userRatings,1);
    mean = userSum/userRatingsNumber;
    modifiedRating = userRatings - mean;
    newRatings = [newRatings; modifiedRating];
end

newRatingsSorted = sortrows(newRatings, 'ascend');
uCentered = [uSorted.user_id, uSorted.item_id, newRatings];
