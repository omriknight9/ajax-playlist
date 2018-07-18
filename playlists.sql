-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 07:09 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `image` varchar(1000) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `songs` text CHARACTER SET hp8 COLLATE hp8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `image`, `songs`) VALUES
(1, 'Blackbird', 'images/blackbird.jpg', '[{\"name\":\"Before Tomorrow Comes\",\"url\":\"https://docs.google.com/uc?&id=1E9Zyf3mXQOK--FuaBo3cNMI0CmdW0v10\"}, {\"name\":\"Brand New Start\",\"url\":\"https://docs.google.com/uc?&id=1bPyy5M0BwArJguR5zasLW38b3JW-gJRy\"}, {\"name\":\"Come To Life\",\"url\":\"https://docs.google.com/uc?&id=1gkefcSg2SOwq4MAOLjwhAxLwdGXZrNTv\"}, {\"name\":\"One By One\",\"url\":\"https://docs.google.com/uc?&id=1YzJXkHGPyndg3s1ZBnqeIZEEswlamMaF\"}, {\"name\":\"Rise Today\",\"url\":\"https://docs.google.com/uc?&id=17l39582WEPIUkgdSV-F8uYh7b0LwPXCa\"}]'),
(2, 'Baptized', 'images/baptized.jpg', '[{\"name\":\"18 Years\",\"url\":\"https://docs.google.com/uc?&id=1FUr4dEDjIBmcGFrlGG_gFfwxyJT3__Lu\"}, {\"name\":\"Long Live Rock And Roll\",\"url\":\"https://docs.google.com/uc?&id=152SnfFRFPkxwavI5qQIbUK7WLlGIbQQx\"}, {\"name\":\"The World We Know\",\"url\":\"https://docs.google.com/uc?d&id=1HUNosA9yzSZejZvXR2sGvB7Z_Au-cQOj\"}, {\"name\":\"Waiting For Superman\",\"url\":\"https://docs.google.com/uc?&id=1wwZi-UdJRX8eREj6kqEOIf2cFzjLFoX2\"}]'),
(3, 'Dark Horse', 'images/dark horse.jpg', '[{\"name\":\"Burn It To The Ground\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=16QuNPi9E7-4StlRrsqDwDNqll4f6EXiu\"},{\"name\":\"Gotta Be Somebody\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1Lomsk-Xuvo4vFie-AgxAgL0QdYWAAZkB\"},{\"name\":\"I\'d Come For You\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1Dt0Da2V-nmkoA2Wzh3z44Sx_4eKzfEw4\"},{\"name\":\"Just To Get High\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1xJ5L1-KYmrw9q19Q-0k4zAlqbHebzLgD\"},{\"name\":\"This Afternoon\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1rA2Wqfb1XN3_FH0--BFDYZv6eSBctljH\"},{\"name\":\"Today Was Your Last Day\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1_1REkOIhOnAfAwWbNqaD1hDnWyRb4obQ\"}]'),
(5, 'Amaryllis', 'images/amaryllis.jpeg', '[{\"name\":\"Adrenaline\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1WrS2p7GqMN2AotcKh_T-5TP5iAWEOMgg\"},{\"name\":\"Amaryllis\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=13hYaFgyITHQ3hwbbMOFmufCLEMjecwrj\"},{\"name\":\"Enemies\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=16TrtTX7SlPPtyi1jXz0OSE-XSMP2j1dK\"},{\"name\":\"For My Sake\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1lT_IoaTVYGMIJBhGwD8vf7ChaJpIWDPC\"},{\"name\":\"Through The Ghost\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1CSTE9Pd1qbg77l9f57q5snJl01gahh-l\"},{\"name\":\"Unity\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1aBUghXwQ0FZcpooEZnno9UJbbWQr_xrY\"}]'),
(7, 'Meaning Of Life', 'images/meaning of life.jpg', '[{\"name\":\"Didn\'t I\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1rvny6h21vejV-VCe7HASxf66Q17HagyN\"},{\"name\":\"Go High\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1D9C4nZVeaBaaHM_DIYmDDYRwqsy3pIuq\"},{\"name\":\"Heat\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=13TXi23iBJq1el2Xj7O8jnMKFzSz5DtqH\"},{\"name\":\"Love So Soft\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1Axg_a-CFsb441FtqKqoT3vqMws2NzBDI\"},{\"name\":\"Meaning Of Life\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1g7XRTlZlY2GiomFNRjP69DY6pXOzr8RD\"},{\"name\":\"Whole Lotta Woman\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1Duuwku9klK390apCbKVXZ_FkBYmTnLE0\"},{\"name\":\"Would You Call That Love\",\"url\":\"https:\\/\\/docs.google.com\\/uc?&id=1jasfmJ2E-t5ZmdssrHRYUzHg6fGsMfaq\"}]'),
(8, 'Break The Spell', 'images/break the spell.jpg', '[{\"name\":\"Break The Spell\",\"url\":\"https://docs.google.com/uc?&id=1JxZc4KfLE1NkdZVwlUwSJ-hO68mzg6_6\"}, {\"name\":\"Crawling Back To You\",\"url\":\"https://docs.google.com/uc?&id=1TZEc6mlSlBoC6hMGlgZeT7bXzfS_WFeP\"}, {\"name\":\"Gone Too Soon\",\"url\":\"https://docs.google.com/uc?&id=1f9DNwoY_kDtTcfNOu1aL27Xzb7AHn9sl\"}, {\"name\":\"Losing My Mind\",\"url\":\"https://docs.google.com/uc?&id=1M6-azGKIfd5c0ljA0oBAce0mmhn_-YGY\"}, {\"name\":\"Outta My Head\",\"url\":\"https://docs.google.com/uc?&id=137ocDH_XT5hmnMN_QJOxJVSWYZ0kH5qY\"}, {\"name\":\"Renegade\",\"url\":\"https://docs.google.com/uc?&id=1Mp2eJ9JiCfZ2oQM28VCNcgwClWxpR4u2\"}, {\"name\":\"We\'re Not Gonna Fall\",\"url\":\"https://docs.google.com/uc?&id=1watPSPIhDAchUhtlk9EvrVrxG-ng4Lj2\"}]'),
(29, 'Gasoline', 'images/gasoline.jpg', '[{\"name\":\"Better Off\",\"url\":\"https://docs.google.com/uc?&id=114CMU3LojjLl5XmTHTEbvSQX6YD7bJb7\"}, {\"name\":\"Hating Hollywood\",\"url\":\"https://docs.google.com/uc?&id=1evzQZwjRwsvziCfnSO0zB8m9eM1j0R8_\"}, {\"name\":\"Hello Lonely\",\"url\":\"https://docs.google.com/uc?&id=1X6kNY-1za9FIs20YkqfJL92q-O3XEhuE\"}, {\"name\":\"No Surprise\",\"url\":\"https://docs.google.com/uc?&id=1tq7s6bo70pxulpkv9a5BgpF_yTjITsx7\"}, {\"name\":\"No Way Out\",\"url\":\"https://docs.google.com/uc?&id=1x81sN7F_RungQvMWSOFUEh7sEuXLhLfl\"}, {\"name\":\"Since You\'ve Been Gone\",\"url\":\"https://docs.google.com/uc?&id=1o2NA7SM9N-j4Vet5a7rKSBGY4AJIY8qo\"}]'),
(33, 'Native', 'images/native.jpg', '[{\"name\":\"Burning Bridges\",\"url\":\"https://docs.google.com/uc?&id=1QbxTyo7pkoUSK0kDczfbUAqB8UG7JFxh\"}, {\"name\":\"Can\'t Stop\",\"url\":\"https://docs.google.com/uc?&id=1ZMBnyDnExryeLFkmZwk6XKhWTupbvnyV\"}, {\"name\":\"Counting Stars\",\"url\":\"https://docs.google.com/uc?&id=1GzjQ4_3vC1XbttggvSibdk79kUxZcQiH\"}, {\"name\":\"I Lived\",\"url\":\"https://docs.google.com/uc?&id=1ymuDG2TjkT4pp1mFQjWIyRGni9N7T1dF\"}, {\"name\":\"If I Lose Myself\",\"url\":\"https://docs.google.com/uc?&id=1Sa1e5P2v45T-adCqKs-RnxA6CAGxJtF9\"}, {\"name\":\"Something I Need\",\"url\":\"https://docs.google.com/uc?&id=1eUHucmwtVmsXgWApxrasEOBVxNIlljFL\"}, {\"name\":\"What You Wanted\",\"url\":\"https://docs.google.com/uc?&id=1ggSt1bjSDKTn9kw-RiCTj_2rXbc4Ue95\"}]'),
(127, 'asdasd', 'asdasd', '[{\"name\":\"If I Lose Myself\",\"url\":\"songs\\/native\\/If I Lose Myself.mp3\"},{\"name\":\"asdasd\",\"url\":\"sadsadzxcasdsad\"}]'),
(134, 'sadsadasdHelloHi', 'images/image-placeholder.jpg', '[{\"name\":\"zxczds\",\"url\":\"azxcxzczxc\"},{\"name\":\"asnjkfbasjkf\",\"url\":\"asdjiojuiasdi\"}]'),
(136, 'asdsadasdasdsadsa', 'images/image-placeholder.jpg', '[{\"name\":\"asdasd\",\"url\":\"asdasd\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
