SELECT * FROM salesanalysis.`dataset for data analytics - sheet1`;
DESCRIBE `dataset for data analytics - sheet1`;
## Total Number of Orders
SELECT COUNT(*) AS TotalOrders
FROM `dataset for data analytics - sheet1`;
# Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM `dataset for data analytics - sheet1`;
# Average Order Value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM `dataset for data analytics - sheet1`;
# Highest Order Value
SELECT MAX(TotalPrice) AS HighestOrder
FROM `dataset for data analytics - sheet1`;
# Lowest Order values
SELECT MIN(TotalPrice) AS LowestOrder
FROM `dataset for data analytics - sheet1`;
# Order By Payment Method
SELECT PaymentMethod,
       COUNT(*) AS TotalOrders
FROM `dataset for data analytics - sheet1`
GROUP BY PaymentMethod
ORDER BY TotalOrders DESC;
# Order by Status
SELECT OrderStatus,
       COUNT(*) AS TotalOrders
FROM `dataset for data analytics - sheet1`
GROUP BY OrderStatus
ORDER BY TotalOrders DESC;
# Top 10 Products Sold
SELECT Product,
       SUM(Quantity) AS QuantitySold
FROM `dataset for data analytics - sheet1`
GROUP BY Product
ORDER BY QuantitySold DESC
LIMIT 10;
# Revenue by Product
SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM `dataset for data analytics - sheet1`
GROUP BY Product
ORDER BY Revenue DESC;
# Referral Source Performance
SELECT ReferralSource,
       COUNT(*) AS Orders,
       SUM(TotalPrice) AS Revenue
FROM `dataset for data analytics - sheet1`
GROUP BY ReferralSource
ORDER BY Revenue DESC;
# Coupon Usage Analysis
SELECT CouponCode,
       COUNT(*) AS UsageCount
FROM `dataset for data analytics - sheet1`
WHERE CouponCode IS NOT NULL
AND CouponCode <> ''
GROUP BY CouponCode
ORDER BY UsageCount DESC;
# Top Customers
SELECT CustomerID,
       SUM(TotalPrice) AS TotalSpent
FROM `dataset for data analytics - sheet1`
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;
# Missing Tracking Numbers
SELECT COUNT(*) AS MissingTrackingNumbers
FROM `dataset for data analytics - sheet1`
WHERE TrackingNumber IS NULL
OR TrackingNumber = '';