-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2012 at 07:14 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `boat_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Type` char(64) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Dimensions` varchar(255) NOT NULL,
  `Material` varchar(255) NOT NULL,
  `Units` varchar(255) NOT NULL,
  `Inventory` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `Price Per Unit` decimal(65,2) unsigned NOT NULL DEFAULT '0.00',
  `Minimum Purchase` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `Package Count` int(10) unsigned NOT NULL DEFAULT '1',
  `Shipping Price Each` decimal(65,2) unsigned NOT NULL DEFAULT '0.00',
  `Purchase Location` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Type` (`Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=216 ;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`ID`, `Type`, `Description`, `Dimensions`, `Material`, `Units`, `Inventory`, `Price Per Unit`, `Minimum Purchase`, `Package Count`, `Shipping Price Each`, `Purchase Location`) VALUES
(0, 'Stove', 'Origo 3000 Alcohol ', '', 'Stainless', 'Each', '0.00', '250.00', 1, 1, '25.00', 'http://www.ebay.com/sch/i.html?_from=R40&_trksid=p5197.m570.l1313&_nkw=origo+3000&_sacat=See-All-Categories'),
(1, 'Bolt', 'Philips Pan Head Machine Screw', '1/4" x 1/2" ', 'Stainless', 'Each', '0.00', '0.09', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/product.do?process=checkout&part=1027'),
(2, 'Cloth', 'Exterior Bag ', '46"', 'Sunbrella', 'Yd.', '0.00', '16.00', 1, 1, '0.00', 'http://search.sailrite.com/?refineType=1&sub_attr_name=Outdoor%20Application&refineValue=Bags&refine=1&history=wwxv0dxz||sub_attr_name~Store_ID^refineValue~Retail1...eknsjrio||categoryName~cat_121351%40Retail1^category~121368%40Retail1^subCategoryName~Marine%20Exterior%20Fabric^subCategoryName~Marine%20Exterior%20Fabric...hgw0p6yi||refineType~1^sub_attr_name~Brand^refineValue~Sunbrella...w3smz5ca||refineType~1^sub_attr_name~Width^refineValue~46\\%22'),
(3, 'Cloth', 'Zipper', '48"', 'Plastic Teeth & Pull', 'Each', '0.00', '7.50', 1, 1, '0.00', 'http://www.sailrite.com/YKK-Zipper-10-Black-48-Single-Locking-Plastic-Slider'),
(4, 'Tank', 'Fuel', '12 gal.', 'Plastic', 'Each', '0.00', '165.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|311|302335|7364|939818|940755&id=940431'),
(5, 'Cloth', 'Fabric Mesh', '48"', 'Polyester', 'Yd.', '0.00', '5.00', 1, 1, '0.00', 'http://www.sailrite.com/Mesh-Polyester-White-46'),
(6, 'Tape', 'Butyl Sealant', '1/2" x 1/8"', '', 'Ft.', '295.00', '0.36', 300, 300, '0.00', 'http://www.pbase.com/mainecruising/butyl_tape'),
(7, 'Engine Part', 'Transmission Cable ', '10''', 'Teleflex 6400', 'Each', '0.00', '165.00', 1, 1, '0.00', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=58310&familyName=Teleflex+TFXtreme+6400CC+Control+Cable'),
(9, 'Bolt', 'Philips Flat Head Machine Screw', '1/4" x 2"', 'Stainless', 'Each', '0.00', '0.18', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=489&familyName=1%2F4-20+S%2FS+Machine+Screws+FP'),
(10, 'Washer', 'Fender', '1/4" x 1 1/4"', 'Stainless', 'Each', '0.00', '0.15', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=1902&familyName=S%2FS+Fender+Washers'),
(11, 'Nut', 'Nylock', '1/4"', 'Stainless', 'Each', '0.00', '0.14', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=1896&familyName=S%2FS+Lock+Nuts'),
(12, 'Expoxy', 'Epoxy and Fast Hardener West System', '', '', '1.2 Gal.', '0.20', '130.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|12212|309317|636678&id=12213'),
(13, 'Nut', 'Eye', '1/4" x 1 1/4"', 'Stainless', 'Each', '0.00', '5.00', 1, 1, '0.00', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=57902&familyName=Eye+Nut+-+Stainless+Steel'),
(14, 'Hose', 'Sanitation', '1 1/2"', '', 'Ft.', '21.00', '3.80', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|315126&id=1581861'),
(15, 'Vent', 'Clamshell', '5" x 4 1/2" x 2"', 'Stainless', 'Each', '2.00', '15.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|6880|45749|320599|845203&id=1816519'),
(16, 'Valve', 'Y-Valve', '1 1/2" Barbs', '', 'Each', '1.00', '56.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|813148|316446&id=121038'),
(17, 'Tank', 'Holding Tank Fitting Relocation Kit ', '', '', 'Each', '0.00', '50.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|87367|315193&id=134960'),
(18, 'Vent', 'Cowl', ' 3" Dia. 5" Tall', 'Plastic', 'Each', '0.00', '25.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|6880|45749|320599|845203&id=1120909'),
(19, 'Thru-Hull', 'Straight ', '1 1/2"', 'Nylon', 'Each', '2.00', '16.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|316448|315123|567957&id=1296993'),
(20, 'Tank', 'Holding Tank 90 Degree Adapter Kit ', '', '', 'Each', '0.00', '25.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|87367|315193&id=940159'),
(21, 'Sheeting', '2 mil', '8''4" (100'' rolls)', 'Plastic', 'Ft.', '0.00', '0.35', 1, 1, '0.00', 'http://www.homedepot.com/h_d1/N-5yc1v/R-202184039/h_d2/ProductDisplay?catalogId=10053&langId=-1&keyword=plastic%20sheeting&storeId=10051'),
(22, 'Lumber', 'Teak', '1/2" x 2 1/2"', '', 'Linear Ft.', '0.00', '7.10', 1, 1, '0.00', 'http://marine-plywood.us/Boat-lumber-pricing.htm'),
(23, 'Lumber', 'Marine Plywood', '18mm', '', 'Sq. Ft.', '0.00', '3.22', 32, 32, '0.00', 'http://www.worldpanel.com/proddetail.asp?prod=HydroCore'),
(24, 'Lumber', 'Marine Plywood', '18mm', 'Teak & Holly Veneer', 'Sq. Ft.', '0.00', '6.90', 32, 32, '0.00', 'http://www.worldpanel.com/products.asp?cat=9'),
(25, 'Fiberglass', 'Tape', '8"', '', 'Yd.', '0.00', '2.10', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|16458|309345&id=16667'),
(26, 'Fiberglass', 'Tape', '3"', '', 'Yd.', '0.00', '0.95', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|16458|309345&id=16491'),
(27, 'Rope', 'Single Braid', '1/4"', 'Dyneema', 'Ft.', '0.00', '1.40', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|311417|314170|749705&id=1117343'),
(28, 'Life Line', 'Netting', '', '', 'Yd. As Installed', '0.00', '10.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|297400|1856400&id=363314'),
(29, 'Thimble', '', '1/4"', 'Nylon', 'Each', '0.00', '0.80', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|638271|296897&id=35360'),
(35, 'Engine Part', 'Choke Cable', '20''', '', 'Each', '0.00', '70.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&searchstart=120'),
(36, 'Rope', 'Double Braid Samson XL', '7/16"', 'Polyester', 'Ft.', '0.00', '1.16', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|311417|314169|913347&id=1258724'),
(37, 'Thimble', '', '3/8" - 7/16"', 'Stainless', 'Each', '0.00', '6.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|638271|296897&id=34546'),
(38, 'Strap', 'Tank Strap', '1" x 72"', '', 'Each', '0.00', '8.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|311|302335|7364|1846261&id=1845192'),
(39, 'Tether', 'Retractable Safety Tether', '1m - 2m', '', 'Each', '0.00', '100.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|135|88189&id=1685857'),
(40, 'Life Line', 'Turnbuckle, Toggle and Eye ', '', 'Stainless', 'Each', '0.00', '25.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|297400|312091&id=1256563'),
(42, 'Anchor', 'Manson Supreme', '25 lb.', 'Galvanized Steel', 'Each', '0.00', '265.00', 1, 1, '25.00', 'http://www.defender.com/product.jsp?path=-1|10391|33872|902122&id=901916'),
(43, 'Chain', 'BBB', '5/16"', 'Galvanized Steel', 'Ft.', '0.00', '3.15', 1, 1, '0.00', 'Minney''s'),
(44, 'Chain', 'G4', '5/16"', 'Galvanized Steel', 'Ft.', '60.00', '3.25', 1, 1, '0.00', 'Minney''s'),
(49, 'Windlass', 'Manual, Used', '', '', 'Each', '0.00', '500.00', 1, 1, '0.00', 'Minney''s'),
(50, 'Hose Clamp', 'Non-Perferated', '1 1/2" - 2 1/2"', 'Stainless', 'Each', '16.00', '3.50', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|316448|315124&id=169427'),
(51, 'Hose Clamp', 'Non-Perferated', '1" - 1 1/2"', 'Stainless', 'Each', '0.00', '3.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|316448|315124&id=169367'),
(52, 'Hose Clamp', 'Non-Perferated', '3/4" - 1 1/8"', 'Stainless', 'Each', '0.00', '2.60', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|316448|315124&id=169337'),
(53, 'Hose', 'Bilge Pump', '3/4"', '', 'Ft', '10.00', '1.30', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|315129&id=106835'),
(54, 'Thru-Hull', 'Straight', '3/4"', 'Plastic', 'Each', '0.00', '5.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|51|106370|316448|367124&id=146726'),
(55, 'Screw', 'Wood Screw', '#8 x 1"', 'Stainless', 'Each', '20.00', '0.12', 100, 100, '0.00', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=1903&familyName=%238+S%2FS+Wood+Screws+FP'),
(56, 'Hawse Pipe', '', '', 'Stainless', 'Each', '0.00', '50.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|32295|322380&id=1501885'),
(58, 'Tape', 'Hatch Gasket', '1/8" x 3/4" (7ft roll)', 'Vinyl', 'Ft.', '0.00', '1.00', 7, 7, '0.00', 'http://www.defender.com/product.jsp?path=-1|6880|6881|311415&id=1576753'),
(59, 'Hinge', 'Cabinet ', '', 'Stainless', 'Pair', '0.00', '7.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|311444|296159&id=25852'),
(60, 'Hinge', 'Door, Flush', '', 'Stainless', 'Each', '0.00', '14.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|311444|296159&id=578335'),
(61, 'Hinge', 'Door, Heavy Duty', '', 'Stainless', 'Pair', '0.00', '16.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|311444|296159&id=578235'),
(62, 'Pad Eye', '', '3 1/8" Base', 'Stainless', 'Each', '0.00', '40.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|311635|312081&id=117030'),
(63, 'Interior Light', 'Rope', '4 segments x 1ft', 'LED', 'Set', '0.00', '30.00', 1, 1, '0.00', 'http://www.ikea.com/us/en/catalog/products/20119418/'),
(64, 'Interior Light', 'Surface Mount Lamp', '8", 7W', 'Fluorescent', 'Each', '0.00', '24.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|328876|1116026&id=1037931'),
(65, 'Interior Light', 'Surface Mount Lamp', '', 'LED', 'Each', '1.00', '60.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|328876|1116026&id=1393763'),
(66, 'Interior Light', 'Surface Mount Lamp', '10", 13W', 'Fluorescent', 'Each', '0.00', '26.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|328876|1116026&id=1037912'),
(67, 'Nav Light', 'Red & Green Bow Combo', ' 2.4W', 'LED', 'Each', '0.00', '43.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|739053|760451&id=984593'),
(68, 'Nav Light', 'White Stern', '', 'LED', 'Each', '0.00', '50.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|295769|320397|528244&id=1465642'),
(69, 'Interior Light', 'Flexible Lamp Red/White', '', 'LED', 'Each', '0.00', '43.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|739053|1067284&id=1210867'),
(70, 'Interior Light', 'Reading Lamp', '10W', 'Halogen', 'Each', '0.00', '30.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|328876|1116023&id=1883570'),
(72, 'Nav Light', 'Steaming Lamp/Deck Flood Combo', '', '', 'Each', '0.00', '55.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|295769|320396|320404&id=64341'),
(73, 'Interior Light', 'Ceiling Lamp', '', 'LED', 'Each', '0.00', '26.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|739053|760445&id=747487'),
(74, 'Window', 'Lexan Scraps', '10 lb box', '', 'Each', '0.00', '16.00', 1, 1, '0.00', 'http://freckleface.com/shopsite_sc/store/html/product545.html'),
(77, 'Mirror', 'Fancy w/Teak Border', '15" x 11"', '', 'Each', '0.00', '49.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|302027|322430&id=101139'),
(78, 'Knotmeter', 'Signet Sensor Paddle Wheel Kit', '', '', 'Each', '1.00', '45.00', 1, 1, '0.00', 'http://www.signetmarine.com/PRODUCTS/pricelist/comp_price3.html'),
(79, 'Compass', 'Richie Navigator Old Style Replacement Dome', '', '', 'Each', '2.00', '59.00', 1, 1, '0.00', 'http://www.vikingcompass.com/ritoldnavpart.html'),
(80, 'Compass', 'Richie Navigator Old Style LED Light Kit', '', '', 'Each', '0.00', '24.00', 1, 1, '0.00', 'http://www.vikingcompass.com/navoldlight.html'),
(81, 'Container', 'Fancy Waterproof Laptop Case', '', '', 'Each', '0.00', '190.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|344|760427&id=88038'),
(82, 'Log Book', 'Maintenance', '', '', 'Each', '0.00', '23.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|17|315035&id=339947'),
(83, 'Log Book', 'Cruising', '', '', 'Each', '0.00', '23.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|17|315035&id=83239'),
(84, 'Log Book', 'Ship''s Log', '', '', 'Each', '0.00', '23.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|17|315035&id=83225'),
(85, 'Bulb', 'Festoon', '', 'LED', 'Each', '0.00', '22.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|65136|296901|1249269&id=1645280'),
(86, 'Engine Part', 'Freshwater Engine Cooling Kit', '', '', 'Each', '0.00', '715.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=CFWK&keywords=all&template=Templates/B000_storebuilder.html'),
(87, 'Sail', 'Gennaker', '', '', 'Each', '0.00', '2000.00', 1, 1, '0.00', 'North Sails'),
(88, 'Caulk', 'Sikaflex 291 Adhesive ', '10.3 oz', '', 'Tube', '0.00', '13.00', 1, 1, '0.00', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=3512&familyName=Sikaflex+291'),
(89, 'Fastener', 'Snap Adhesive Base', '', '', 'Each', '0.00', '2.03', 25, 1, '0.00', 'http://www.sailrite.com/YKK-SNAD-White-25mm-Adhesive-Backed-Flexible-Base-Stud'),
(90, 'Fastener', 'Snap Button', '', '', 'Each', '0.00', '0.23', 25, 1, '0.00', 'http://www.sailrite.com/Snap-Fastener-Button-White-3-16-Barrel-Nickel-Key-A'),
(91, 'Fastener', 'Snap Socket', '', '', 'Each', '0.00', '0.18', 25, 1, '0.00', 'http://www.sailrite.com/Snap-Fastener-Normal-Action-Socket-Stainless-Steel-Key-SSB'),
(92, 'Fastener', 'Snap Wood Screw Base', '', '', 'Each', '0.00', '0.32', 25, 1, '0.00', 'http://www.sailrite.com/Snap-Fastener-Screw-Stud-3-8-Stainless-Steel-Key-SSE'),
(94, 'Bolt', 'Hex Cap Machine Screw', '1/4" x 3/4"', 'Stainless', 'Each', '3.00', '0.14', 100, 100, '0.02', 'http://jamestowndistributors.com/userportal/show_product.do?pid=2223&familyName=1%2F4-20+S%2FS+Hex+Caps'),
(95, 'Rope', 'Double Braid Samson XLS', '7/16"', 'Polyester', 'Ft.', '0.00', '0.93', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|311417|314169|913347&id=36838'),
(96, 'Rope', 'Double Braid Samson XLS', '3/8"', 'Polyester', 'Ft.', '0.00', '0.76', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|311417|314169|913347&id=36459'),
(97, 'Wire Rope', '', '1/4" 1x19', '316 Stainless', 'Ft.', '0.00', '3.36', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|107602|297597&id=108067'),
(99, 'Wire Fitting', 'Swageless Stud', '1/4" wire, 5/16" thread', '316 Stainless', 'Each', '0.00', '37.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|107602|297595|312099&id=136088'),
(102, 'Wire Fitting', 'Turnbuckle, Jaw Only', '1/2" pin, 5/16" thread', '316 Stainless & Chromed Bronze', 'Each', '0.00', '74.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|107602|297402|823935&id=123904'),
(103, 'Zinc', 'Prop Shaft Donut', '7/8"', 'Zinc', 'Each', '0.00', '13.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|299255|319700&id=1119292'),
(106, 'Bottom Paint', 'Hard Bottomkote Aqua', '', '', 'Gallon', '0.00', '120.00', 1, 1, '20.00', 'http://www.defender.com/product.jsp?path=-1|10918|296162|11000|311496|368288|1183523&id=1833976&cartId=3190162'),
(107, 'Bottom Paint', 'Ablative ACT', '', '', 'Gallon', '0.00', '113.00', 1, 1, '20.00', 'http://www.defender.com/product.jsp?path=-1|10918|296162|11000|311496|368287&id=730074'),
(108, 'Tool', 'Snap Fastener Anvil', '', '', 'Each', '0.00', '30.00', 1, 1, '0.00', 'http://www.sailrite.com/snap-fastener-deluxe-installation-tool'),
(109, 'Tool', 'Fabric Hole Punch', '', '', 'Each', '0.00', '15.00', 1, 1, '0.00', 'http://www.amazon.com/SE-Professional-Leather-Punch-Plier/dp/B0007MX288/ref=sr_1_2?ie=UTF8&qid=1331349708&sr=8-2'),
(110, 'Tool', 'Harness Rescue Combo', '', '', 'Each', '0.00', '16.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|135|88189&id=1590660'),
(112, 'Snap Hook', '', '5/16"', 'Stainless', 'Each', '0.00', '24.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|118|2186|312065&id=125740'),
(114, 'Saftey', 'Emergency Ladder', '', '', 'Each', '0.00', '33.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|109363&id=1343784'),
(115, 'Rope', 'Three Strand', '1/2"', 'Nylon', 'Ft.', '0.00', '0.62', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|311417|35699&id=36180'),
(116, 'Coveralls', 'Disposable w/Hood', 'Large', '', 'Each', '0.00', '3.35', 12, 12, '0.00', 'http://www.amazon.com/Magid-EconoWear-Polypropylene-Disposable-Coverall/dp/B004OEJIE2/ref=sr_1_2?s=industrial&ie=UTF8&qid=1331616867&sr=1-2'),
(117, 'Bolt', 'Philips Flat Head', '1/4" x 1 1/2"', 'Stainless', 'Each', '2.00', '0.15', 100, 100, '0.02', 'http://jamestowndistributors.com/userportal/show_product.do?pid=489&familyName=1%2F4-20+S%2FS+Machine+Screws+FP'),
(118, 'Stove', 'Force 10 Eno 2 Burner', '10" x 20" x 15.5"', 'Stainless', 'Each', '0.00', '340.00', 1, 1, '16.00', 'http://www.defender.com/product.jsp?path=-1|406|694|319790&id=1125571'),
(120, 'Gas Detector', 'CO Detector', '', '', 'Each', '1.00', '4.00', 1, 1, '0.00', 'Minney''s'),
(121, 'LPG Part', 'Solenoid, Detector and Control Kit', '', '', 'Each', '0.00', '325.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322410&id=731239'),
(122, 'Gas Detector', 'Gasoline Fume Detector', '', '', 'Each', '0.00', '142.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|135|296545|747123&id=122154'),
(123, 'Gas Detector', 'Propane Detector', '', '', 'Each', '0.00', '140.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322410&id=122124'),
(124, 'LPG Part', 'Bracket-Mount Regulator With Pigtail', '', '', 'Each', '0.00', '78.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322410&id=59342'),
(125, 'LPG Part', 'Hose', '10''', '', 'Each', '0.00', '45.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322409&id=1774401'),
(126, 'LPG Part', 'Thru-Fitting', '', '', 'Each', '0.00', '15.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322409&id=730734'),
(127, 'Tank', 'LPG Tank', '12" dia. x 15" 11 gal.', '', 'Each', '0.00', '105.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|406|301237|322407&id=1065959'),
(128, 'Tank', 'Jerry Can', '2.5 gal.', '', 'Each', '0.00', '19.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|311|302335|7364|939812&id=811386'),
(129, 'Electrical', 'Toggle Switch SPST', '', '', 'Each', '1.00', '5.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|303333|1017101&id=913839'),
(130, 'Electrical', 'Duplex Wire', '16 AWG', '', 'Ft.', '0.00', '0.45', 100, 100, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|316476&id=127820'),
(131, 'Electrical', 'Primary Wire', '16 AWG', '', 'Ft.', '0.00', '0.18', 100, 100, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|316475|579425&id=863521'),
(132, 'Electrical', 'Heatshrink, Adhesive', '16-10 AWG', '', 'in.', '10.00', '0.30', 60, 60, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|299256&id=127925'),
(133, 'Electrical', 'Ring Terminal', '16-14 AWG #8 screw', '', 'Each', '10.00', '0.30', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316480&id=133180'),
(134, 'Electrical', 'Ring Terminal Heatshrink', '16-14 AWG #8 screw', '', 'Each', '0.00', '0.80', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316480&id=50323'),
(135, 'Electrical', 'Butt Connector Heatshrink', '16-14 AWG', '', 'Each', '0.00', '0.80', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316479&id=112307'),
(136, 'Electrical', 'Ring Terminal Heatshrink', '12-10 AWG, 1/4" screw', '', 'Each', '0.00', '1.08', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316480&id=50353'),
(137, 'Electrical', 'Ring Terminal', '12-10 AWG, 1/4" screw', '', 'Each', '10.00', '0.44', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316480&id=49985'),
(138, 'Electrical', 'Butt Connector', '16-14 AWG', '', 'Each', '10.00', '0.24', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316479&id=112262'),
(139, 'Electrical', 'Butt Connector', '12-10 AWG', '', 'Each', '10.00', '0.38', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316479&id=112277'),
(140, 'Electrical', 'Butt Connector Heatshrink', '12-10 AWG', '', 'Each', '0.00', '1.40', 25, 25, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49758|112306|316479&id=112335'),
(141, 'Electrical', 'Indicator Light, Red', '', 'LED', 'Each', '0.00', '3.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|299263|319684|1506461&id=1446685'),
(142, 'Chain Snubber', '', '20" - 38"', '', 'Each', '0.00', '55.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10391|296895|321828&id=1501905'),
(143, 'Lumber', 'Marine Plywood', '1/2"', '', 'Each', '0.00', '2.67', 32, 32, '0.00', 'http://www.worldpanel.com/proddetail.asp?prod=HydroCore'),
(144, 'Lumber', 'White Oak', '3/4" x 2"', '', 'Linear Ft.', '0.00', '0.90', 1, 1, '0.00', 'http://marine-plywood.us/Boat-lumber-pricing.htm'),
(145, 'Nut', 'Acorn Nut', '1/4"', 'Stainless', 'Each', '0.00', '0.14', 100, 100, '0.00', 'http://jamestowndistributors.com/userportal/show_product.do?pid=1885&familyName=S%2FS+Acorn+%28Cap%29+Nuts'),
(146, 'Washer', '', '1/4" x 5/8" o.d.', 'Stainless', 'Each', '0.00', '0.02', 100, 100, '0.00', 'http://jamestowndistributors.com/userportal/show_product.do?pid=1906&familyName=S%2FS+Flat+Washers'),
(147, 'Varnish', 'Clear', '', '', 'Qt.', '0.00', '29.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|10918|296162|10952|311505&id=12909'),
(148, 'Electrical', 'Circuit Breaker', 'Various Amperages', '', 'Each', '0.00', '14.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|296553|299262|825439&id=672554'),
(149, 'Cloth', 'Sunbrella Canvas Vellum', '54"', 'Acrylic', 'Yd.', '0.00', '18.00', 1, 1, '0.00', 'http://www.sailrite.com/Sunbrella-5498-0000-Canvas-Vellum-54'),
(150, 'Shackle', '', '5/16" x 2" x 1"', 'Stainless', 'Each', '0.00', '12.00', 1, 1, '0.00', 'Minney''s'),
(151, 'Sextant', 'Used, Beautiful', '', '', 'Each', '0.00', '325.00', 1, 1, '0.00', 'Minney''s'),
(152, 'Ship Bell', '', '8" Dia.', '', 'Each', '0.00', '38.00', 1, 1, '0.00', 'Minney''s'),
(153, 'Tool', 'Cable Cutter', '', '', 'Each', '0.00', '195.00', 1, 1, '0.00', 'Minney''s'),
(154, 'Eye Strap', '', '3/4" Eye', '', 'Each', '0.00', '1.00', 1, 1, '0.00', 'Minney''s'),
(155, 'PFD', 'Used Life Jackets Type I', '', '', 'Each', '4.00', '5.00', 1, 1, '0.00', 'Minney''s'),
(156, 'Pins', 'Used', '1/2"', 'Stainless', 'Each', '0.00', '1.00', 1, 1, '0.00', 'Minney''s'),
(157, 'Winch', 'Halyard 2 Speed', '3" Drum', '', 'Each', '0.00', '150.00', 1, 1, '0.00', 'Minney''s'),
(158, 'Fasteners', 'Miscellaneous', '', 'Stainless', 'lb.', '20.00', '7.00', 1, 1, '0.00', 'Minney''s'),
(159, 'Thru-Hull', 'Used', '1/2" - 2"', 'Bronze', 'Each', '0.00', '20.00', 1, 1, '0.00', 'Minney''s'),
(160, 'Shackle', 'Anchor', '1/2"', 'Galvanized Steel', 'Each', '0.00', '4.00', 1, 1, '0.00', 'Minney''s'),
(161, 'Rope', 'Samson XLS Yacht Braid Tracer', '1/2"', 'Polyester', 'Ft.', '0.00', '0.90', 1, 1, '0.00', 'Minney''s'),
(162, 'Windows', 'Used Opening Portlight, Still In Bulkhead', '8" x 12"', 'Aluminum', 'Each', '0.00', '30.00', 1, 1, '0.00', 'Minney''s'),
(163, 'Windows', 'Used Opening Portlight', '6" x 12"', 'Bronze & Glass', 'Each', '0.00', '200.00', 1, 1, '0.00', 'Minney''s'),
(164, 'Windows', 'Used Opening Portlight', '6" x 12"', 'Stainless & Glass', 'Each', '0.00', '130.00', 1, 1, '0.00', 'Minney''s'),
(165, 'Windows', 'Used Crusty Perko Portlight', '', '', 'Each', '0.00', '40.00', 1, 1, '0.00', 'Minney''s'),
(166, 'Windows', 'Portlight', '12" x 4"', 'Plastic', 'Each', '0.00', '80.00', 1, 1, '0.00', 'Minney''s'),
(167, 'Nav Light', 'Combo Bow Light', '', 'Plastic', 'Each', '0.00', '25.00', 1, 1, '0.00', 'Minney''s'),
(168, 'Deck Fill', 'Miscellaneous Used', '', 'Bronze', 'Each', '0.00', '25.00', 1, 1, '0.00', 'Minney''s'),
(169, 'Bow Roller', 'Various', ' ', 'Stainless', 'Each', '0.00', '125.00', 1, 1, '0.00', 'Minney''s'),
(170, 'Windows', 'Fixed Portlights', '', 'Aluminim', 'Each', '0.00', '50.00', 1, 1, '0.00', 'Minney''s'),
(171, 'Gague', 'Miscellaneous Used', '', '', 'Each', '0.00', '20.00', 1, 1, '0.00', 'Minney''s'),
(172, 'Electrical', 'Wire, All Sizes', '', '', 'lb.', '0.00', '6.00', 1, 1, '0.00', 'Minney''s'),
(173, 'Electrical', 'Shore Power Cable, Used (Cheapest)', '', '', 'Each', '1.00', '70.00', 1, 1, '0.00', 'Minney''s'),
(174, 'Fridge Part', 'Compressor', '', '', 'Each', '0.00', '500.00', 1, 1, '0.00', 'Minney''s'),
(175, 'Electrical', 'Marine Battery Charger, Used (Cheapest)', '', '', 'Each', '0.00', '100.00', 1, 1, '0.00', 'Minney''s'),
(176, 'Electrical', 'Marine Battery Charger, Used (Expensive)', '', '', 'Each', '0.00', '200.00', 1, 1, '0.00', 'Minney''s'),
(177, 'Electrical', 'Shore Power Cable, Used (Most Expensive)', '', '', 'Each', '0.00', '200.00', 1, 1, '0.00', 'Minney''s'),
(178, 'Windows', 'Fixed Portlights', 'Various', 'Aluminum, Poly', 'Each', '0.00', '65.00', 1, 1, '0.00', 'Minney''s'),
(179, 'Epoxy', 'Sponge Brush', '2"', '', 'Each', '0.00', '0.50', 36, 36, '0.00', 'Minney''s'),
(180, 'Band Clamp', '', '8"+', 'Stainless', 'Each', '0.00', '8.00', 1, 1, '0.00', 'Minney''s'),
(181, 'Hatch', 'Opaque, Various (Smaller)', '', 'Plastic', 'Each', '0.00', '30.00', 1, 1, '0.00', 'Minney''s'),
(182, 'Hatch', 'Opaque, Various (Larger)', '', 'Plastic', 'Each', '0.00', '60.00', 1, 1, '0.00', 'Miney''s'),
(183, 'Window', 'Lexan Sheet', '1/4" x 1'' x 2''', 'UV Protected Polycarbonate', 'Each', '0.00', '14.40', 1, 1, '4.75', 'http://freckleface.com/shopsite_sc/store/html/product99.html#99'),
(184, 'Thru-Hull', '90 Degree Bend', '1 1/2" Hose', 'Polypropylene', 'Each', '0.00', '15.50', 1, 1, '0.00', 'http://www.jamestowndistributors.com/userportal/product.do?part=110919&BASE'),
(185, 'Compass', 'Ritchie Compass Oil', '', '', 'Quart', '0.50', '20.00', 1, 1, '0.00', 'http://www.vikingcompass.com/qucooil.html'),
(186, 'Window', 'Acrylic Sheet', '3/8" x 1''x 2''', 'Acrylic', 'Each', '7.00', '16.00', 1, 1, '4.75', ''),
(187, 'Rope', 'Solid Braid Samson Utility', '3/16"', 'Nylon', 'Ft.', '0.00', '0.08', 1, 1, '0.03', 'http://www.defender.com/product.jsp?path=-1|118|311417|311408&id=440128&cartId=3689340'),
(188, 'Bolt', 'Philips Pan Head Machine Screw', '#10 x 1"', 'Stainless', 'Each', '200.00', '0.08', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/product.do?process=checkout&part=9827'),
(189, 'Nut', 'Hex Nut', '#10', 'Stainless', 'Each', '200.00', '0.04', 100, 100, '0.02', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=1889&familyName=S%2FS+Hex+Nuts\r\n'),
(190, 'Washer', '', '#10  x 7/16" o.d.', 'Stainless', 'Each', '200.00', '0.04', 100, 100, '0.00', 'http://www.jamestowndistributors.com/userportal/show_product.do?pid=1906&familyName=S%2FS+Flat+Washers'),
(191, 'Engine Part', 'Exhaust wrap kit', '2" x 15''', '', 'Each', '0.00', '21.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=EXHT'),
(192, 'Engine Part', 'Standpipe', '', 'Stainless', 'Each', '0.00', '495.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=EXHT'),
(193, 'Engine Part', 'Water Temperature Gauge', '', '', 'Each', '0.00', '66.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=GAUG'),
(194, 'Engine Part', 'SW Oil Pressure Gauge', '', '', 'Each', '0.00', '65.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=GAUG'),
(195, 'Engine Part', 'Hour Meter', '', '', 'Each', '0.00', '35.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=GAUG'),
(196, 'Valve', 'Fuel Shutoff Valve', '', 'Bronze', 'Each', '0.00', '24.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|311|302335|314210&id=1728258'),
(197, 'Engine Part', 'Exhaust Flex Section', '2" ID x 6"', 'Stainless', 'Each', '0.00', '20.00', 1, 1, '0.00', 'All over the internet, auto shops, etc.'),
(198, 'Engin Part', 'Oil Change Kit', '', '', 'Each', '0.00', '38.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=KTAS&keywords=all&template=Templates/B000_storebuilder.html'),
(200, 'Engine Part', 'Quick Release Throttle Cable Connector', '', '', 'Each', '0.00', '8.50', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=FCAR'),
(201, 'Engine Part', 'Adjustable Carb Main Jet', '', '', 'Each', '0.00', '41.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=FCAR'),
(203, 'Tank', 'Jerry Can', '5 gal.', '', 'Each', '1.00', '30.00', 1, 1, '0.00', 'http://www.amazon.com/No-Spill-1450-5-Gallon-Poly-Compliant/dp/B000W9JN4S/ref=sr_1_2?ie=UTF8&qid=1346321860&sr=8-2&keywords=gas+can'),
(204, 'Engine Part', 'Exhaust Paint', '', '', 'Can', '0.00', '9.50', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=EXHT'),
(205, 'Engine Part', 'Manifold Gasket', '', '', 'Each', '0.00', '8.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=GASK'),
(206, 'Engine Part', 'Exhaust Flange Gasket', '', '', 'Each', '0.00', '3.00', 1, 1, '0.00', 'http://www.moyermarine.com/cgi-bin/shopper.cgi?search=action&category=GASK'),
(207, 'Wire Rope', 'Spool', '1/4" 1x19', '316 Stainless', 'Ft.', '0.00', '2.40', 1, 250, '0.14', 'http://www.jamestowndistributors.com/userportal/product.do?process=checkout&part=6259'),
(208, 'Electrical', 'Solar Panel 12V 140W', '58.25" x 26.75" x 1.365"', '', 'Each', '0.00', '203.00', 1, 1, '20.00', 'http://www.solarblvd.com/Solar-Panels-&-Systems-12-Volt-Solar-Panels/c1_269/p2668/Solar-Cynergy-140-Watt-12-Volt-Solar-Panel/product_info.html'),
(209, 'Electrical', 'Solar Charge Controller 25A', '', '', 'Each', '0.00', '140.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49497|1471357&id=1392858'),
(210, 'Electrical', 'Solar Charge Controller 25A', '', '', 'Each', '0.00', '140.00', 1, 1, '0.00', 'http://www.defender.com/product.jsp?path=-1|328|49497|1471357&id=1392858'),
(211, 'Electrical', 'Battery', '6V 208Ah', 'Wet Cell Lead Acid', 'Each', '0.00', '95.00', 1, 1, '27.00', 'http://www.batteries4everything.com/index.php?main_page=product_info&cPath=136&products_id=775'),
(212, 'Electrical', 'Battery Box (Dual 6V)', '', '', 'Each', '0.00', '65.00', 1, 1, '9.50', 'http://www.goodboatgear.com/detail/18430/'),
(213, 'Electrical', 'Solar Panel 12V 135W Kyorela', '60" x 27" x 2"', '', '', '0.00', '370.00', 2, 1, '30.00', 'http://www.solarhome.org/kyocerakd-135-sx-upu135wsolarpanel.aspx'),
(214, 'Spar', 'Tube', '2"  OD x 0.65" Wall x 12'' Long', 'Aluminum', 'Each', '0.00', '50.00', 1, 1, '10.00', 'https://www.speedymetals.com/p-4604-2-od-x-065-wall-tube-6061-t6-aluminum.aspx'),
(215, 'Tarp', 'Polytarp', '16'' x 32'' Nominal', 'LDPE', 'Each', '0.00', '70.00', 1, 1, '11.00', 'http://www.a1tarps.com/product.jhtm?id=195&cid=21');

-- --------------------------------------------------------

--
-- Stand-in structure for view `materials_needed_by_priority`
--
CREATE TABLE IF NOT EXISTS `materials_needed_by_priority` (
`Description` text
,`PriceInfo` varchar(360)
,`Needed` decimal(65,2)
,`Cost` decimal(65,2)
,`Mean Livaboard Priority` decimal(65,6)
,`Mean Daysail Priority` decimal(65,6)
,`Mean Coastal Crusing Priority` decimal(65,6)
,`Mean Ocean Passage Priority` decimal(65,6)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `material_descriptions`
--
CREATE TABLE IF NOT EXISTS `material_descriptions` (
`Material ID` int(10) unsigned
,`Description` text
,`PriceInfo` varchar(360)
);
-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` char(128) NOT NULL,
  `Description` tinytext CHARACTER SET latin1 NOT NULL,
  `Hours Estimate` decimal(65,2) NOT NULL,
  `Notes` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Helpers Needed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Liveaboard Priority` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `Daysail Priority` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `Coastal Crusing Priority` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `Ocean Passage Priority` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `Completed` tinyint(1) NOT NULL DEFAULT '0',
  `Superceded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ID`, `Name`, `Description`, `Hours Estimate`, `Notes`, `Helpers Needed`, `Liveaboard Priority`, `Daysail Priority`, `Coastal Crusing Priority`, `Ocean Passage Priority`, `Completed`, `Superceded`) VALUES
(0, 'Alcohol Stove', 'Install Origo Stove', '5.00', '', 0, 1, 8, 1, 1, 0, 0),
(1, 'Electrical Panel with Breakers', 'Rewire electrical panel with breakers instead of fuses.', '16.00', '', 0, 2, 2, 1, 1, 0, 0),
(2, 'Sell Spinnakers', 'Put spinnakers on craigslist or email minnies', '4.00', '', 0, 8, 8, 4, 3, 0, 0),
(3, 'Clean the Bilge', 'Clear all the water and scrub the alge out', '2.00', '', 0, 4, 4, 4, 4, 0, 0),
(4, 'Steaming Lamp', 'Reinstall the steaming lamp on the mast, including running wiring inside the mast', '4.00', 'Going aloft', 1, 9, 4, 3, 2, 0, 1),
(5, 'Anchor Lamp', 'Inspect anchor lamp when mast comes down', '5.00', '', 1, 3, 9, 4, 3, 0, 0),
(7, 'Bolt Down Pulpits and Stanchions', 'Check and replace missing bolts on pulpits and stanchions', '3.00', '', 0, 5, 1, 1, 1, 0, 0),
(8, 'Foresail Deck Back', 'Design and fabricate a bag to protect the foresail without pulling it off the forestay', '12.00', '', 0, 5, 3, 3, 3, 0, 0),
(9, 'Stove Fuel Tank', 'Buy and install a 5 gallon fuel tank near the stove', '4.00', 'Now have a 5 gallon jerry can for this purpose.', 0, 2, 9, 5, 2, 1, 0),
(10, 'Transmission Cable', 'Remove existing transmission cable, measure it, order a new one, and install it', '8.00', 'Need to cut out port icebox to access transmission cable', 0, 2, 1, 1, 1, 0, 1),
(11, 'Windows', 'Fabricate new portlights out of acrylic and install them (7 windows)', '24.00', '4: 22" x 8" = 60" circ.\n1: 18" x 8" = 52" circ\n2: 14" x 8" = 44" circ\n                  = 380"\n____________________\n                      380" circumfrence\nStarboard:\nHole: 24.5" x 8.25"\nHole: 23.5" x 8.5"\nHole: 14" x 7"\nHole: 14" x 7"', 0, 1, 2, 2, 2, 0, 0),
(13, 'Paint Bottom', 'Sand, prep and paint the hull', '16.00', 'Needs haulout', 2, 8, 3, 4, 4, 0, 0),
(14, 'Eybolts on Cockpit', 'Install eyebolts so tiller can be lashed for vane steering', '2.00', '', 0, 9, 4, 1, 1, 0, 0),
(15, 'Service Winches', 'Take apart the winches and grease them', '4.00', '', 0, 9, 2, 2, 2, 0, 1),
(16, 'V-Berth Hatch', 'V-Berth hatch is quite leaky and needs to be resealed', '4.00', '', 0, 2, 8, 5, 5, 0, 0),
(17, 'Kayak', 'Fix up the kayak at Josh''s, if it''s still there, or buy another', '8.00', '', 0, 7, 9, 5, 5, 0, 1),
(18, 'Alternator Diode', 'Install alternator diode so batteries can be hooked up to charge', '2.00', '', 0, 5, 5, 5, 5, 0, 1),
(19, 'Shroud Chainplate', 'Fill voids with epoxy when sealing deck', '2.00', '', 0, 8, 4, 2, 1, 0, 1),
(20, 'Stanchion Backplates', 'Glass in plywood backplates and re-bed all lifeline stanchions.', '10.00', '', 0, 7, 3, 3, 3, 0, 1),
(21, 'Lifelines', 'Replace the old rusted lifelines', '4.00', '24'' each', 0, 8, 3, 3, 3, 0, 1),
(22, 'Choke Cable', 'Install a new choke cable\n', '1.00', '', 0, 8, 2, 2, 2, 0, 1),
(23, 'Main Halyard', 'Buy and install a new halyard that''s long enough to be run to the cockpit', '3.00', '', 0, 5, 4, 3, 2, 0, 1),
(25, 'Standing Rigging', 'Measure, buy and install new standing rigging to replace old rod rigging', '24.00', 'Pins are 1/2"\nForestay 41.25''/22.5''\nShrouds 40.25''/20.5''\nAftstay 44.75''', 1, 8, 5, 1, 1, 0, 1),
(26, 'Salon Hatch', 'Reverse the hatch over the salon so that the boom vang can be installed', '3.00', '', 0, 8, 5, 3, 3, 0, 1),
(27, 'Fuel Water Separator', 'Hook up the fuel-water seperator so the carb doesn''t get clogged', '2.00', '', 0, 5, 1, 1, 1, 0, 1),
(28, 'Gas Pump Starter Bypass', 'Install a relay to activate gas pump when starter is cranking', '2.00', '', 0, 8, 5, 5, 5, 0, 1),
(29, 'Bow Cleat', 'Glass in plywood backing plate for bow cleat', '3.00', '', 0, 8, 6, 2, 2, 0, 0),
(31, 'Boom Vang', 'Contact manufacturer to get different mast end, then install it', '5.00', 'Depends on Reverse Hatch', 0, 8, 4, 3, 3, 0, 1),
(32, 'Bilge Topside Drainage', 'Route auto bilge pump output into output side of manual pump so it goes overboard', '3.00', '', 0, 3, 5, 3, 3, 0, 0),
(33, 'Head sink drainage', 'Remove head sink (so it stops filling with water) and cover the hole left with plywood.', '4.00', '', 0, 2, 2, 2, 2, 0, 0),
(35, 'Bilge Hatch', 'Create and install new bilge hatch, perhaps matching with even floor nearby', '12.00', '', 0, 4, 8, 6, 4, 0, 0),
(36, 'Stern Chainlocker', 'Build and install a chainlocker aft of the tiller for the stern anchor', '8.00', '', 0, 6, 3, 3, 3, 0, 0),
(37, 'Bow Chainlocker', 'Install plywood and/or heavy webbing so that chain in the bow locker doesn''t trash the hull', '12.00', 'Alternatively, in the longer term, install two chainlockers toward the sides of the hull just in front of thethe door to the v-berth.', 0, 8, 4, 3, 3, 0, 0),
(38, 'Gas Tank', 'Buy and install a new 12-gallon gas tank with fittings', '8.00', '', 0, 9, 7, 5, 2, 0, 1),
(39, 'Inspect Old Gas Tank', 'Pull out, empty and inspect existing gas tank to determine if it''s fit for continued service', '5.00', '', 0, 9, 8, 4, 3, 0, 1),
(40, 'Port Deck', 'Remove port headliner under deck, pull up all port deck fittings, drill holes to check for core rot, dry any wet core, tape up holes, fill with expoxy, reattach deck hardware', '48.00', '', 1, 5, 5, 3, 2, 0, 0),
(41, 'Jacklines', 'Install jacklines on both sides of the cabin, from bow to stern', '12.00', '', 0, 8, 3, 2, 1, 0, 0),
(42, 'Salon Lighting', 'Install LED lighting above salon table', '2.00', '', 0, 2, 8, 6, 3, 0, 0),
(43, 'Stern Cleats', 'Install the stern cleats that came with the boat on the stern', '5.00', '', 1, 5, 5, 5, 5, 0, 0),
(45, 'Oil Pressure Ignition Cutoff', 'Install a relay attached to the oil presure cuttof switch that will cut off ignition power in addition to fuel pump power if oil pressure cuts out. Must have timer for starting grace period. ', '5.00', '', 0, 8, 4, 4, 4, 0, 1),
(46, 'Mirror in Head', 'Install a stainless steel mirror in the head', '1.00', '', 0, 4, 9, 9, 5, 0, 0),
(47, 'Curtains', 'Get snaps and install curtains', '5.00', '', 0, 3, 9, 9, 5, 0, 0),
(48, 'Knotmeter Impeller', 'Buy and install impeller for knotmeter', '1.00', '', 0, 8, 5, 3, 1, 0, 0),
(49, 'Dive Setup', 'Get oxygen tank recertified and buy mask and regulator', '4.00', '', 0, 4, 4, 4, 4, 0, 0),
(50, 'LED Masthead Light', 'Buy and instal an LED bulb in the masthead light', '1.00', '', 1, 8, 6, 3, 1, 0, 0),
(51, 'Rain Catch System', 'Devise and set up a system for catching and potentially filtering rainwater', '4.00', '', 0, 8, 8, 5, 3, 0, 0),
(52, 'Freshwater Engine Cooling', 'Buy and install freshwater cooling kit for A4', '8.00', '', 0, 8, 8, 5, 4, 0, 1),
(53, 'Mast Collar', 'Get the correct bolts for the mast collar, so they don''t spin loose or rust', '1.00', '', 0, 8, 5, 4, 3, 0, 1),
(54, 'Third Reef In Mainsail', 'Contact North Sails and have them install a third reef in the main', '4.00', '', 0, 8, 6, 3, 1, 0, 1),
(55, 'Gennaker', 'Buy a gennaker for light weather downwind sailing', '2.00', '', 0, 9, 6, 3, 3, 0, 1),
(57, 'Propane Stove System', 'Buy and install transom-mounted propane tanks, a regulator, solenoid, line, and stove.', '24.00', 'Mostly just a theoretical cost calculation', 0, 9, 9, 9, 9, 0, 1),
(58, 'Cruising Anchor Gear', 'Buy and install a windlass and 250'' of chain.', '32.00', '', 0, 9, 9, 8, 3, 0, 0),
(59, 'Compasses', 'Buy and install compass domes, LED lights, and compass fluid.', '3.00', ' ', 0, 5, 2, 1, 1, 0, 0),
(60, 'Window Trim', 'Once new windows are installed, salvage/buy new/used hardwood trim for interior and exterior', '24.00', '380" total circumfrence for non-opening windows  * 2 ~= 64'' of something like 3/4" x 2" (actual) lumber.', 1, 8, 7, 7, 7, 0, 0),
(61, 'Engine Exhaust', 'Pull the exhaust manifold, clean it out, extract black iron pipe leading to standpipe. Clean up standpipe, evaluate need to disassemble and reassemble with new copper jacket. Rebuild hot section with new pipe and stainless flex hose, paint, and wrap.', '16.00', ' ', 0, 4, 1, 1, 1, 0, 1),
(62, 'Install Fiddles and Tiedowns', 'Install fiddles and/or tiedowns for stuff inside the boat so it doesn''t go flying at sea.', '16.00', ' ', 0, 4, 1, 1, 1, 0, 0),
(63, 'Finished Yuloh', 'Finish the yuloh with the spinnaker pole as a loom.', '8.00', ' ', 0, 5, 2, 2, 2, 0, 0),
(64, 'Solar Electric Setup', 'Solar panels, charger and battery banks', '16.00', ' Still need to calculate mounting options', 0, 3, 6, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_cost`
--
CREATE TABLE IF NOT EXISTS `project_cost` (
`Project ID` int(10) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `project_dependencies`
--

CREATE TABLE IF NOT EXISTS `project_dependencies` (
  `ID` int(10) unsigned NOT NULL,
  `Project ID` int(10) unsigned NOT NULL,
  `Dependency ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Project ID` (`Project ID`),
  KEY `Dependency ID` (`Dependency ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_dependencies`
--

INSERT INTO `project_dependencies` (`ID`, `Project ID`, `Dependency ID`) VALUES
(0, 9, 0),
(1, 39, 38),
(2, 58, 37);

-- --------------------------------------------------------

--
-- Table structure for table `project_materials`
--

CREATE TABLE IF NOT EXISTS `project_materials` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Project ID` int(10) unsigned NOT NULL,
  `Material ID` int(10) unsigned NOT NULL,
  `Quantity` decimal(65,2) unsigned NOT NULL DEFAULT '1.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Project and Material ID` (`Project ID`,`Material ID`),
  KEY `Material ID` (`Material ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `project_materials`
--

INSERT INTO `project_materials` (`ID`, `Project ID`, `Material ID`, `Quantity`) VALUES
(2, 8, 2, '2.00'),
(3, 8, 5, '1.00'),
(4, 52, 86, '1.00'),
(5, 32, 53, '15.00'),
(6, 32, 54, '1.00'),
(7, 32, 52, '4.00'),
(8, 32, 6, '0.25'),
(9, 47, 89, '32.00'),
(10, 47, 90, '32.00'),
(11, 47, 91, '32.00'),
(13, 8, 3, '1.00'),
(17, 55, 87, '1.00'),
(18, 22, 35, '1.00'),
(19, 14, 13, '2.00'),
(20, 14, 94, '2.00'),
(21, 38, 4, '1.00'),
(22, 23, 161, '85.00'),
(23, 23, 29, '1.00'),
(24, 25, 207, '230.00'),
(25, 25, 99, '14.00'),
(26, 25, 102, '7.00'),
(27, 41, 27, '80.00'),
(28, 41, 62, '3.00'),
(29, 41, 9, '12.00'),
(30, 41, 6, '1.00'),
(31, 41, 11, '12.00'),
(34, 41, 39, '2.00'),
(36, 48, 78, '1.00'),
(37, 46, 77, '1.00'),
(39, 13, 106, '1.25'),
(40, 7, 1, '4.00'),
(44, 43, 117, '8.00'),
(45, 43, 11, '8.00'),
(46, 43, 10, '8.00'),
(47, 57, 127, '2.00'),
(48, 57, 124, '1.00'),
(49, 57, 125, '1.00'),
(51, 57, 126, '1.00'),
(52, 57, 130, '10.00'),
(55, 57, 118, '1.00'),
(59, 58, 44, '250.00'),
(60, 58, 49, '1.00'),
(61, 36, 56, '1.00'),
(62, 4, 72, '1.00'),
(63, 4, 130, '25.00'),
(64, 4, 132, '5.00'),
(65, 20, 143, '8.00'),
(66, 20, 25, '20.00'),
(67, 20, 12, '0.50'),
(68, 40, 9, '65.00'),
(69, 40, 10, '65.00'),
(70, 40, 11, '65.00'),
(71, 40, 12, '1.00'),
(72, 40, 6, '100.00'),
(73, 42, 65, '1.00'),
(74, 42, 131, '20.00'),
(75, 42, 133, '2.00'),
(76, 42, 141, '3.00'),
(77, 21, 27, '50.00'),
(79, 11, 186, '7.00'),
(81, 11, 188, '130.00'),
(82, 11, 189, '130.00'),
(83, 11, 190, '130.00'),
(84, 11, 6, '32.00'),
(85, 1, 148, '12.00'),
(90, 57, 121, '1.00'),
(94, 50, 85, '1.00'),
(95, 47, 109, '1.00'),
(96, 47, 108, '1.00'),
(97, 47, 149, '3.00'),
(99, 10, 7, '1.00'),
(102, 59, 80, '2.00'),
(103, 59, 79, '2.00'),
(104, 59, 132, '1.00'),
(105, 59, 185, '1.00'),
(106, 21, 187, '320.00'),
(107, 60, 144, '65.00'),
(108, 60, 9, '100.00'),
(116, 60, 145, '100.00'),
(117, 60, 146, '100.00'),
(118, 61, 197, '1.00'),
(119, 61, 191, '1.00'),
(120, 61, 204, '1.00'),
(121, 61, 205, '1.00'),
(122, 61, 206, '1.00'),
(123, 0, 0, '1.00'),
(124, 62, 13, '10.00'),
(125, 62, 117, '10.00'),
(126, 64, 208, '1.00'),
(127, 64, 210, '1.00'),
(128, 64, 130, '20.00'),
(129, 64, 211, '2.00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_materials_by_priority`
--
CREATE TABLE IF NOT EXISTS `project_materials_by_priority` (
`Project ID` int(10) unsigned
,`Material ID` int(10) unsigned
,`Needed` decimal(65,2)
,`Cost` decimal(65,2)
,`Liveaboard Priority` tinyint(3) unsigned
,`Daysail Priority` tinyint(3) unsigned
,`Coastal Crusing Priority` tinyint(3) unsigned
,`Ocean Passage Priority` tinyint(3) unsigned
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `project_materials_composite`
--
CREATE TABLE IF NOT EXISTS `project_materials_composite` (
`Project ID` int(10) unsigned
,`Description` text
,`Quantity` decimal(65,2) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `project_materials_cost_total`
--
CREATE TABLE IF NOT EXISTS `project_materials_cost_total` (
`Project ID` int(10) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `project_material_costs`
--
CREATE TABLE IF NOT EXISTS `project_material_costs` (
`Project ID` int(10) unsigned
,`Material ID` int(10) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `project_material_costs_data`
--
CREATE TABLE IF NOT EXISTS `project_material_costs_data` (
`Project ID` int(10) unsigned
,`Material ID` int(10) unsigned
,`Needed` decimal(65,2)
,`PriceEach` decimal(65,2) unsigned
,`MinimumPurchase` mediumint(8) unsigned
,`PackageCount` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Table structure for table `project_services`
--

CREATE TABLE IF NOT EXISTS `project_services` (
  `ID` int(10) unsigned NOT NULL,
  `Project ID` int(10) unsigned NOT NULL,
  `Service ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Project ID` (`Project ID`),
  KEY `Service ID` (`Service ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_services`
--

INSERT INTO `project_services` (`ID`, `Project ID`, `Service ID`) VALUES
(0, 49, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_services_cost`
--
CREATE TABLE IF NOT EXISTS `project_services_cost` (
`ID` int(10) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `project_services_cost_total`
--
CREATE TABLE IF NOT EXISTS `project_services_cost_total` (
`ID` int(10) unsigned
,`Cost` decimal(65,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Price` decimal(65,2) NOT NULL,
  `Provider Name` varchar(255) NOT NULL,
  `Provider Phone` varchar(255) NOT NULL,
  `Provider Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `Name`, `Description`, `Price`, `Provider Name`, `Provider Phone`, `Provider Email`) VALUES
(1, 'Dive Tank Recertification', 'Have the dive tank recertified', '50.00', '', '', ''),
(3, 'Bottom Cleaning', 'Clean the bottom and replace the zinc', '110.00', 'Pete', '', ''),
(5, 'Haulout', 'Have the boat hauled out over a weeked', '500.00', 'Gravelle''s', '', '');

-- --------------------------------------------------------

--
-- Structure for view `materials_needed_by_priority`
--
DROP TABLE IF EXISTS `materials_needed_by_priority`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `materials_needed_by_priority` AS select `material_descriptions`.`Description` AS `Description`,`material_descriptions`.`PriceInfo` AS `PriceInfo`,sum(`project_materials_by_priority`.`Needed`) AS `Needed`,sum(`project_materials_by_priority`.`Cost`) AS `Cost`,(sum((`project_materials_by_priority`.`Needed` * `project_materials_by_priority`.`Liveaboard Priority`)) / sum(`project_materials_by_priority`.`Needed`)) AS `Mean Livaboard Priority`,(sum((`project_materials_by_priority`.`Needed` * `project_materials_by_priority`.`Daysail Priority`)) / sum(`project_materials_by_priority`.`Needed`)) AS `Mean Daysail Priority`,(sum((`project_materials_by_priority`.`Needed` * `project_materials_by_priority`.`Coastal Crusing Priority`)) / sum(`project_materials_by_priority`.`Needed`)) AS `Mean Coastal Crusing Priority`,(sum((`project_materials_by_priority`.`Needed` * `project_materials_by_priority`.`Ocean Passage Priority`)) / sum(`project_materials_by_priority`.`Needed`)) AS `Mean Ocean Passage Priority` from (`project_materials_by_priority` join `material_descriptions` on((`project_materials_by_priority`.`Material ID` = `material_descriptions`.`Material ID`))) where (`project_materials_by_priority`.`Needed` > 0) group by `material_descriptions`.`Material ID`;

-- --------------------------------------------------------

--
-- Structure for view `material_descriptions`
--
DROP TABLE IF EXISTS `material_descriptions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `material_descriptions` AS select `materials`.`ID` AS `Material ID`,concat(`materials`.`Type`,(case when (trim(`materials`.`Description`) = '') then '' else concat(', ',trim(`materials`.`Description`)) end),(case when (trim(`materials`.`Dimensions`) = '') then '' else concat(', ',trim(`materials`.`Dimensions`)) end),(case when (trim(`materials`.`Material`) = '') then '' else concat(' (',trim(`materials`.`Material`),')') end)) AS `Description`,concat(' [$',(`materials`.`Price Per Unit` + `materials`.`Shipping Price Each`),'/',`materials`.`Units`,']',(case when (`materials`.`Minimum Purchase` <= 1) then '' else concat(', ',`materials`.`Minimum Purchase`,' min') end),(case when (`materials`.`Inventory` = 0) then '' else concat(', ',cast(`materials`.`Inventory` as unsigned),' avail') end)) AS `PriceInfo` from `materials`;

-- --------------------------------------------------------

--
-- Structure for view `project_cost`
--
DROP TABLE IF EXISTS `project_cost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_cost` AS select `projects`.`ID` AS `Project ID`,(ifnull(`project_materials_cost_total`.`Cost`,0) + ifnull(`project_services_cost_total`.`Cost`,0)) AS `Cost` from ((`projects` left join `project_materials_cost_total` on((`project_materials_cost_total`.`Project ID` = `projects`.`ID`))) left join `project_services_cost_total` on((`project_services_cost_total`.`ID` = `projects`.`ID`)));

-- --------------------------------------------------------

--
-- Structure for view `project_materials_by_priority`
--
DROP TABLE IF EXISTS `project_materials_by_priority`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_materials_by_priority` AS select `project_material_costs`.`Project ID` AS `Project ID`,`project_material_costs`.`Material ID` AS `Material ID`,`project_material_costs_data`.`Needed` AS `Needed`,`project_material_costs`.`Cost` AS `Cost`,`projects`.`Liveaboard Priority` AS `Liveaboard Priority`,`projects`.`Daysail Priority` AS `Daysail Priority`,`projects`.`Coastal Crusing Priority` AS `Coastal Crusing Priority`,`projects`.`Ocean Passage Priority` AS `Ocean Passage Priority` from ((`project_material_costs_data` left join `projects` on((`project_material_costs_data`.`Project ID` = `projects`.`ID`))) left join `project_material_costs` on(((`project_material_costs_data`.`Material ID` = `project_material_costs`.`Material ID`) and (`project_material_costs_data`.`Project ID` = `project_material_costs`.`Project ID`)))) where ((`project_material_costs_data`.`Needed` > 0) and (`projects`.`Completed` <> 1) and (`projects`.`Superceded` <> 1));

-- --------------------------------------------------------

--
-- Structure for view `project_materials_composite`
--
DROP TABLE IF EXISTS `project_materials_composite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_materials_composite` AS select `project_materials`.`Project ID` AS `Project ID`,`material_descriptions`.`Description` AS `Description`,`project_materials`.`Quantity` AS `Quantity`,`project_material_costs`.`Cost` AS `Cost` from ((`material_descriptions` join `project_material_costs`) join `project_materials`) where ((`project_material_costs`.`Material ID` = `project_materials`.`Material ID`) and (`material_descriptions`.`Material ID` = `project_materials`.`Material ID`) and (`project_material_costs`.`Material ID` = `material_descriptions`.`Material ID`));

-- --------------------------------------------------------

--
-- Structure for view `project_materials_cost_total`
--
DROP TABLE IF EXISTS `project_materials_cost_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_materials_cost_total` AS select `project_material_costs`.`Project ID` AS `Project ID`,sum(`project_material_costs`.`Cost`) AS `Cost` from `project_material_costs` group by `project_material_costs`.`Project ID`;

-- --------------------------------------------------------

--
-- Structure for view `project_material_costs`
--
DROP TABLE IF EXISTS `project_material_costs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_material_costs` AS select `project_material_costs_data`.`Project ID` AS `Project ID`,`project_material_costs_data`.`Material ID` AS `Material ID`,((ceiling((greatest(`project_material_costs_data`.`Needed`,`project_material_costs_data`.`MinimumPurchase`) / `project_material_costs_data`.`PackageCount`)) * `project_material_costs_data`.`PackageCount`) * `project_material_costs_data`.`PriceEach`) AS `Cost` from `project_material_costs_data` where (`project_material_costs_data`.`Needed` > 0);

-- --------------------------------------------------------

--
-- Structure for view `project_material_costs_data`
--
DROP TABLE IF EXISTS `project_material_costs_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_material_costs_data` AS select `projects`.`ID` AS `Project ID`,`project_materials`.`Material ID` AS `Material ID`,(case when (`materials`.`Inventory` < `project_materials`.`Quantity`) then (`project_materials`.`Quantity` - `materials`.`Inventory`) else 0 end) AS `Needed`,(`materials`.`Price Per Unit` + `materials`.`Shipping Price Each`) AS `PriceEach`,`materials`.`Minimum Purchase` AS `MinimumPurchase`,`materials`.`Package Count` AS `PackageCount` from ((`project_materials` left join `projects` on((`project_materials`.`Project ID` = `projects`.`ID`))) left join `materials` on((`project_materials`.`Material ID` = `materials`.`ID`)));

-- --------------------------------------------------------

--
-- Structure for view `project_services_cost`
--
DROP TABLE IF EXISTS `project_services_cost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_services_cost` AS select `projects`.`ID` AS `ID`,ifnull(sum(`services`.`Price`),0) AS `Cost` from ((`project_services` left join `projects` on((`project_services`.`Project ID` = `projects`.`ID`))) left join `services` on((`project_services`.`Service ID` = `services`.`ID`))) group by `projects`.`ID`;

-- --------------------------------------------------------

--
-- Structure for view `project_services_cost_total`
--
DROP TABLE IF EXISTS `project_services_cost_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_services_cost_total` AS select `projects`.`ID` AS `ID`,ifnull(sum(`services`.`Price`),0) AS `Cost` from ((`project_services` left join `projects` on((`project_services`.`Project ID` = `projects`.`ID`))) left join `services` on((`project_services`.`Service ID` = `services`.`ID`))) group by `projects`.`ID`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_dependencies`
--
ALTER TABLE `project_dependencies`
  ADD CONSTRAINT `project_dependencies_ibfk_1` FOREIGN KEY (`Project ID`) REFERENCES `projects` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_dependencies_ibfk_2` FOREIGN KEY (`Dependency ID`) REFERENCES `projects` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_materials`
--
ALTER TABLE `project_materials`
  ADD CONSTRAINT `project_materials_ibfk_1` FOREIGN KEY (`Project ID`) REFERENCES `projects` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_materials_ibfk_2` FOREIGN KEY (`Material ID`) REFERENCES `materials` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_services`
--
ALTER TABLE `project_services`
  ADD CONSTRAINT `project_services_ibfk_1` FOREIGN KEY (`Project ID`) REFERENCES `projects` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_services_ibfk_2` FOREIGN KEY (`Service ID`) REFERENCES `services` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
