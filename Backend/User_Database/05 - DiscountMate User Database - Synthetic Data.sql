INSERT INTO ProductCategory (CategoryID, CategoryName) VALUES
(71408236, 'Fresh Fruits'),
(93415762, 'Vegetables'),
(47526193, 'Bakery'),
(65137924, 'Meat and Poultry'),
(28513497, 'Dairy'),
(82654931, 'Canned Goods'),
(93871625, 'Frozen Foods'),
(37495681, 'Beverages'),
(84567319, 'Snacks'),
(91827364, 'Condiments and Spices'),
(58347129, 'Seafood'),
(16578943, 'Grains and Pasta'),
(27956418, 'Sweets and Chocolate'),
(34769182, 'Health Foods'),
(64178295, 'Deli'),
(87325914, 'International Foods'),
(71294683, 'Breakfast Foods'),
(69278134, 'Baking Essentials'),
(35871924, 'Pet Supplies'),
(98457312, 'Household Items');


INSERT INTO Product 
(ProductID, ProductName, ProductDescription, ProductUnit, ProductSize, ProductImage, ProductNutrition, ProductIngredients, ProductBarcode, ProductCategory_CategoryID)
VALUES
(18345678, 'Whole Wheat Bread', 'Organic and whole grain', 120, '1 loaf', NULL, 'High in fiber', 'Wheat, Yeast, Salt', 9876543212345, 71408236),
(27456381, 'Almond Milk', 'Unsweetened vanilla', 200, '1L', NULL, 'Dairy-free, 30cal', 'Almonds, Water, Salt', 1234567890123, 93415762),
(36578290, 'Oatmeal', 'Rich in fiber and iron', 150, '500g', NULL, 'Low fat', 'Oats', 2345678901234, 47526193),
(45367829, 'Organic Eggs', 'Free-range eggs', 250, '12 pcs', NULL, 'High protein', 'Eggs', 3456789012345, 65137924),
(56789012, 'Greek Yogurt', 'Low-fat yogurt', 180, '200g', NULL, 'Rich in probiotics', 'Milk, Live cultures', 4567890123456, 28513497),
(67891234, 'Olive Oil', 'Extra virgin olive oil', 90, '500ml', NULL, 'Good fats', '100% Olive Oil', 5678901234567, 82654931),
(78901234, 'Mixed Nuts', 'Salted nuts variety pack', 130, '200g', NULL, 'Protein source', 'Almonds, Cashews, Walnuts', 6789012345678, 93871625),
(89012345, 'Cheddar Cheese', 'Aged cheddar', 110, '250g', NULL, 'Calcium-rich', 'Milk, Salt, Enzymes', 7890123456789, 37495681),
(90123456, 'Apples', 'Fresh green apples', 300, '1kg', NULL, 'Vitamin C', 'Apples', 8901234567890, 84567319),
(11234567, 'Tomato Sauce', 'Organic, no added sugar', 150, '500ml', NULL, 'Low calories', 'Tomatoes, Salt, Herbs', 9012345678901, 91827364),
(12345679, 'Brown Rice', 'Whole grain', 200, '1kg', NULL, 'High in fiber', 'Brown Rice', 123456789012, 58347129),
(23456780, 'Spinach', 'Organic baby spinach', 190, '300g', NULL, 'Iron-rich', 'Spinach', 1234567890124, 16578943),
(34567891, 'Tofu', 'Firm and high in protein', 170, '400g', NULL, 'Protein-rich, low fat', 'Soybeans, Water, Firming Agents', 2345678901235, 27956418),
(45678901, 'Herbal Tea', 'Chamomile relaxant tea', 120, '20 bags', NULL, 'Caffeine-free', 'Chamomile Flowers', 3456789012346, 34769182),
(56789012, 'Honey', 'Raw and unfiltered', 130, '300g', NULL, 'Natural sweetener', 'Honey', 4567890123457, 64178295),
(67890123, 'Quinoa', 'Gluten-free superfood', 85, '500g', NULL, 'Complete protein', 'Quinoa', 5678901234568, 87325914),
(78901234, 'Avocados', 'Ripe and ready to eat', 220, '4 pcs', NULL, 'Healthy fats', 'Avocados', 6789012345679, 71294683),
(89012345, 'Chicken Breasts', 'Skinless and boneless', 250, '1kg', NULL, 'Lean protein', 'Chicken', 7890123456780, 69278134),
(90123456, 'Dark Chocolate', '70% cocoa solids', 140, '150g', NULL, 'Antioxidants', 'Cocoa, Sugar, Cocoa Butter', 8901234567891, 35871924),
(1234567, 'Orange Juice', 'Freshly squeezed', 160, '1L', NULL, 'Vitamin C rich', 'Oranges', 9012345678902, 98457312);

INSERT INTO Prices (PricesID, CurrentPrice, CurrentDiscountRate, CurrentDiscountPrice, PriceDate, Product_ProductID)
VALUES
(13674588, 14.76, 0.28, 10.63, '2024-05-15 14:20:00', 18345678),
(87541236, 8.12, 0.10, 7.31, '2024-05-18 08:42:00', 27456381),
(23478569, 5.98, 0.45, 3.29, '2024-05-10 17:34:00', 36578290),
(97856423, 3.50, 0.25, 2.63, '2024-05-17 23:58:00', 45367829),
(65478293, 11.56, 0.40, 6.94, '2024-05-12 06:15:00', 56789012),
(45789632, 7.84, 0.05, 7.45, '2024-05-18 12:12:00', 67891234),
(98653247, 9.44, 0.20, 7.55, '2024-05-16 01:01:00', 78901234),
(56473829, 12.56, 0.30, 8.79, '2024-05-20 15:45:00', 89012345),
(45987652, 2.76, 0.15, 2.35, '2024-05-11 20:20:00', 90123456),
(78549321, 14.32, 0.50, 7.16, '2024-05-14 07:07:00', 11234567),
(12563478, 6.45, 0.25, 4.84, '2024-05-19 19:19:00', 12345679),
(98765234, 10.85, 0.12, 9.55, '2024-05-13 13:13:00', 23456780),
(34785624, 4.96, 0.33, 3.32, '2024-05-10 10:10:00', 34567891),
(96857432, 13.79, 0.10, 12.41, '2024-05-09 09:09:00', 45678901),
(23548796, 3.20, 0.05, 3.04, '2024-05-08 08:08:00', 56789012),
(85796432, 12.24, 0.45, 6.73, '2024-05-17 17:17:00', 67890123),
(54673982, 11.15, 0.35, 7.25, '2024-05-06 16:16:00', 78901234),
(67985432, 9.68, 0.50, 4.84, '2024-05-05 05:05:00', 89012345),
(46875239, 7.29, 0.22, 5.68, '2024-05-04 04:04:00', 90123456),
(39765482, 5.42, 0.15, 4.61, '2024-05-03 03:03:00', 1234567);

INSERT INTO UserDetails (UserID, UserName, UserEmail, UserPasswordHash, UserPasswordSalt, UserPhone, UserAddress, UserGPS) VALUES
(12345678, 'John Doe', 'john.doe@example.com', 'hash1', 'salt1', '61-205-121-456', '16 Flinders St, Melbourne VIC', '-37.814, 144.96332'),
(23456789, 'Jane Smith', 'jane.smith@example.com', 'hash2', 'salt2', '61-430-293-457', '200 George St, Sydney NSW', '-33.8688, 151.2093'),
(34567890, 'Alice Johnson', 'alice.johnson@example.com', 'hash3', 'salt3', '61-200-923-458', '53 Adelaide St, Brisbane QLD', '-27.4698, 153.0251'),
(45678901, 'Bob Brown', 'bob.brown@example.com', 'hash4', 'salt4', '61-110-103-459', '9 King William St, Adelaide SA', '-34.9285, 138.6007'),
(56789012, 'Carol White', 'carol.white@example.com', 'hash5', 'salt5', '61-665-623-460', '66 St Georges Tce, Perth WA', '-31.9505, 115.8605'),
(67890123, 'David Wilson', 'david.wilson@example.com', 'hash6', 'salt6', '61-400-123-461', '40 Collins St, Melbourne VIC', '-37.8136, 144.9631'),
(78901234, 'Eva Moore', 'eva.moore@example.com', 'hash7', 'salt7', '61-900-323-462', '7 Queen St, Brisbane QLD', '-27.4705, 153.0260'),
(89012345, 'Frank Clark', 'frank.clark@example.com', 'hash8', 'salt8', '61-308-003-463', '84 Hay St, Perth WA', '-31.9523, 115.8613'),
(90123456, 'Grace Lewis', 'grace.lewis@example.com', 'hash9', 'salt9', '61-000-955-764', '93 Pitt St, Sydney NSW', '-33.8675, 151.2070'),
(91234567, 'Henry Turner', 'henry.turner@example.com', 'hash10', 'salt10', '61-040-113-465', '10 North Tce, Adelaide SA', '-34.9212, 138.6041'),
(92345678, 'Irene Watson', 'irene.watson@example.com', 'hash11', 'salt11', '61-503-394-466', '110 Murray St, Perth WA', '-31.9535, 115.8575'),
(93456789, 'Jake Harper', 'jake.harper@example.com', 'hash12', 'salt12', '61-377-449-667', '43 Elizabeth St, Melbourne VIC', '-37.8096, 144.9629'),
(94567890, 'Laura Bennett', 'laura.bennett@example.com', 'hash13', 'salt13', '61-220-123-468', '6 Edward St, Brisbane QLD', '-27.4679, 153.0283'),
(95678901, 'Mike Anderson', 'mike.anderson@example.com', 'hash14', 'salt14', '61-008-123-569', '12 King St, Sydney NSW', '-33.8682, 151.2093'),
(96789012, 'Nora Charles', 'nora.charles@example.com', 'hash15', 'salt15', '61-950-120-470', '15 William St, Perth WA', '-31.9527, 115.8607'),
(97890123, 'Oscar Newman', 'oscar.newman@example.com', 'hash16', 'salt16', '61-400-123-333', '100 Collins St, Melbourne VIC', '-37.8152, 144.9632'),
(98901234, 'Paula Ivanov', 'paula.ivanov@example.com', 'hash17', 'salt17', '61-990-123-884', '170 Adelaide St, Perth WA', '-27.4668, 153.0265'),
(97190123, 'Cat Newton', 'cat.newton@example.com', 'hash18', 'salt18', '61-060-664-673', '2 Stones St, Melbourne VIC', '-34.9289, 138.6011'),
(99901234, 'Perry Thompson', 'paula.thompson@example.com', 'hash19', 'salt19', '61-570-123-974', '33 Bourke Rd, Brisbane QLD', '-31.9504, 115.8603'),
(95901234, 'Pam Lawson', 'pam.lawson@example.com', 'hash20', 'salt20', '61-330-594-075', '8 Stand St, Melbourne VIC', '-33.8679, 151.2073');

INSERT INTO UserOrder (OrderID, OrderTotal, OrderTotalDiscount, UserDetails_UserID)
VALUES
(23567489, 549.23, 45.5, 12345678),
(17546937, 200, 15.2, 23456789),
(68957641, 800.75, 50, 34567890),
(98567214, 620.4, 62.04, 45678901),
(45218796, 300.2, 15.01, 56789012),
(23716895, 150.55, 7.53, 67890123),
(76451236, 950.3, 95.03, 78901234),
(68921547, 400.1, 40.01, 89012345),
(13256984, 500.25, 35.01, 90123456),
(47621385, 210.55, 10.53, 91234567),
(58216473, 350.45, 17.52, 92345678),
(95367241, 700.95, 40.05, 93456789),
(12654987, 450, 22.5, 94567890),
(73245961, 494.2, 34.1, 95678901),
(24517689, 750.25, 37.51, 96789012),
(58796432, 250.7, 25.07, 97890123),
(41683927, 650.8, 32.54, 98901234),
(73516284, 550.6, 27.53, 97190123),
(86429751, 720.4, 47.52, 99901234),
(93265781, 890.9, 85.09, 95901234);

INSERT INTO UserCart (UserCartID, UserDetails_UserID, UserOrder_OrderID)
VALUES 
(49108891, 12345678, 23567489),
(98881853, 23456789, 17546937),
(44840326, 34567890, 68957641),
(24000591, 45678901, 98567214),
(94180401, 56789012, 45218796),
(67495031, 67890123, 23716895),
(65689180, 78901234, 76451236),
(75742747, 89012345, 68921547),
(85467459, 90123456, 13256984),
(29531440, 91234567, 47621385),
(95770921, 92345678, 58216473),
(44546579, 93456789, 95367241),
(85503725, 94567890, 12654987),
(82997405, 95678901, 73245961),
(62983165, 96789012, 24517689),
(73060831, 97890123, 58796432),
(89032784, 98901234, 41683927),
(41743463, 97190123, 73516284),
(57870072, 99901234, 86429751),
(64444552, 95901234, 93265781);

INSERT INTO UserReviews (ReviewID, Rating, ReviewComment, Date, UserDetails_UserID, Product_ProductID)
VALUES 
(12345678, 3, 'Good product, average service.', '2023-05-19 12:00', 12345678, 18345678),
(23456789, 5, 'Excellent, loved it!', '2023-05-18 14:35', 23456789, 27456381),
(34567890, 4, 'Very good, but pricey.', '2023-05-17 16:20', 34567890, 36578290),
(45678901, 2, 'Below expectations.', '2023-05-16 13:45', 45678901, 45367829),
(56789012, 1, 'Poor quality, would not recommend.', '2023-05-15 11:10', 56789012, 56789012),
(67890123, 3, 'Average, okay for the price.', '2023-05-14 09:55', 67890123, 67891234),
(78901234, 5, 'Outstanding service!', '2023-05-13 08:40', 78901234, 78901234),
(89012345, 4, 'Good quality, fast shipping.', '2023-05-12 07:25', 89012345, 89012345),
(90123456, 2, 'Could be better.', '2023-05-11 06:15', 90123456, 90123456),
(1234567, 1, 'Not worth the money.', '2023-05-10 05:05', 91234567, 11234567),
(11234567, 3, 'Its okay, not great.', '2023-05-09 04:50', 92345678, 12345679),
(21234567, 4, 'Good experience overall.', '2023-05-08 03:30', 93456789, 23456780),
(31234567, 5, 'Perfect product!', '2023-05-07 02:20', 94567890, 34567891),
(41234567, 3, 'Meets expectations.', '2023-05-06 01:10', 95678901, 45678901),
(51234567, 2, 'Somewhat disappointed.', '2023-05-05 00:00', 96789012, 56789012),
(61234567, 1, 'Very poor quality.', '2023-05-04 23:50', 97890123, 67890123),
(71234567, 5, 'Best purchase ever!', '2023-05-03 22:40', 98901234, 78901234),
(81234567, 4, 'Really good, happy with it.', '2023-05-02 21:30', 97190123, 89012345),
(91234567, 2, 'Less than expected.', '2023-05-01 20:20', 99901234, 90123456),
(1345678, 4, 'Nice product!', '2023-04-30 19:10', 95901234, 1234567);

INSERT INTO UserCart_has_Product (UserCart_UserCartID, UserCart_UserOrder_OrderID, UserCart_UserDetails_UserID, Product_ProductID) VALUES
(49108891, 23567489, 12345678, 18345678),
(98881853, 17546937, 23456789, 27456381),
(44840326, 68957641, 34567890, 36578290),
(24000591, 98567214, 45678901, 45367829),
(94180401, 45218796, 56789012, 56789012),
(67495031, 23716895, 67890123, 67891234),
(65689180, 76451236, 78901234, 78901234),
(75742747, 68921547, 89012345, 89012345),
(85467459, 13256984, 90123456, 90123456),
(29531440, 47621385, 91234567, 11234567),
(95770921, 58216473, 92345678, 12345679),
(44546579, 95367241, 93456789, 23456780),
(85503725, 12654987, 94567890, 34567891),
(82997405, 73245961, 95678901, 45678901),
(62983165, 24517689, 96789012, 56789012),
(73060831, 58796432, 97890123, 67890123),
(89032784, 41683927, 98901234, 78901234),
(41743463, 73516284, 97190123, 89012345),
(57870072, 86429751, 99901234, 90123456),
(64444552, 93265781, 95901234, 1234567);

INSERT INTO ItemRecommendation (ItemRecommendationID, Product_ProductID, UserDetails_UserID) VALUES
('1A2B3C4D5E6F', 18345678, 12345678),
('7G8H9I0J1K2L', 27456381, 23456789),
('M3N4O5P6Q7R8', 36578290, 34567890),
('S9T0U1V2W3X4', 45367829, 45678901),
('Y5Z6A7B8C9D0', 56789012, 56789012),
('E1F2G3H4I5J6', 67891234, 67890123),
('K7L8M9N0O1P2', 78901234, 78901234),
('Q3R4S5T6U7V8', 89012345, 89012345),
('W9X0Y1Z2A3B4', 90123456, 90123456),
('C5D6E7F8G9H0', 11234567, 91234567),
('I1J2K3L4M5N6', 12345679, 92345678),
('O7P8Q9R0S1T2', 23456780, 93456789),
('U3V4W5X6Y7Z8', 34567891, 94567890),
('A9B0C1D2E3F4', 45678901, 95678901),
('G5H6I7J8K9L0', 56789012, 96789012),
('M1N2O3P4Q5R6', 67890123, 97890123),
('S7T8U9V0W1X2', 78901234, 98901234),
('Y3Z4A5B6C7D8', 89012345, 97190123),
('E9F0G1H2I3J4', 90123456, 99901234),
('K5L6M7N8O9P0', 1234567, 95901234);

INSERT INTO Retailer (RetailerID, RetailerName, RetailerWebsite)
VALUES
    (10234567, 'Coles', 'www.coles.com.au'),
    (20987654, 'Woolworths', 'www.woolworths.com.au'),
    (30765432, 'Aldi', 'www.aldi.com.au'),
    (40567890, 'IGA', 'www.iga.com.au'),
    (51234567, 'Costco Wholesale', 'www.costco.com.au'),
    (67891234, 'FoodWorks', 'www.foodworks.com.au'),
    (78902345, 'Foodland', 'www.foodlandsa.com.au'),
    (89013456, 'Harris Farm Markets', 'www.harrisfarm.com.au'),
    (90124567, 'Drakes', 'www.drakes.com.au'),
    (12345678, 'Friendly Grocer', 'www.friendlygrocer.com.au');

INSERT INTO StoreLocation (StoreID, Address, StoreGPS, StoreName, Retailer_RetailerID) VALUES
(15263478, '25 Smith St, Darwin NT 0800', '-12.4628, 130.841', 'Coles', 10234567),
(42698571, '102 George St, Sydney NSW 2000', '-33.8675, 151.207', 'Woolworths', 20987654),
(58369042, '38 Adelaide St, Brisbane QLD 4000', '-27.4679, 153.028', 'Aldi', 30765432),
(94628573, '50 King St, Melbourne VIC 3000', '-37.8136, 144.963', 'IGA', 40567890),
(87654321, '84 Mitchell St, Perth WA 6000', '-31.9505, 115.860', 'Coles', 10234567),
(12345678, '60 Franklin St, Adelaide SA 5000', '-34.9285, 138.601', 'FoodWorks', 67891234),
(19283746, '77 Hunter St, Newcastle NSW 2300', '-32.9283, 151.781', 'Foodland', 78902345),
(56473829, '300 Queen St, Hobart TAS 7000', '-42.8826, 147.328', 'Harris Farm Markets', 89013456),
(65748392, '200 Scott St, Cairns QLD 4870', '-16.9256, 145.775', 'Drakes', 90124567),
(74839201, '99 Bay St, Port Melbourne VIC 3207', '-37.8361, 144.946', 'Friendly Grocer', 12345678),
(83920173, '1 Elizabeth St, Canberra ACT 2601', '-35.2835, 149.128', 'Woolworths', 20987654),
(92017384, '48 Maude St, Ballarat VIC 3350', '-37.5622, 143.856', 'Coles', 10234567),
(73948576, '150 High St, Kew VIC 3101', '-37.8076, 145.036', 'Aldi', 30765432),
(84629301, '200 Argyle St, Hobart TAS 7000', '-42.8794, 147.329', 'Woolworths', 20987654),
(57392018, '32 Lake St, Cairns QLD 4870', '-16.9226, 145.776', 'Woolworths', 20987654),
(49281736, '65 Stanley St, Townsville QLD 4810', '-19.2580, 146.816', 'Aldi', 30765432),
(67140295, '16 Peel St, Adelaide SA 5000', '-34.9328, 138.603', 'IGA', 40567890),
(38472901, '88 Collins St, Melbourne VIC 3000', '-37.8130, 144.972', 'Harris Farm Markets', 89013456),
(29183746, '120 Bunda St, Canberra ACT 2601', '-35.2809, 149.132', 'Costco Wholesale', 51234567),
(87465920, '45 Lakefront Crescent, Canberra ACT 2600', '-35.3075, 149.124', 'Drakes', 90124567);

INSERT INTO Stock (StockID, StockQuantity, StoreLocation_StoreID, StoreLocation_Retailer_RetailerID, Product_ProductID) VALUES
(46372015, 150, 15263478, 10234567, 18345678),
(78546320, 20, 42698571, 20987654, 27456381),
(39821570, 500, 58369042, 30765432, 36578290),
(59102478, 30, 94628573, 40567890, 45367829),
(71639402, 70, 87654321, 10234567, 56789012),
(84019365, 200, 12345678, 67891234, 67891234),
(62954031, 450, 19283746, 78902345, 78901234),
(10928476, 60, 56473829, 89013456, 89012345),
(93027461, 320, 65748392, 90124567, 90123456),
(78534219, 100, 74839201, 12345678, 11234567),
(62034785, 15, 83920173, 20987654, 12345679),
(34719852, 250, 92017384, 10234567, 23456780),
(24857013, 40, 73948576, 30765432, 34567891),
(97310684, 90, 84629301, 20987654, 45678901),
(49183072, 300, 57392018, 20987654, 56789012),
(40219758, 120, 49281736, 30765432, 67890123),
(80347129, 5, 67140295, 40567890, 78901234),
(68520397, 80, 38472901, 89013456, 89012345),
(10296584, 350, 29183746, 51234567, 90123456),
(53987120, 60, 87465920, 90124567, 1234567);

INSERT INTO ProductPricePrediction (Product_ProductID, Retailer_RetailerID, PPP_NextWeekDiscountPercentage, PPP_NextWeekDiscountPrice)
VALUES
(18345678, 10234567, 5.5, 25),
(27456381, 20987654, 10, 50),
(36578290, 30765432, 3.75, 15),
(45367829, 40567890, 12.25, 60.5),
(56789012, 10234567, 20, 80),
(67891234, 67891234, 15, 70),
(78901234, 78902345, 7, 35),
(89012345, 89013456, 25, 100),
(90123456, 90124567, 30, 120),
(11234567, 12345678, 35, 140),
(12345679, 20987654, 2.5, 12.5),
(23456780, 10234567, 8.75, 44),
(34567891, 30765432, 17.5, 88),
(45678901, 20987654, 22.25, 89),
(56789012, 20987654, 40, 160),
(67890123, 30765432, 45, 180),
(78901234, 40567890, 1.25, 10),
(90123456, 51234567, 50, 200),
(1234567, 90124567, 11, 55);

INSERT INTO ProductPriceHistory
(Product_ProductID, Retailer_RetailerID, IPH_BasePrice, IPH_DiscountPrice, IPH_DiscountPercentage, IPH_Date, IPH_FOUR_WEEK_HIGHEST, IPH_FOUR_WEEK_LOWEST)
VALUES
(18345678, 10234567, '{"price": 5}', '{"price": 4.5}', '{"percentage": 10}', '{"date": "2023-05-01"}', 5.5, 4),
(27456381, 20987654, '{"price": 6}', '{"price": 5.4}', '{"percentage": 10}', '{"date": "2023-05-02"}', 6.6, 4.8),
(36578290, 30765432, '{"price": 7}', '{"price": 6.3}', '{"percentage": 10}', '{"date": "2023-05-03"}', 7.7, 5.6),
(45367829, 40567890, '{"price": 8}', '{"price": 7.2}', '{"percentage": 10}', '{"date": "2023-05-04"}', 8.8, 6.4),
(56789012, 10234567, '{"price": 9}', '{"price": 8.1}', '{"percentage": 10}', '{"date": "2023-05-05"}', 9.9, 7.2),
(67891234, 67891234, '{"price": 10}', '{"price": 8}', '{"percentage": 20}', '{"date": "2023-05-06"}', 11, 7.5),
(78901234, 78902345, '{"price": 11}', '{"price": 8.8}', '{"percentage": 20}', '{"date": "2023-05-07"}', 12.1, 8.3),
(89012345, 89013456, '{"price": 12}', '{"price": 9.6}', '{"percentage": 20}', '{"date": "2023-05-08"}', 13.2, 9),
(90123456, 90124567, '{"price": 13}', '{"price": 10.4}', '{"percentage": 20}', '{"date": "2023-05-09"}', 14.3, 9.8),
(11234567, 12345678, '{"price": 14}', '{"price": 11.2}', '{"percentage": 20}', '{"date": "2023-05-10"}', 15.4, 10.5),
(12345679, 20987654, '{"price": 15}', '{"price": 10.5}', '{"percentage": 30}', '{"date": "2023-05-11"}', 16.5, 9.75),
(23456780, 10234567, '{"price": 16}', '{"price": 11.2}', '{"percentage": 30}', '{"date": "2023-05-12"}', 17.6, 10.4),
(34567891, 30765432, '{"price": 17}', '{"price": 11.9}', '{"percentage": 30}', '{"date": "2023-05-13"}', 18.7, 11.05),
(45678901, 20987654, '{"price": 18}', '{"price": 12.6}', '{"percentage": 30}', '{"date": "2023-05-14"}', 19.8, 11.7),
(56789012, 20987654, '{"price": 19}', '{"price": 13.3}', '{"percentage": 30}', '{"date": "2023-05-15"}', 20.9, 12.35),
(67890123, 30765432, '{"price": 20}', '{"price": 10}', '{"percentage": 50}', '{"date": "2023-05-16"}', 22, 9),
(78901234, 40567890, '{"price": 5}', '{"price": 2.5}', '{"percentage": 50}', '{"date": "2023-05-17"}', 5.5, 2.25),
(90123456, 51234567, '{"price": 7}', '{"price": 3.5}', '{"percentage": 50}', '{"date": "2023-05-19"}', 7.7, 3.15),
(1234567, 90124567, '{"price": 8}', '{"price": 4}', '{"percentage": 50}', '{"date": "2023-05-20"}', 8.8, 3.6);