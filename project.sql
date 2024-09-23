-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 08:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `dname` varchar(40) NOT NULL,
  `dimg` varchar(100) NOT NULL,
  `dchar` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`dname`, `dimg`, `dchar`, `description`) VALUES
('Fungal disease', 'fungy.jpeg', 'Leaf rust (common in corn). Birds-eye spot on berries (anthracnose). Seedlings damping off (Phytophthora). Chlorosis (yellowing of leaves). Stem rust (wheat stem rust). Leaf spot (septoria brown spot). Sclerotinia (white mold). Powdery mildew.', 'A fungal infection is frequently manifested as local or general necrosis. Crop diseases caused by fungi can also interfere with normal growth or contribute to an abnormal burst of growth known as hypertrophy.'),
('Bacterial disease', 'bacte.jpeg', 'Fruit spot. Crown gall. Leaf spot with a yellow halo. Canker. Shepperd’s crook stem ends on woody plants.', 'As previously stated, there are numerous disease types due to a large number of bacteria. The most common crop plant diseases are listed below:\r\n\r\nBacterial ooze.\r\nWater-soaked lesions.\r\nBacterial streaming in water from a cut stem.'),
('Viral disease', 'viral.jpeg', 'malformations, such as abnormal shoot growth and leaf and flower distortion; necrosis, wilting, and the appearance of annular stripes and spots;', 'Crop diseases symptoms caused by viruses are typically classified into four types:\r\nmalformations, such as abnormal shoot growth and leaf and flower distortion;\r\nnecrosis, wilting, and the appearance of annular stripes and spots;\r\ndwarfism, growth retar'),
('Granville wilt', 'gravili.jpeg', 'stunting, yellowing, and wilting of parts above ground; roots decay and become black or brown', 'occurs in most countries in temperate and semitropical zones; causes crop losses of hundreds of millions of dollars'),
('fire blight', 'fire.jpeg', 'blossoms appear water-soaked and shrivel; spreads to leaves and stems, causing rapid dieback', 'first plant disease proved to be caused by a bacterium, blossoms appear water-soaked and shrivel; spreads to leaves and stems, causing rapid dieback'),
('wildfire of tobacco', 'wildf.jpeg', 'yellowish green spots on leaves', 'wildfire of tobacco occurs worldwide; causes losses in seedlings and field plants'),
('blight of beans', 'bli.jpeg', 'yellowish green spots on leaves', 'most phytopathogenic xanthomonads and pseudomonads cause necrotic spots on green parts of susceptible hosts; may be localized or systemic'),
('soft root', 'softroot.jpeg', 'soft decay of fleshy tissues that become mushy and soft', 'occurs worldwide; causes major economic losses.'),
('aster yellows', 'asteryellow.jpeg', 'chlorosis; dwarfing malformations', 'greatest losses suffered by carrots; transmission by leafhoppers.'),
('citrus stubborn disease', 'citrus.jpeg', 'chlorosis, yellowing of leaves, shortened internodes, wilting', 'first MLO pathogen of plant disease cultured.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `dname` varchar(40) NOT NULL,
  `eduction` varchar(50) NOT NULL,
  `daddress` varchar(100) NOT NULL,
  `ddescription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dr`
--

CREATE TABLE `dr` (
  `name` varchar(100) NOT NULL,
  `charector` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `state` int(15) NOT NULL,
  `distric` varchar(100) NOT NULL,
  `subdistric` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dr`
--

INSERT INTO `dr` (`name`, `charector`, `contact`, `state`, `distric`, `subdistric`, `area`, `pincode`) VALUES
('krushna k', 'red leaves and black steam', '9623327931', 5, 'beed', 'kaij', 'shirurghat', '431126'),
('hvxasgv', 'dyd7cg', '9623327931', 0, 'beed', 'kaij', 'shirurghat', '431126');

-- --------------------------------------------------------

--
-- Table structure for table `hirelabour`
--

CREATE TABLE `hirelabour` (
  `workername` varchar(100) NOT NULL,
  `onername` varchar(100) NOT NULL,
  `nwork` varchar(500) NOT NULL,
  `con` varchar(100) NOT NULL,
  `workplace` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hirelabour`
--

INSERT INTO `hirelabour` (`workername`, `onername`, `nwork`, `con`, `workplace`) VALUES
('onion', '9022975787', 'pawar', 'chakarwadi', 'krushna'),
('krushna', 'pawar', 'onion', '9022975787', 'chakarwadi'),
('Vishnu', 'dipak', 'onion cutting', '9022975787', 'chakarwadi'),
('bhagwan', 'dipak sarvade', 'onion cutting', '9022975787', 'khadki'),
('Tushar', '', '', '', ''),
('Tushar', 'vijay munde', 'onion', '9657380094', 'hingni'),
('Tushar', 'bhimrao munde', 'onion cutting', '9158871833', 'hingni'),
('ajay', 'ramling', 'onion cutting', '9657380094', 'hingni');

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE `labour` (
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `work` varchar(150) NOT NULL,
  `limg` varchar(1000) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labour`
--

INSERT INTO `labour` (`name`, `number`, `work`, `limg`, `address`) VALUES
('Tushar Abhiman Yede', '8767697051', 'Seeding', 'tushar.jpg', 'At.post Ravlasgon tq.dist. Beed'),
('Dipak Vitthal Sarvade', '8010379072', 'Sowing or Planting', 'dipak.jpg', 'At.Post.Khadki kolgong tq.Gevrai Dist.Beed'),
('Bhagwan Bhaskar Tidke', '8624854592', 'Cultivation Of Agricultural Land', 'bhg.jpg', 'At.post.Bhogalwadi Tq.Dharur Dist.Beed'),
('Rohit Vishnu Adagle', '8421178481', 'Spraying', 'rohit.jpg', 'At.post.Sirjdevi tq.Gevrai Dist.Beed'),
('Vishal  Sant', '9702374282', 'Spraying', 'vishals.jpg', 'At.post. tq.panvel Dist.Mumbia'),
('Sujal Rout', '9405830115', 'Threshing', 'suj.jpg', 'At.post vadvani tq.Vadvani dist.beed'),
('Santosh Ashruba Dapkar', '7447880764', 'Seeding', 'santosh.jpg', 'At.Sangam.tq.Dharur dist.Beed'),
('Sachin Kailas Kharad', '7350675061', 'Threshing', 'sac.jpg', 'At. tq.gevrai dist.Beed '),
('Namdev Sopan khandekr', '9623327931', 'Threshing', 'namu.jpg', 'at.dhindrud tq.dist.beed'),
('Dinesh babasaheb zodge', '9022177982', 'Seeding', 'di.jpg', 'at.karndi tq.dist.beed');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `utype`) VALUES
('swapnil', 'pawar', 'Admine'),
('Dinesh', 'rathod', 'Shop'),
('Krushna', 'kk', 'AgroDoctor'),
('sp', 'sp', 'Labour'),
('dr', 'dr', 'Labour'),
('bhagwan', 'nssn', 'Labour'),
('dipak', 'dip', 'Labour'),
('tushar', 't726', 'Labour'),
('dipak', 'd726', 'Labour'),
('bhagwan', 'b726', 'Labour'),
('rohit', 'r726', 'Labour'),
('rohit', 'v726', 'Labour'),
('sujal', 's726', 'Labour'),
('santosh', 's726', 'Labour'),
('sachin', 'sa726', 'Labour'),
('namdev', 'n726', 'Labour'),
('dinesh', 'di726', 'Labour'),
('narayan', 'nssn', 'Admine'),
('krushna', 'kk', 'AgroDoctor'),
('ajay', 'a726', 'Labour');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `date` date NOT NULL,
  `market` varchar(150) NOT NULL,
  `state` varchar(100) NOT NULL,
  `dist` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `minrate` varchar(150) NOT NULL,
  `maxrate` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`date`, `market`, `state`, `dist`, `product`, `minrate`, `maxrate`) VALUES
('2023-04-27', 'kaij', 'maharastra', 'beed', 'Soyabean', '4800', '5000'),
('2023-04-27', 'kaij', 'maharastra', 'beed', 'gram', '4300', '4500'),
('2023-04-26', 'Gevrai', 'maharastra', 'beed', 'Soyabean', '4750', '4870'),
('2023-04-26', 'Gevrai', 'maharastra', 'beed', 'Gram', '4450', '4600'),
('2023-05-04', 'beed', 'maharastra', 'beed', 'Tur', '2700', '3000'),
('2023-05-04', 'beed', 'maharastra', 'beed', 'gram', '6000', '6900'),
('2023-05-06', 'BEED', 'maharastra', 'BEED', 'Gram', '4800', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `newtech`
--

CREATE TABLE `newtech` (
  `tname` varchar(40) NOT NULL,
  `timage` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `tinfo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newtech`
--

INSERT INTO `newtech` (`tname`, `timage`, `contact`, `tinfo`) VALUES
('Soil and Water Sensors', 'tw.jpeg', '0000111000', 'Perhaps the equipment having the most immediate effect are soil and water sensors. These sensors are durable, unobtrusive and relatively inexpensive. Even family farms are finding it affordable to distribute them throughout their land, and they provide numerous benefits. For instance, these sensors can detect moisture and nitrogen levels, and the farm can use this information to determine when to water and fertilize rather than rely on a predetermined schedule. That results in more efficient use of resources and therefore lowered costs, but it also helps the farm be more environmentally friendly by conserving water, limiting erosion and reducing fertilizer levels in local rivers and lakes.'),
(' Weather Tracking', 'twe.jpeg', '0011220033', 'Although we still make jokes about our local meteorologists, the truth is that computerized weather modeling is becoming increasingly sophisticated. There are online weather services that focus exclusively on agriculture, and farmers can access these services on dedicated onboard and handheld farm technology but also via mobile apps that run on just about any consumer smartphone. This technology can give farmers enough advanced notice of frost, hail and other weather that they can take precautions to protect the crops or at least mitigate losses to a significant degree.\r\n\r\n'),
('Satellite Imaging', 'ts.jpeg', '0022336688', 'As remote satellite imaging has become more sophisticated, it’s allowed for real-time crop imagery. This isn’t just bird’s-eye-view snapshots but images in resolutions of 5-meter-pixels and even greater. Crop imagery lets a farmer examine crops as if he or she were standing there without actually standing there. Even reviewing images on a weekly basis can save a farm a considerable amount of time and money. Additionally, this technology can be integrated with crop, soil and water sensors so that the farmers can receive notifications along with appropriate satellite images when danger thresholds are met.'),
('Pervasive Automation', 'tp.jpeg', '9010334455', 'Pervasive automation is a buzz term in the agriculture technology industry, and it can refer to any technology that reduces operator workload. Examples include autonomous vehicles controlled by robotics or remotely through terminals and hyper precision, such as RTK navigation systems that make seeding and fertilization routes as optimal as possible. Most farming equipment already adopts the ISOBUS standard, and that puts on the precipice of a farming reality where balers, combines, tractors and other farming equipment communicate and even operate in a plug-and-play manner.'),
(' Vertical Farming', 'vf.png', '9623889900', 'Vertical farming has been a science fiction topic as far back as the 1950s and perhaps further, and now it’s not only scientifically viable but will be financially viable within the decade. Vertical farm technology Vertical farming a component of urban agriculture is the practice of producing food in vertically stacked layers. This offers many advantages. Perhaps the most obvious is the ability to grow within urban environments and thus have fresher foods available faster and at lower costs. However, vertical farming won’t be limited to just urban environments like initially expected. Farmers in all areas can use it to make better use of available land and to grow crops that wouldn’t normally be viable in those locations.\r\n\r\n'),
(' Minichromosomal Technology', 'minic.jpg', '8010379075', 'Perhaps one of the most exciting advents in agriculture technology is coming in a very tiny package. A minichromosome is a small structure within a cell that includes very little genetic material but can, in layman’s terms, hold a lot of information. Using minichromosomes, agricultural geneticists can add dozens and perhaps even hundreds of traits to a plant. These traits can be quite complex, such as drought tolerance and nitrogen use. However, what is most intriguing about minichromosomal technology is that a plant’s original chromosomes are not altered in any way. That results in faster regulatory approval and wider, faster acceptance from consumers.'),
('IOT IN AGRICULTURE', '63d34ad8e4669603b27c3267_0_W22x9Y1gFnjljnnO.jpeg', '8010379072', 'IoT is used as a smart farming solution for monitoring the crop field from anywhere. It involves using sensors to track soil moisture, crop health, livestock conditions, temperature, etc.\r\n\r\nIoT technologies make it possible to create automated irrigation structures where water resources can be managed efficiently. By collecting crop data such as moisture and temperature, IoT technologies can help determine the right amount of water for crops every season.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `pname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `distric` varchar(100) NOT NULL,
  `subdistric` varchar(100) NOT NULL,
  `area` varchar(1000) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`pname`, `sname`, `fullname`, `contact`, `state`, `distric`, `subdistric`, `area`, `pincode`, `payment`) VALUES
('mango', 'mango Group', 'Narayan Vishnu Sangale', '9623327931', 'Maharastra', 'beed', 'kaij', 'shirurghat', '431126', 'CASH ON DELIVERY'),
('mango', 'mango Group', 'Swapnil pawar', '9623327931', 'Maharastra', 'beed', 'beed', 'Chakrwadi', '431126', 'CASH ON DELIVERY'),
('Fresho', '', 'Dinesh Rathod', '9623327931', 'maharastra', 'beed', 'gevrai', 'Kathodtanda', '431126', 'Debit Card'),
('Fresho', '', 'Sujal Raut', '9623327931', 'maharastra', 'beed', 'Wadwani', 'Vadvani', '431126', 'Debit Card'),
('mango', 'mango Group', '', '', '', '', '', '', '', 'Creadit Card');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pimg` varchar(1000) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `pcompany` varchar(50) NOT NULL,
  `pprice` int(100) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pimg`, `pname`, `pcompany`, `pprice`, `description`) VALUES
('mg.jpeg', 'mango', 'mango Group', 150, 'A mango is an edible stone fruit produced by the tropical tree Mangifera indica. It is believed to have originated between northwestern Myanmar, Bangladesh, and northeastern India.[1] M. indica has been cultivated in South and Southeast Asia since ancient times resulting in two types of modern mango cultivars: the \"Indian type\" and the \"Southeast Asian type\".[2][3] Other species in the genus Mangifera also produce edible fruits that are also called \"mangoes\", the majority of which are found in the Malesian ecoregion'),
('wa.jpeg', 'Fresho Watermelon ', 'mg', 150, 'Watermelon is a flowering plant species of the Cucurbitaceae family and the name of its edible fruit. A scrambling and trailing vine-like plant, it is a highly cultivated fruit worldwide, with more than 1,000 varieties. Wikipedia'),
('p2.jpeg', 'TrustBasket Organic Vermicompost Fertili', 'Vermicompost Fertilizer', 509, 'About this item ***Buy Original, sold and fulfilled by Trust basket*** Improves Soil Aeration Enriches Soil With Micro-Organisms (Adding Enzymes Such As Phosphatase And Cellulase) Microbial Activity In Worm Castings Is 10 To 20 Times Higher Than In T'),
('p3.jpg', 'Nano Gold Agriculture Growth Promoter fo', 'Nano Gold Agriculture', 669, '	About this item Stimulate robust blooms, fruits and seeds Improve yield and crop quality Prevent nutrient deficiencies Improve micro nutrient profile in soil Flexible application method'),
('p4.jpg', 'OrganicDews Liquid Seaweed Concentrate ', 'OrganicDews', 225, 'ENRICH SOIL: Increases microorganisms in the soil that can invoke nitrogen from the air. Reduce salt content,breakthrough mineralized layer and effectively solve the soil salinization caused by over fertilization. INCREASE GROWTH: Improves seed germination and increases root growth development. Hence producing quality flowers and tasty fruits. BALANCE NUTRITION: Promotes balanced growth of plants and increases bloom set and size of flowers & fruits. It contains Nitrogen, Potassium, Phosphorus that required by plant growth, and chelating trace elements like Calcium, Magnisum, Zinc, Boron, Molybdenum, etc. which supply all nutrition in balance. DISEASE RESISTANCE: Boosts the immunity and resistance in plants against drought resistence, frost protection and stress recovery. DIRECTION TO USE: To make 1 Liter of seaweed Liquid Spray for plants. STEP: 1 Take 3ml of Seaweed liquid extract (Concentrate) and add it to 1 liter of plain water. STEP: 2 Mix them thoroughly until it’s mixed very well. STEP: 3 spray the diluted seaweed liquid all over the plant or apply directly to the Soil. NOTE: Apply the seaweed liquid spray on the plants before sunrise or after sunset. To avoid leaf burn.'),
('sm.jpeg', 'ABHILASH TOMATO SEEDS', 'Seminis', 602, 'Plant is very strong With firmness and good shelf life. FRUIT SHAPE: Flat round FRUIT COLOR: Atttractive red Fruit WEIGHT: 80-100gm MATURITY: 65-70 days'),
('bk.png', 'Potato-Onion-Tomato, Pack Size (Kilogram', 'mango group', 150, 'The potato onion (Allium cepa var. aggregatum) is a member of the onion family that reproduces primarily by division of bulbs, rather than by seed. This makes it more similar in form to garlic than to standard onions. They were once a mainstay of northern garden plots, where they were easier to grow than standard onions from seed. They are also known as nesting onions or multiplier onions. Potato onions are closely related to shallots, which are also A. cepa var. aggregatum. Shallots are generally better known than potato onions. Although potato onions and shallots have just enough differences to represent two families of cultivars, the exact dividing line between the two is hard to place. Potato onions are larger, divide into fewer bulbs, and remain enclosed within the skin of the seed bulb longer (Fritsch 2002). Shallots typically have milder flavor and poor storage characteristics, while potato onions typically have a sharper flavor and store much better.'),
('str.jpeg', 'Fresh Orgenic Stoberry', 'Seminis', 200, 'For other species of strawberry, see Fragaria. For other uses, see Strawberry (disambiguation). Strawberry Fragaria × ananassa Garden strawberry (Fragaria × ananassa) single2.jpg Strawberry fruit Garden strawberry (Fragaria × ananassa) halved.jpg Halved strawberry Scientific classificationedit Kingdom: Plantae Clade: Tracheophytes Clade: Angiosperms Clade: Eudicots Clade: Rosids Order: Rosales Family: Rosaceae Genus: Fragaria Species: F. × ananassa Binomial name Fragaria × ananassa Duchesne The garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others.');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `owner` varchar(40) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `saddress` varchar(100) NOT NULL,
  `ownumber` varchar(40) NOT NULL,
  `gst` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`owner`, `sname`, `saddress`, `ownumber`, `gst`) VALUES
('sp', 'spshop', 'beed', '0', 'swapnilpawarns12');

-- --------------------------------------------------------

--
-- Table structure for table `solu`
--

CREATE TABLE `solu` (
  `dname` varchar(100) NOT NULL,
  `dchar` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solu`
--

INSERT INTO `solu` (`dname`, `dchar`, `description`) VALUES
('Aphids', 'These tiny insects are extremely common and usually found on the undersides of leaves or at the tip ', 'Something as simple as a splash of water can remov'),
('Fungus Gnats', 'If your plant is experiencing root issues, you may have a fungus gnat problem. These little guys lik', 'There are several options available when it comes '),
('Spider Mites', 'These guys are actually considered arachnids, not insects, and are very hard to see. If you want to ', 'Letting dish soap sit on the plant for a couple ho'),
('Whiteflies', 'These gnat-like insects are soft-bodied and usually found in a light yellow or white color. Despite ', 'Choosing a less toxic treatment for whiteflies wil'),
('Whiteflies', 'These gnat-like insects are soft-bodied and usually found in a light yellow or white color. Despite ', 'Choosing a less toxic treatment for whiteflies wil'),
('Powdery Mildew', 'This particular disease can be easily identified on your affected plant — if you clearly see white powdery fungal growth on foliage, that is a sure sign that it’s powdery mildew. Though not typically fatal, this disease can spread and affect plant growth drastically, even causing leaf distortion in some cases. ', 'Remove affected foliage from the plant to prevent it from spreading. Combine 1 tablespoon of baking soda with ½ teaspoon of non-detergent soap and place the solution in a gallon of water. Pour the mixture into a spray bottle and coat all the affected'),
('Root Rot', 'Root rot can be a nasty disease when left untreated. If you’ve noticed your plant’s roots are soft and black in color, that usually means your houseplant is suffering from root rot. This can ultimately cause the plants to wilt and die, so it’s important to take the necessary steps to make sure that doesn’t happen. ', 'The number one cause of root rot is overwatering, so keep that in mind next time you go to water your plant. For most varieties, it’s important to only water the plant when the soil feels dry to the touch. If your plant has a severe case of root rot, cut out the infected roots and repot the plant with fresh potting mix and a new pot. '),
('Gray Mold', 'This type of fungus is a common disease that’s usually found in flowers and can spread quickly, causing severe harm to your plant. It can be easily identified if you notice brown spots on the plant that eventually turn into a thick gray mold. Do not ignore these signs as gray mold can kill the plant!', 'Gray Mold Solution: \r\nDecrease humidity around the plant and increase air circulation. Like most types of fungi, gray mold thrives in moist and humid environments, so it’s important to keep the plant in a dry space. In severe cases, you can opt to use a fungicide to treat the plant.'),
(' Leaf Spots', 'As the name suggests, this disease can be identified as tiny spots on your plant’s leaves that usually show up in shades of black, brown, yellow or tan. When these spots combine, it can result in leaf drop and distortion. ', 'Remove the infected leaves and increase air circulation in your house. Try not to get water on the leaves and avoid reusing infected potting mixes. Also be sure to water early in the day so it has time to dry before nightfall!'),
('Fungus Gnats', 'red leaves and black steam	', 'yala dhuvan kadhne va swachha karne ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
