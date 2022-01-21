-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 25, 2021 at 08:05 AM
-- Server version: 5.7.32
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sporthub`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `image_url`) VALUES
(1, 'soccer', 'https://res.cloudinary.com/dyio102qf/image/upload/v1617528002/category/category_soccer-2_issyit.jpg'),
(2, 'volleyball', 'https://res.cloudinary.com/dyio102qf/image/upload/v1617528005/category/category_volleyball-2_eulxzd.jpg'),
(3, 'baseball', 'https://res.cloudinary.com/dyio102qf/image/upload/v1617528004/category/category_baseball_xkwktp.jpg'),
(4, 'basketball', 'https://res.cloudinary.com/dyio102qf/image/upload/v1617528004/category/category_basketball_ndrzmg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(20) NOT NULL,
  `collection_name` varchar(30) NOT NULL,
  `category_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `category_id`) VALUES
(1, 'soccer balls', 1),
(2, 'soccer boots', 1),
(3, 'backboard', 4),
(4, 'basketball shoes', 4),
(5, 'baseball balls', 3),
(6, 'baseball gloves', 3),
(7, 'baseball bats', 3),
(8, 'kneepads', 2),
(9, 'bags', 2);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_fname` varchar(255) NOT NULL,
  `form_lname` varchar(255) NOT NULL,
  `form_email` varchar(255) NOT NULL,
  `form_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `form_fname`, `form_lname`, `form_email`, `form_message`) VALUES
(1, 'Kim', 'Duy', 'duyvukim75200@gmail.com', 'qwdqwdqwdwq'),
(2, 'Kim', 'Duy', 'duyvukim75200@gmail.com', 'qwdqwdqwdwq'),
(3, 'Vu', 'Duy', 'duyvulim@gmail.com', 'qwdqdqwdqwd'),
(4, 'asd', 'asd', 'as', 'dasd'),
(5, 'John\'s', '\'\'\'\'', '\'\'\'\'', '\'\'\'\' SELECT *'),
(6, 'john\'', 'asd', 'asd', 'asd\'s; DELETE form;'),
(7, 'asd', 'as', 'asd', 'as'),
(8, 'asd', 'asd', 'asd', 'ad'),
(9, 'huj', 'wef', 'we@gmail.com', 'ewfascascascascascqsdcacascasdcascadscascewfascascascascascqsdcacascasdcascadscasc');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(20) NOT NULL,
  `gender_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'female'),
(2, 'male'),
(3, 'both');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `information` text NOT NULL,
  `collection_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(512) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `size_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `information`, `collection_id`, `category_id`, `image_url`, `gender_id`, `size_id`, `type_id`) VALUES
(1, 'spalding 52” nba acrylic backboard and bracket combo / spalding', 399, 'A great choice for enthusiastic basketballers in your family, the Spalding 52\" NBA Acrylic Backboard and Bracket Combo features a durable acrylic backboard designed to provide premium bounce back for consistent bank shots and superior rebounding. A heavy duty solid steel rim, and an all-weather net ensure long-lasting competitive game play. Easily attach this unit to the desired wall or roof with the included mounting bracket and play a little pick-up in your front drive with the Spalding 52\" NBA Acrylic Backboard and Bracket Combo.\n', 8, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/phantom_gt_elite_dynamic_fit_3d_fg_350__soccerboots_jvaheg.png', 1, 8, 5),
(2, ' Mizuno all sport duffel / mizuno', 53, 'Perfect as either a personal or team travel bag with many storage compartments for convenient organization. Aerate your shoes and keep them separate from your other gear in the Ventilated Footwear Storage Compartment. Also features a handy compartment to store your valuables and other smaller items.\n', 4, 2, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/lethal_tigreor_ff_hybrid_300__soccerboots_joxh3y.png', 1, 13, 6),
(3, 'Mizuno organizer g5 backpack', 48, 'A great value option with a full array of team colors, the Mizuno Organizer G5 Backpack features side pouches for water bottles, a ventilated front compartment perfect for storing footwear, and a J Hook attachment to keep your bag off the ground.', 4, 2, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/louisville_slugger_series_3_ash_69__baseballbats_fjqfhw.png', 2, 12, 6),
(4, 'rawlings recreational 2 pack baseball / rawlings', 20, 'For a professional look and feel with a recreational purpose, choose this Rawlings Recreational 2 Pack Baseball. The Baseball has been designed with a synthetic leather cover for easy gripping along with Major League Seams for a pro look and feel. Featuring a solid cork and rubber center, the ball mimics an official size and weight baseball to get you ready for the big leagues.', 5, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/mizuno_all_sport_duffel_53__bags_ge1ixy.png', 3, 15, 7),
(5, 'Wilson a1010hs1', 10, 'Winding: Grey Wool\nSeam: SST Wilson Super Seam Raised\nCentre: Red Cushioned Cork with Dura-Core Technology\nCover: A grade Full Grain Leather\n\n', 5, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/mizuno_all_sport_duffel_53__bags_ge1ixy.png', 2, 15, 7),
(6, '2018 demarini pro maple wood composite bat – d243 / demarini', 250, 'Round out your game with the DeMarini D243 Pro Maple Wood Composite Bat. The D243 model has a large barrel and slightly end loaded swing weight.', 7, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711069/products/menace4_240__soccerboots_adqoin.png', 1, 30, 3),
(7, '2020 rawling quatro pro usa / rawlings', 499, 'Artfully crafted from the finest composite materials, the Rawlings 2020 -10 Quatro Pro USA bat is a go-to for batters who want balance, control, and power. The Q4 suspended inner-barrel technology gives you a larger sweet spot, a longer barrel, and a more balanced swing.', 7, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711069/products/lethal_testimonial_4_it_270__soccerboots_iril4l.png', 2, 29, 3),
(8, 'Louisville slugger series 3 ash / Louisville slugger', 69, 'Smash the ball out of the park with the Louisville Slugger Series 3 Ash Baseball Bat. The Series 3 Ash bat features a stylish black finish and has a lightweight feel to ensure you swing easily and freely. The two-tone bat is strong and durable perfect for the batting cage or the pitch as you hit home runs and leads your team to victory', 7, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711069/products/lethal_testimonial_4_it_270__soccerboots_iril4l.png', 2, 30, 3),
(9, ' 360 right hand throw baseball glove / wilson', 60, 'The Wilson A360 Right Hand Baseball Glove is a great accessory for those who are looking to start out in baseball. The glove is worn on the non-dominant hand - leaving your dominant left hand to throw and perfect your passes. Featuring a full pigskin palm and web, 2-Piece closed weave web and hook and loop strap for an adjustable and secure fit.', 6, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711069/products/lebron_XVIII_190__basketballshoes_lcydha.png', 3, 19, 7),
(10, ' prospect gpp1000y2 / mizuno', 60, 'The Mizuno Prospect range of gloves are specifically designed for baseball. The full grain leather shell offers great durability and the polyurethane powerlock provides a secure, comfortable fit.', 6, 3, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/lethal_speed_rs_2_120__soccerboots_i3z2fx.png', 3, 26, 2),
(11, ' lebron XVIII / nike', 190, 'Built to contain and channel the force of the king on the court, the Nike LeBron XVIII Basketball Shoes deliver the drive for young players to make an impact on the court. Encasing feet in superior KnitPosite 2.0, the upper delivers containment and breathability. Underfoot shock is absorbed beneath the heel thanks to the Max Air unit while junior ballers will stay agile and stable on the court thanks to the rubber grip outsole.', 9, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/kyrie_flytrap_4_129__basketballshoes_blv2ve.png', 2, 1, 1),
(12, 'Jordan jumpman 2021 / jordan', 160, ' Front up and take control in the Nike Jordan Jumpman 2021 Basketball Shoes. The upper stands out on the court thanks to its spiral exposed stitching pattern. Therefore, the stitching links curved Flywire cables to the upper to secure the fit every time you lace up. A Nike Zoom Air Unit sits underfoot energising your movement on the court. You\'re kept stable thanks to the moulded TPU piece in the midsole and herringbone rubber outsole.', 9, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/elite_9_sl2_32__kneepads_xmd8of.png', 2, 6, 1),
(13, 'court rider twofold /puma', 149, 'Feel the power beneath your feet next time you drive upcourt in the Puma Court Rider Twofold Basketball Shoes. The boot design is built for mobility and agility on the court with a unique lacing system locking feet in. Full-length rider foam delivers energy return underfoot. The grippy rubber outsole will keep you feeling fast and dangerous.', 9, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/elite_9_sl2_32__kneepads_xmd8of.png', 1, 5, 1),
(14, 'kyrie flytrap 4 / nike', 149, ' Push yourself to the edge to get the best performance in the Nike Kyrie Flytrap 4. Lightweight and mobile, these basketball shoes are built to support you in executing quick cuts. The Air Zoom unit in the forefoot is maxed out for ultimate responsiveness. An interior band links with laces to anchor your forefoot over it. Updated grip, maxes out your ability to adapt and react.', 9, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/jr.tiempo_legend_8_academy_mg_80__soccerboots_gunzgb.png', 3, 7, 1),
(15, 'curry 8 /under armour', 219, 'Enter your flow state on the court and don\'t let anyone stop you. The Under Armour Curry 8 ditches rubber for the lightest fastest feeling on the basketball court. UA Flow cushioning runs from the midsole to the outsole gripping on the court and delivering a bouncy sensation underfoot.', 9, 4, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/jr.tiempo_legend_8_academy_mg_80__soccerboots_gunzgb.png', 1, 4, 1),
(16, ' elite 9 sl2 / mizuno', 32, 'Traditional style polo with lightweight performance polyester with Mizuno dry lite technology that transports Excess moisture away from the body.', 3, 2, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711068/products/jordan_jumpman_2021_160__basketballshoes_frfnfc.png', 1, 34, 4),
(17, 'nike strike / nike', 60, ' Bounce back after every dive with the Nike Streak Volleyball Knee Pads. Designed with shock-absorbing foam, they will cushion your impact every time. Constructed with breathable, contoured Dri-FIT fabric, you will stay dry and sweat free all game long. Commit to every shock and stay protected with Nikes Streak Volleyball Protective Knee Pads.', 1, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711067/products/360_right_hand_throw_baseball_glove_60__baseballgloves_unzfwy.png', 2, 22, 2),
(18, 'premier league club elite / nike', 65, ' Celebrate the top flight of English football with the Premier League Club Elite Football. The durable design features moulded grooves to help reduce drag as the ball flies through the air.', 1, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711067/products/d_rose_11_219__basketballshoes_k6e3uc.png', 2, 17, 7),
(19, ' menace4 / asics', 240, ' The lightweight MENACE has been a popular choice for many years with this season boasting an exciting new upper image.\nPart of our COLOR INJECTION pack, the MENACE 4 is made from a combination of materials including Nylon in the outsole and a microfiber upper to deliver an extremely light boot. Strain on limbs is also reduced thanks to the boot’s clever HG10mm heel raise technology, which helps players have a forward-leaning posture. The MENACE is light, responsive and flexible.\n', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711067/products/court_rider_twofold_149__basketballshoes_pqlgc4.png', 1, 5, 1),
(20, ' lethal tigreor ff hybrid / asics', 300, 'The LETHAL TIGREOR IT FF HYBRID rugby shoe offers lightweight comfort and a revamped upper design that provides better support for players competing on turf surfaces.\nConstructed with a kangaroo leather that wraps the foot with a soft and flexible fit that helps deliver increased comfort and a more personalised fit. Following a more sustainable manufacturing approach, this shoe also uses fewer inks for the colouring process.\nAdditionally, FLYTEFOAM technology offers a responsive bounce back and propulsion for an energised stride. \n', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711067/products/curry_8_219__basketballshoes_j85sjg.png', 2, 4, 1),
(21, 'lethal testimonial 4 it / asics', 270, 'The ASICS LETHAL TESTIMONIAL 4 IT football shoe has been engineered to supply lightweight cushioning with a spring-loaded ride on the pitch. Equipped with our brand\'s heel raise technology, this football style also implements a FLYTEFOAM midsole compound for better durability and reduced midsole breakdown.\nCombining a revamped shape with responsive cushioning properties, the ASICS LETHAL TESTIMONIAL 4 IT football shoe also promotes long-lasting comfort and durability.\n', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711066/products/2020_rawling_quatro_pro_usa_499__baseballbats_csuu4n.png', 1, 5, 1),
(22, ' ultrezza / asics', 290, 'This is the first of a new concept of taking the proven HG10MM technology and bringing it to a football player who may have been using zero platform football boots. The answer is a 5mm raise to help reduce strain and lower limb stress, yet still give that lightweight and responsive feel of their current football boots.\n', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711066/products/2018_demarini_pro_maple_wood_composite_bat_d243_250__baseballbats_iy2xa8.png', 2, 4, 1),
(23, 'lethal speed rs 2 / asics', 120, ' The LETHAL SPEED RS is a well-balanced model made from synthetic leather - a dependable choice for grassroot level players chasing comfort and safety. The design boasts HG10mm technology, which helps to prevent injury by easing strain on the Achilles heel - while SOLYTE™ technology provides plenty of cushioning underfoot without weighing the shoe down.', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/lethal_tigreor_ff_hybrid_300__soccerboots_joxh3y.png', 1, 6, 1),
(24, 'phantom gt elite dynamic fit 3d fg / nike', 350, ' Phantom players are multifaceted; they\'re calculated, instinctive and have a provocative style of play. The Nike Phantom GT Elite Dynamic Fit 3D FG encapsulates these characteristics with a repeating Swoosh logo and a 3D-inspired overlay that represents the 3 sides to every Phantom player.', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/louisville_slugger_series_3_ash_69__baseballbats_fjqfhw.png', 1, 7, 1),
(25, 'mercurial dream speed superfly 8 academy mg / mike', 140, ' The Nike Mercurial Dream Speed Superfly 8 Academy MG is a new look inspired by objects entering Earth\'s atmosphere at hypersonic speeds. Its unique design brings together the essential components needed to deliver optimal touch and traction.', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711070/products/mizuno_all_sport_duffel_53__bags_ge1ixy.png', 2, 2, 1),
(26, 'jr. tiempo legend 8 academy mg / nike', 80, 'The Nike Jr. Tiempo Legend 8 Academy MG takes the legendary touch of calfskin leather and adds a versatile multi-ground plate for traction on natural- and artificial-grass surfaces.', 2, 1, 'https://res.cloudinary.com/dyio102qf/image/upload/v1617711069/products/menace4_240__soccerboots_adqoin.png', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(20) NOT NULL,
  `size_name` varchar(30) NOT NULL,
  `type_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_name`, `type_id`) VALUES
(1, 'US 3', 1),
(2, 'US 4', 1),
(3, 'US 5', 1),
(4, 'US 6', 1),
(5, 'US 7', 1),
(6, 'US 8', 1),
(7, 'US 8.5', 1),
(8, '1m', 5),
(9, '2.4m', 5),
(10, 'Unique Size', 5),
(11, 'S', 6),
(12, 'L', 6),
(13, '10L', 6),
(14, '15L', 6),
(15, '1', 7),
(16, '2', 7),
(17, '3', 7),
(18, '4', 7),
(19, '5', 7),
(20, '6', 7),
(21, '3', 2),
(22, '4', 2),
(23, '5', 2),
(24, '6', 2),
(25, '7', 2),
(26, '8', 2),
(27, '8.5', 2),
(28, '9', 2),
(29, '30', 3),
(30, '33', 3),
(31, 'kids', 3),
(32, 'Unique Size', 3),
(33, '0', 4),
(34, '1', 4),
(35, '2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(20) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'shoes'),
(2, 'backboard'),
(3, 'bags'),
(4, 'balls'),
(5, 'gloves'),
(6, 'baseball bats'),
(7, 'knee pad');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_gmail` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_gmail`) VALUES
(8, 'vukimduy', '$2y$10$2NA8R6PHiuFDeacQOWQQzeyYV/I1Z9dBAcRby22OXYuTS1M8uXswu', '1@gmail.com'),
(9, '123', '$2y$10$VjY21NdoXOtuBokhryfVPujJc91pdBquo1.bUQCcV7V/0BI5xNYzC', 'duyvukim752000@gmail.com'),
(10, '1', '$2y$10$F4gqV7L3Rt9i7BPdMPHoleXzt81xckjq8.WnXR4TKOs9/T/xzobhK', '1@gmail.com'),
(11, '123', '$2y$10$Bh.X1i/Cx4FE1ncz9qME/O0P5qq78S3uni4AyEQwmNgnsFfin5rYG', '123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_ibfk_1` (`collection_id`),
  ADD KEY `product_ibfk_2` (`category_id`),
  ADD KEY `product_ibfk_3` (`gender_id`),
  ADD KEY `product_ibfk_4` (`size_id`),
  ADD KEY `product_ibfk_5` (`type_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `size_ibfk_1` (`type_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
