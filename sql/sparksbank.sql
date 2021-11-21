

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(5) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(9) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `contactus` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `created_date` date DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Pavithra ', 'pavithra@gmail.com', 40000),
(2, 'Raheela', 'raheela@gmail.com',25000 ),
(3, 'Nishchala', 'nishu@gmail.com', 30000),
(4, 'Kavya', 'kavya@gmail.com', 35000),
(5, 'Kshithija', 'kshthi@gmail.com', 22000),
(6, 'Nisha', 'nisha@gmail.com', 36000),
(7, 'Jeevan', 'jeevan@gmail.com', 17000),
(8, 'Byravi', 'byravi@gmail.com', 15000),
(9, 'Venky', 'venky@gmail.com', 21000),
(10, 'Dhanush', 'dhanush@gmail.com', 29000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
