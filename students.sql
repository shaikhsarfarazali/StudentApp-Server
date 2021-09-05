-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2021 at 04:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `student_address` varchar(200) NOT NULL,
  `student_img` varchar(255) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `maths` int(10) NOT NULL,
  `english` int(10) NOT NULL,
  `science` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `course_name`, `student_address`, `student_img`, `student_name`, `maths`, `english`, `science`) VALUES
(1, 'React, Node.js', 'Iris Watson\r\nP.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335', 'https://cdn.shopify.com/s/files/1/0162/2116/files/Untitled_design_33.jpg', 'Shaikh Sarfaraz Ali', 89, 88, 87),
(2, 'Angular, Ionic', 'Cecilia Chapman\r\n711-2880 Nulla St.\r\nMankato Mississippi 96522\r\n(257) 563-7401\r\n', 'https://www.fashionhombre.com/wp-content/uploads/2019/11/Dashing-Formal-Outfit-Ideas-For-Men-2.jpg', 'Tariq Mirza', 98, 50, 70),
(3, 'Node.js, Angular', 'Celeste Slater\r\n606-3727 Ullamcorper. Street\r\nRoseville NH 11523\r\n(786) 713-8616', 'https://www.fashionhombre.com/wp-content/uploads/2019/11/Dashing-Formal-Outfit-Ideas-For-Men-4.jpg', 'Shaikh Arshad', 70, 80, 75),
(4, '.NET, SQL', 'Theodore Lowe\r\nAp #867-859 Sit Rd.\r\nAzusa New York 39531\r\n(793) 151-6230', 'https://www.fashionhombre.com/wp-content/uploads/2019/11/Dashing-Formal-Outfit-Ideas-For-Men-5.jpg', 'Tej Narayan', 60, 70, 80),
(5, 'Flutter, MongoDB', 'Nyssa Vazquez\r\n511-5762 At Rd.\r\nChelsea MI 67708\r\n(947) 278-5929', 'https://rukminim1.flixcart.com/image/800/960/krntoy80/shirt/i/t/n/m-maroon-5-jai-textiles-original-imag5efnjxs6bmhp.jpeg', 'Rupesh Mane', 50, 70, 65),
(6, 'HTML/CSS, Javascript', 'Lawrence Moreno\r\n935-9940 Tortor. Street\r\nSanta Rosa MN 98804\r\n(684) 579-1879', 'https://rukminim1.flixcart.com/image/800/960/kod858w0/shirt/3/u/d/40-pisy00176-m5-park-avenue-original-imag2tnhkgsmw87r.jpeg', 'Rahul Kumar', 90, 70, 65),
(7, 'Manual Testing', 'Hedy Greene\r\nAp #696-3279 Viverra. Avenue\r\nLatrobe DE 38100\r\n(608) 265-2215', 'https://rukminim1.flixcart.com/image/800/960/kfikya80-0/shirt/f/f/e/s-twtshirtful-plain-tripr-original-imafvytycdwzkztw.jpeg', 'Ansari Ahmed', 80, 70, 60),
(8, 'Designer', 'Pascale Patton\r\nP.O. Box 399 4275 Amet Street\r\nWest Allis NC 36734\r\n(676) 334-2174', 'https://static.toiimg.com/img/70671483/Master.jpg', 'Stuard Broad', 40, 50, 70),
(9, 'Python, Django', 'Tamara Howe\r\n3415 Lobortis. Avenue\r\nRocky Mount WA 48580\r\n(655) 840-6139', 'https://manofmany.com/wp-content/uploads/2018/04/The-Difference-Between-Mens-Formal-and-Semi-Formal-Dress-Code.jpg', 'Alex Hales', 40, 50, 70),
(10, 'Data Engineer', 'Keegan Blair\r\nAp #761-2515 Egestas. Rd.\r\nManitowoc TN 07528\r\n(577) 333-6244\r\n', 'https://m.media-amazon.com/images/I/81QT2aT3ZjL._UY500_.jpg', 'Steve Smith', 50, 70, 70),
(11, 'Machine Learning', 'Keaton Underwood\r\nAp #636-8082 Arcu Avenue\r\nThiensville Maryland 19587\r\n(564) 908-6970', 'https://m.media-amazon.com/images/I/91JP9bvHdrL._UY550_.jpg', 'Shane Watson', 80, 60, 70),
(12, 'Software Testing', 'Nasim Strong\r\nAp #630-3889 Nulla. Street\r\nWatervliet Oklahoma 70863\r\n(437) 994-5270', 'https://pixnio.com/free-images/2021/01/04/2021-01-04-17-01-56-1200x1800.jpg', 'James Broad', 40, 50, 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
