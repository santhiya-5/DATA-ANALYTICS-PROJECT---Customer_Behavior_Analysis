USE customer_behavior;

SELECT
    gender,
SUM(purchase_amount) AS revenue
FROM customer_shopping_behavior
GROUP BY gender;

SELECT customer_id, purchase_amount
FROM customer_shopping_behavior
WHERE discount_applied = 'yes'
  AND purchase_amount >= (
      SELECT AVG(purchase_amount)
      FROM customer_shopping_behavior);

SELECT item_purchased, ROUND(AVG(review_rating),2) as "Average Product Rating"
FROM customer_shopping_behavior
GROUP BY item_purchased
ORDER BY AVG(review_rating) desc
LIMIT 5;

 