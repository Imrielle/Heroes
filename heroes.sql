-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 12:39 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_backgrounds`
--

CREATE TABLE `cms_bg_backgrounds` (
  `ID` int(11) NOT NULL,
  `background` varchar(50) DEFAULT NULL,
  `source` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_backgrounds`
--

INSERT INTO `cms_bg_backgrounds` (`ID`, `background`, `source`) VALUES
(1, 'Acolyte', 'Basic'),
(2, 'Criminal', 'Basic'),
(3, 'Folk Hero', 'Basic'),
(4, 'Noble', 'Basic'),
(5, 'Sage', 'Basic'),
(6, 'Soldier', 'Basic'),
(7, 'Charlatan', 'PHB'),
(8, 'Entertainer', 'PHB'),
(9, 'Guild Artisan', 'PHB'),
(10, 'Hermit', 'PHB'),
(11, 'Outlander', 'PHB'),
(12, 'Sailor', 'PHB'),
(13, 'Urchin', 'PHB');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_bonds`
--

CREATE TABLE `cms_bg_bonds` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `bond_id` int(11) DEFAULT NULL,
  `bond_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_bonds`
--

INSERT INTO `cms_bg_bonds` (`ID`, `bg_id`, `bond_id`, `bond_desc`) VALUES
(1, 1, 1, 'I would die to recover an ancient relic of my faith that was lost long ago.'),
(2, 1, 2, 'I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.'),
(3, 1, 3, 'I owe my life to the priest who took me in when my parents died.'),
(4, 1, 4, 'Everything I do is for the common people.'),
(5, 1, 5, 'I will do anything to protect the temple where I served.'),
(6, 1, 6, 'I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.'),
(7, 2, 1, 'I\'m trying to pay off an old debt I owe to a generous benefactor.'),
(8, 2, 2, 'My ill-gotten gains go to support my family.'),
(9, 2, 3, 'Something important was taken from me, and I aim to steal it back.'),
(10, 2, 4, 'I will become the greatest thief that ever lived.'),
(11, 2, 5, 'I\'m guilty of a terrible crime. I hope I can redeem myself for it.'),
(12, 2, 6, 'Someone I loved died because of I mistake I made. That will never happen again.'),
(13, 3, 1, 'I have a family, but I have no idea where they are. One day, I hope to see them again.'),
(14, 3, 2, 'I worked the land, I love the land, and I will protect the land.'),
(15, 3, 3, 'A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.'),
(16, 3, 4, 'My tools are symbols of my past life, and I carry them so that I will never forget my roots.'),
(17, 3, 5, 'I protect those who cannot protect themselves.'),
(18, 3, 6, 'I wish my childhood sweetheart had come with me to pursue my destiny.'),
(19, 4, 1, 'I will face any challenge to win the approval of my family.'),
(20, 4, 2, 'My house\'s alliance with another noble family must be sustained at all costs.'),
(21, 4, 3, 'Nothing is more important than the other members of my family.'),
(22, 4, 4, 'I am in love with the heir of a family that my family despises.'),
(23, 4, 5, 'My loyalty to my sovereign is unwavering.'),
(24, 4, 6, 'The common folk must see me as a hero of the people.'),
(25, 5, 1, 'It is my duty to protect my students.'),
(26, 5, 2, 'I have an ancient text that holds terrible secrets that must not fall into the wrong hands.'),
(27, 5, 3, 'I work to preserve a library, university, scriptorium, or monastery.'),
(28, 5, 4, 'My life\'s work is a series of tomes related to a specific field of lore.'),
(29, 5, 5, 'I\'ve been searching my whole life for the answer to a certain question.'),
(30, 5, 6, 'I sold my soul for knowledge. I hope to do great deeds and win it back.'),
(31, 6, 1, 'I would still lay down my life for the people I served with.'),
(32, 6, 2, 'Someone saved my life on the battlefield. To this day, I will never leave a friend behind.'),
(33, 6, 3, 'My honor is my life.'),
(34, 6, 4, 'I\'ll never forget the crushing defeat my company suffered or the enemies who dealt it.'),
(35, 6, 5, 'Those who fight beside me are those worth dying for.'),
(36, 6, 6, 'I fight for those who cannot fight for themselves.'),
(37, 7, 1, 'I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.'),
(38, 7, 2, 'I owe everything to my mentor - a horrible person who\'s probably rotting in jail somewhere.'),
(39, 7, 3, 'Somewhere out there, I have a child who doesn\'t know me. I\'m making the world better for him or her.'),
(40, 7, 4, 'I come from a noble family, and one day I\'ll reclaim my lands and title from those who stole them from me.'),
(41, 7, 5, 'A powerful person killed someone I love. Some day soon, I\'ll have my revenge.'),
(42, 7, 6, 'I swindled and ruined a person who didn\'t deserve it. I seek to atone for my misdeeds but might never be able to forgive myself.'),
(43, 8, 1, 'My instrument is my most treasured possession, and it reminds me of someone I love.'),
(44, 8, 2, 'Someone stole my precious instrument, and someday I\'ll get it back.'),
(45, 8, 3, 'I want to be famous, whatever it takes.'),
(46, 8, 4, 'I idolize a hero of the old tales and measure my deeds against that person\'s.'),
(47, 8, 5, 'I will do anything to prove myself superior to my hated rival.'),
(48, 8, 6, 'I would do anything for the other members of my old troupe.'),
(49, 9, 1, 'The workshop where I learned my trade is the most important place in the world to me.'),
(50, 9, 2, 'I created a great work for someone, and then found them unworthy to receive it. I\'m still looking for someone worthy.'),
(51, 9, 3, 'I owe my guild a great debt for forging me into the person I am today.'),
(52, 9, 4, 'I pursue wealth to secure someone\'s love.'),
(53, 9, 5, 'One day I will return to my guild and prove that I am the greatest artisan of them all.'),
(54, 9, 6, 'I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood.'),
(55, 10, 1, 'Nothing is more important than the other members of my hermitage, order, or association.'),
(56, 10, 2, 'I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.'),
(57, 10, 3, 'I\'m still seeking the enlightenment I pursued in my seclusion, and it still eludes me.'),
(58, 10, 4, 'I entered seclusion because I loved someone I could not have.'),
(59, 10, 5, 'Should my discovery come to light, it could bring ruin to the world.'),
(60, 10, 6, 'My isolation gave me great insight into a great evil that only I can destroy.'),
(61, 11, 1, 'My family, clan, or tribe is the most important thing in my life, even when they are far from me.'),
(62, 11, 2, 'An injury to the unspoiled wilderness of my home is an injury to me.'),
(63, 11, 3, 'I will bring terrible wrath down on the evildoers who destroyed my homeland.'),
(64, 11, 4, 'I am the last of my tribe, and it is up to me to ensure their names enter legend.'),
(65, 11, 5, 'I suffer awful visions of a coming disaster and will do anything to prevent it.'),
(66, 11, 6, 'It is my duty to provide children to sustain my tribe.'),
(67, 12, 1, 'I\'m loyal to my captain first, everything else second.'),
(68, 12, 2, 'The ship is most important - crewmates and captains come and go.'),
(69, 12, 3, 'I\'ll always remember my first ship.'),
(70, 12, 4, 'In a harbor town, I have a paramour whose eyes nearly stole me from the sea.'),
(71, 12, 5, 'I was cheated out of my fair share of the profits, and I want to get my due.'),
(72, 12, 6, 'Ruthless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.'),
(73, 13, 1, 'My town or city is my home, and I\'ll fight to defend it.'),
(74, 13, 2, 'I sponsor an orphanage to keep others from enduring what I was forced to endure.'),
(75, 13, 3, 'I owe my survival to another urchin who taught me to live on the streets.'),
(76, 13, 4, 'I owe a debt I can never repay to the person who took pity on me.'),
(77, 13, 5, 'I escaped my life of poverty by robbing an important person, and I\'m wanted for it.'),
(78, 13, 6, 'No one else should have to endure the hardships I\'ve been through.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_equip`
--

CREATE TABLE `cms_bg_equip` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_features`
--

CREATE TABLE `cms_bg_features` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `feature_name` varchar(100) DEFAULT NULL,
  `feature_desc` text,
  `reference` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_features`
--

INSERT INTO `cms_bg_features` (`ID`, `bg_id`, `feature_name`, `feature_desc`, `reference`) VALUES
(1, 1, 'Shelter of the Faithful', 'As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity. You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells. Those who share your religion will support you (but only you) at a modest lifestyle.\r\n\r\nYou might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there. This could be the temple where you used to serve, or a temple where you have found a new home. While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple.', 'PHB.127'),
(2, 7, 'False Identity', 'You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona.\r\n\r\nAdditionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy.', 'PHB.128'),
(3, 2, 'Criminal Contact', 'You have a reliable and trustworthy contact who acts as your liaison to a network of other criminals. You know how to get messages to and from your contact, even over great distances; specifically, you know the local messengers, corrupt caravan masters, and seedy sailors who can deliver messages for you.', 'PHB.129'),
(4, 8, 'By Popular Demand', 'You can always find a place to perform, usually in an inn or tavern but possibly with a circus, at a theater, or even in a noble\'s court. At such a place, you receive free lodging and food of a modest or comfortable standard (depending on the quality of the establishment), as long as you perform each night. In addition, your performance makes you something of a local figure. When strangers recognize you in a town where you have performed, they typically take a liking to you. ', 'PHB.130'),
(5, 3, 'Rustic Hospitality', 'Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you.', 'PHB.131'),
(6, 9, 'Guild Membership', 'As an established and respected member of a guild, you can rely on certain benefits that membership provides. Your fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings. \r\nGuilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful political figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild\'s coffers.', 'PHB.133'),
(7, 10, 'Discovery', 'The quiet seclusion of your extended hermitage gave you access to a unique and powerful discovery. The exact nature of this revelation depends on the nature of your seclusion. It might be a great truth about the cosmos, the deities, the powerful beings of the outer planes, or the forces of nature. It could be a site that no one else has ever seen. You might have uncovered a fact that has long been forgotten, or unearthed some relic of the past that could rewrite history. It might be information that would be damaging to the people who or consigned you to exile, and hence the reason for your return to society. \r\nWork with your DM to determine the details of your discovery and its impact on the campaign.', 'PHB.134'),
(8, 4, 'Position of Privilege', 'Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to. ', 'PHB.135'),
(9, 11, 'Wanderer', 'You have an excellent memory for maps and geography, and you can always recall the general layout of terrain, settlements, and other features around you. In addition, you can find food and fresh water for yourself and up to five other people each day, provided that the land offers berries, small game, water, and so forth.', 'PHB.136'),
(10, 5, 'Researcher', 'When you attempt to learn or recall a piece of lore, if you do not know that information, you often know where and from whom you can obtain it. Usually, this information comes from a library, scriptorium, university, or a sage or other learned person or creature, Your DM might rule that the knowledge you seek is secreted away in an almost inaccessible place, or that it simply cannot be found. Unearthing the deepest secrets of the multiverse can require an adventure or even a whole campaign. ', 'PHB.138'),
(11, 12, 'Ship\'s Passage', 'When you need to, you can secure free passage on a sailing ship for yourself and your adventuring companions. You might sail on the ship you served on, or another ship you have good relations with (perhaps one captained by a former crewmate). Because you\'re calling in a favor, you can\'t be certain of a schedule or route that will meet your every need. Your Dungeon Master will determine how long it takes to get where you need to go. In return for your free passage, you and your companions are expected to assist the crew during the voyage. ', 'PHB.139'),
(12, 6, 'Military Rank', 'You have a military rank from your career as a soldier. Soldiers loyal to your former military organization still recognize your authority and influence, and they defer to you if they are of a lower rank. You can invoke your rank to exert influence over other soldiers and requisition simple equipment or horses for temporary use. You can also usually gain access to friendly military encampments and fortresses where your rank is recognized. ', 'PHB.140'),
(13, 13, 'City Secrets', 'You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow. ', 'PHB.141');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_flaws`
--

CREATE TABLE `cms_bg_flaws` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `flaw_id` int(11) DEFAULT NULL,
  `flaw_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_flaws`
--

INSERT INTO `cms_bg_flaws` (`ID`, `bg_id`, `flaw_id`, `flaw_desc`) VALUES
(1, 1, 1, 'I judge others harshly, and myself even more severely.'),
(2, 1, 2, 'I put too much trust in those who wield power within my temple\'s hierarchy.'),
(3, 1, 3, 'My piety sometimes leads me to blindly trust those that profess faith in my god.'),
(4, 1, 4, 'I am suspicious of strangers and expect the worst of them.'),
(5, 1, 5, 'Once I pick a goal, I become obsessed with it to the detriment of everything else in my life.'),
(6, 1, 6, 'I am inflexible in my thinking.'),
(7, 2, 1, 'When I see something valuable, I can\'t think about anything but how to steal it.'),
(8, 2, 2, 'When faced with a choice between money and my friends, I usually choose the money.'),
(9, 2, 3, 'If there\'s a plan, I\'ll forget it. If I don\'t forget it, I\'ll ignore it.'),
(10, 2, 4, 'I have a `tell` that reveals when I\'m lying.'),
(11, 2, 5, 'I turn tail and run when things look bad.'),
(12, 2, 6, 'An innocent person is in prison for a crime that I committed. I\'m okay with that.'),
(13, 3, 1, 'The tyrant who rules my land will stop at nothing to see me killed.'),
(14, 3, 2, 'I\'m convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.'),
(15, 3, 3, 'The people who knew me when I was young know my shameful secret, so I can never go home again.'),
(16, 3, 4, 'I have a weakness for the vices of the city, especially hard drink.'),
(17, 3, 5, 'Secretly, I believe that things would be better if I were a tyrant lording over the land.'),
(18, 3, 6, 'I have trouble trusting in my allies.'),
(19, 4, 1, 'I secretly believe that everyone is beneath me.'),
(20, 4, 2, 'I hide a truly scandalous secret that could ruin my family forever.'),
(21, 4, 3, 'I too often hear veiled insults and threats in every word addressed to me, and I\'m quick to anger.'),
(22, 4, 4, 'I have an insatiable desire for carnal pleasures.'),
(23, 4, 5, 'In fact, the world does revolve around me.'),
(24, 4, 6, 'By my words and actions, I often bring shame to my family.'),
(25, 5, 1, 'I am easily distracted by the promise of information.'),
(26, 5, 2, 'Most people scream and run when they see a demon. I stop and take notes on its anatomy.'),
(27, 5, 3, 'Unlocking an ancient mystery is worth the price of a civilization.'),
(28, 5, 4, 'I overlook obvious solutions in favor of complicated ones.'),
(29, 5, 5, 'I speak without really thinking through my words, invariably insulting others.'),
(30, 5, 6, 'I can\'t keep a secret to save my life, or anyone else\'s.'),
(31, 6, 1, 'The monstrous enemy we faced in battle still leaves me quivering with fear.'),
(32, 6, 2, 'I have little respect for anyone who is not a proven warrior.'),
(33, 6, 3, 'I made a terrible mistake in battle that cost many lives-and I would do anything to keep that mistake secret.'),
(34, 6, 4, 'My hatred of my enemies is blind and unreasoning.'),
(35, 6, 5, 'I obey the law, even if the law causes misery.'),
(36, 6, 6, 'I\'d rather eat my armor than admit when I\'m wrong.'),
(37, 7, 1, 'I can\'t resist a pretty face.'),
(38, 7, 2, 'I\'m always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in.'),
(39, 7, 3, 'I\'m convinced that no one could ever fool me the way I fool others.'),
(40, 7, 4, 'I\'m too greedy for my own good. I can\'t resist taking a risk if there\'s money involved.'),
(41, 7, 5, 'I can\'t resist swindling people who are more powerful than me.'),
(42, 7, 6, 'I hate to admit it and will hate myself for it, but I\'ll run and preserve my own hide if the going gets tough.'),
(43, 8, 1, 'I\'ll do anything to win fame and renown.'),
(44, 8, 2, 'I\'m a sucker for a pretty face.'),
(45, 8, 3, 'A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.'),
(46, 8, 4, 'I once satirized a noble who still wants my head. It was a mistake that I will likely repeat.'),
(47, 8, 5, 'I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.'),
(48, 8, 6, 'Despite my best efforts, I am unreliable to my friends.'),
(49, 9, 1, 'I\'ll do anything to get my hands on something rare or priceless.'),
(50, 9, 2, 'I\'m quick to assume that someone is trying to cheat me.'),
(51, 9, 3, 'No one must ever learn that I once stole money from guild coffers.'),
(52, 9, 4, 'I\'m never satisfied with what I have - I always want more.'),
(53, 9, 5, 'I would kill to acquire a noble title.'),
(54, 9, 6, 'I\'m horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I\'m surrounded by rivals.'),
(55, 10, 1, 'Now that I\'ve returned to the world, I enjoy its delights a little too much.'),
(56, 10, 2, 'I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell.'),
(57, 10, 3, 'I am dogmatic in my thoughts and philosophy.'),
(58, 10, 4, 'I let my need to win arguments overshadow friendships and harmony.'),
(59, 10, 5, 'I\'d risk too much to uncover a lost bit of knowledge.'),
(60, 10, 6, 'I like keeping secrets and won\'t share them with anyone.'),
(61, 11, 1, 'I am too enamored of ale, wine, and other intoxicants.'),
(62, 11, 2, 'There\'s no room for caution in a life lived to the fullest.'),
(63, 11, 3, 'I remember every insult I\'ve received and nurse a silent resentment toward anyone who\'s ever wronged me.'),
(64, 11, 4, 'I am slow to trust members of other races, tribes, and societies.'),
(65, 11, 5, 'Violence is my answer to almost any challenge.'),
(66, 11, 6, 'Don\'t expect me to save those who can\'t save themselves. It is nature\'s way that the strong thrive and the weak perish.'),
(67, 12, 1, 'I follow orders, even if I think they\'re wrong.'),
(68, 12, 2, 'I\'ll say anything to avoid having to do extra work.'),
(69, 12, 3, 'Once someone questions my courage, I never back down no matter how dangerous the situation.'),
(70, 12, 4, 'Once I start drinking, it\'s hard for me to stop.'),
(71, 12, 5, 'I can\'t help but pocket loose coins and other trinkets I come across.'),
(72, 12, 6, 'My pride will probably lead to my destruction.'),
(73, 13, 1, 'If I\'m outnumbered, I will run away from a fight.'),
(74, 13, 2, 'Gold seems like a lot of money to me, and I\'ll do just about anything for more of it.'),
(75, 13, 3, 'I will never fully trust anyone other than myself.'),
(76, 13, 4, 'I\'d rather kill someone in their sleep than fight fair.'),
(77, 13, 5, 'It\'s not stealing if I need it more than someone else.'),
(78, 13, 6, 'People who can\'t take care of themselves get what they deserve.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_ideals`
--

CREATE TABLE `cms_bg_ideals` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `ideal_id` int(11) DEFAULT NULL,
  `ideal_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_ideals`
--

INSERT INTO `cms_bg_ideals` (`ID`, `bg_id`, `ideal_id`, `ideal_desc`) VALUES
(1, 1, 1, 'Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld.'),
(2, 1, 2, 'Charity. I always try to help those in need, no matter what the personal cost.'),
(3, 1, 3, 'Power. I hope to one day rise to the top of my faith\'s religious hierarchy.'),
(4, 1, 4, 'Aspiration. I seek to prove myself worthy of my god\'s favour by matching my actions against his or her teachings.'),
(5, 1, 5, 'Change. We must help bring about the changes the gods are constantly working in the world.'),
(6, 1, 6, 'Faith. I trust that my deity will guide my actions. I have faith that if I work hard, things will go well.'),
(7, 2, 1, 'Honor. I don\'t steal from others in the trade.'),
(8, 2, 2, 'Freedom. Chains are meant to be broken, as are those who would forge them.'),
(9, 2, 3, 'Charity. I steal from the wealthy so that I can help people in need.'),
(10, 2, 4, 'Greed. I will do whatever it takes to become wealthy.'),
(11, 2, 5, 'People. I\'m loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.'),
(12, 2, 6, 'Redemption. There\'s a spark of good in everyone.'),
(13, 3, 1, 'Respect. People deserve to be treated with dignity and respect.'),
(14, 3, 2, 'Fairness. No one should get preferential treatment before the law, and no one is above the law.'),
(15, 3, 3, 'Freedom. Tyrants must not be allowed to oppress the people.'),
(16, 3, 4, 'Might. If I become strong, I can take what I want - what I deserve.'),
(17, 3, 5, 'Sincerity. There\'s no good in pretending to be something I\'m not.'),
(18, 3, 6, 'Destiny. Nothing and no one can steer me away from my higher calling.'),
(19, 4, 1, 'Respect. Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity. (Good)'),
(20, 4, 2, 'Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine. (Lawful)'),
(21, 4, 3, 'Independence. I must prove that I can handle myself without the coddling of my family. (Chaotic)'),
(22, 4, 4, 'Power. If I can attain more power, no one will tell me what to do. (Evil)'),
(23, 4, 5, 'Family. Blood runs thicker than water. (Any)'),
(24, 4, 6, 'Noble Obligation. It is my duty to protect and care for the people beneath me. (Good)'),
(25, 5, 1, 'Knowledge. The path to power and self-improvement is through knowledge.'),
(26, 5, 2, 'Beauty. What is beautiful points us beyond itself toward what is true.'),
(27, 5, 3, 'Logic. Emotions must not cloud our logical thinking.'),
(28, 5, 4, 'No Limits. Nothing should fetter the infinite possibility inherent in all existence.'),
(29, 5, 5, 'Power. Knowledge is the path to power and domination.'),
(30, 5, 6, 'Self-Improvement. The goal of a life of study is the betterment of oneself.'),
(31, 6, 1, 'Greater Good. Our lot is to lay down our lives in defense of others.'),
(32, 6, 2, 'Responsibility. I do what I must and obey just authority.'),
(33, 6, 3, 'Independence. When people follow orders blindly, they embrace a kind of tyranny.'),
(34, 6, 4, 'Might. In life as in war, the stronger force wins.'),
(35, 6, 5, 'Live and Let Live. Ideals aren\'t worth killing over or going to war for.'),
(36, 6, 6, 'Nation. My city, nation, or people are all that matter.'),
(37, 7, 1, 'Independence. I am a free spirit - no one tells me what to do. (Chaotic)'),
(38, 7, 2, 'Fairness. I never target people who can\'t afford to lose a few coins. (Lawful)'),
(39, 7, 3, 'Charity. I distribute the money I acquire to the people who really need it. (Good)'),
(40, 7, 4, 'Creativity. I never run the same con twice. (Chaotic)'),
(41, 7, 5, 'Friendship. Material goods come and go. Bonds of friendship last forever. (Good)'),
(42, 7, 6, 'Aspiration. I\'m determined to make something of myself. (Any)'),
(43, 8, 1, 'Beauty. When I perform, I make the world better than it was. (Good)'),
(44, 8, 2, 'Tradition. The stories, legends, and songs o f the past must never be forgotten, for they teach us who we are. (Lawful)'),
(45, 8, 3, 'Creativity. The world is in need of new ideas and bold action. (Chaotic)'),
(46, 8, 4, 'Greed. I\'m only in it for the money and fame. (Evil)'),
(47, 8, 5, 'People. I like seeing the smiles on people\'s faces when I perform. That\'s all that matters. (Neutral)'),
(48, 8, 6, 'Honesty. Art should reflect the soul; it should come from within and reveal who we really are. (Any)'),
(49, 9, 1, 'Community. It is the duty of all civilized people to strengthen the bonds of community and the security of civilization. (Lawful)'),
(50, 9, 2, 'Generosity. My talents were given to me so that I could use them to benefit the world. (Good)'),
(51, 9, 3, 'Freedom. Everyone should be free to pursue his or her own livelihood. (Chaotic)'),
(52, 9, 4, 'Greed. I\'m only in it for the money. (Evil)'),
(53, 9, 5, 'People. I\'m committed to the people I care about, not to ideals. (Neutral)'),
(54, 9, 6, 'Aspiration. I work hard to be the best there is at my craft.'),
(55, 10, 1, 'Greater Good. My gifts are meant to be shared with all, not used for my own benefit. (Good)'),
(56, 10, 2, 'Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking. (Lawful)'),
(57, 10, 3, 'Free Thinking. Inquiry and curiosity are the pillars of progress. (Chaotic)'),
(58, 10, 4, 'Power. Solitude and contemplation are paths toward mystical or magical power. (Evil)'),
(59, 10, 5, 'Live and Let Live. Meddling in the affairs of others only causes trouble. (Neutral)'),
(60, 10, 6, 'Self-Knowledge. If you know yourself, there\'s nothing left to know. (Any)'),
(61, 11, 1, 'Change. Life is like the seasons, in constant change, and we must change with it. (Chaotic)'),
(62, 11, 2, 'Greater Good. It is each person\'s responsibility to make the most happiness for the whole tribe. (Good)'),
(63, 11, 3, 'Honor. If I dishonor myself, I dishonor my whole clan. (Lawful)'),
(64, 11, 4, 'Might. The strongest are meant to rule. (Evil)'),
(65, 11, 5, 'Nature. The natural world is more important than all the constructs of civilization. (Neutral)'),
(66, 11, 6, 'Glory. I must earn glory in battle, for myself and my clan. (Any)'),
(67, 12, 1, 'Respect. The thing that keeps a ship together is mutual respect between captain and crew. (Good)'),
(68, 12, 2, 'Fairness. We all do the work, so we all share in the rewards. (Lawful)'),
(69, 12, 3, 'Freedom. The sea is freedom - the freedom to go anywhere and do anything. (Chaotic)'),
(70, 12, 4, 'Mastery. I\'m a predator, and the other ships on the sea are my prey. (Evil)'),
(71, 12, 5, 'People. I\'m committed to my crewmates, not to ideals. (Neutral)'),
(72, 12, 6, 'Aspiration. Someday I\'ll own my own ship and chart my own destiny. (Any)'),
(73, 13, 1, 'Respect. All people, rich or poor, deserve respect. (Good)'),
(74, 13, 2, 'Community. We have to take care of each other, because no one else is going to do it. (Lawful)'),
(75, 13, 3, 'Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things. (Chaotic)'),
(76, 13, 4, 'Retribution. The rich need to be shown what life and death are like in the gutters. (Evil)'),
(77, 13, 5, 'People. I help the people who help me - that\'s what keeps us alive. (Neutral)'),
(78, 13, 6, 'Aspiration. I\'m going to prove that I\'m worthy of a better life.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_skills`
--

CREATE TABLE `cms_bg_skills` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_skills`
--

INSERT INTO `cms_bg_skills` (`ID`, `bg_id`, `skill_id`) VALUES
(1, 1, 7),
(2, 1, 15),
(3, 2, 5),
(4, 2, 17),
(5, 3, 2),
(6, 3, 18),
(7, 4, 6),
(8, 4, 14),
(9, 5, 3),
(10, 5, 6),
(11, 6, 4),
(12, 6, 8),
(13, 7, 5),
(14, 7, 16),
(15, 8, 1),
(16, 8, 13),
(17, 9, 7),
(18, 9, 14),
(19, 10, 10),
(20, 10, 15),
(21, 11, 4),
(22, 11, 18),
(23, 12, 4),
(24, 12, 12),
(25, 13, 16),
(26, 13, 17);

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_tools`
--

CREATE TABLE `cms_bg_tools` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) NOT NULL,
  `bg_tools` varchar(200) NOT NULL,
  `choices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_tools`
--

INSERT INTO `cms_bg_tools` (`ID`, `bg_id`, `bg_tools`, `choices`) VALUES
(1, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(2, 2, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0|2|0|0', 1),
(3, 3, '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|2|0', 1),
(4, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(5, 5, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(6, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|2|0', 1),
(7, 7, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(8, 8, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0', 1),
(9, 9, '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(10, 10, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(11, 11, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0', 1),
(12, 12, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|2|0|0|0|2', 0),
(13, 13, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_bg_traits`
--

CREATE TABLE `cms_bg_traits` (
  `ID` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `trait_id` int(11) DEFAULT NULL,
  `trait_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bg_traits`
--

INSERT INTO `cms_bg_traits` (`ID`, `bg_id`, `trait_id`, `trait_desc`) VALUES
(1, 1, 1, 'I idolize a particular hero of my faith, and constantly refer to that person\'s deeds and example.'),
(2, 1, 2, 'I can find common ground between the fiercest enemies, empathizing with them and always working toward peace.'),
(3, 1, 3, 'I see omens in every event and action. The gods try to speak to us, we just need to listen'),
(4, 1, 4, 'Nothing can shake my optimistic attitude.'),
(5, 1, 5, 'I quote (or misquote) sacred texts and proverbs in almost every situation.'),
(6, 1, 6, 'I am tolerant (or intolerant) of other faiths and respect the worship of other gods.'),
(7, 1, 7, 'I\'ve enjoyed fine food, drink, and high society among my temple\'s elite. Rough living grates on me.'),
(8, 1, 8, 'I\'ve spent so long in the temple that I have little practical experience dealing with people in the outside world.'),
(9, 2, 1, 'I always have a plan for what to do when things go wrong.'),
(10, 2, 2, 'I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.'),
(11, 2, 3, 'The first thing I do in a new place is note the locations of everything valuable - or where such things could be hidden.'),
(12, 2, 4, 'I would rather make a new friend than a new enemy.'),
(13, 2, 5, 'I am incredibly slow to trust. Those who seem the fairest often have the most to hide.'),
(14, 2, 6, 'I don\'t pay attention to the risks in a situation. Never tell me the odds.'),
(15, 2, 7, 'The best way to get me to do something is to tell me I can\'t do it.'),
(16, 2, 8, 'I blow up at the slightest insult.'),
(17, 3, 1, 'I judge people by their actions, not their words.'),
(18, 3, 2, 'If someone is in trouble, I\'m always ready to lend help.'),
(19, 3, 3, 'When I set my mind to something, I follow through no matter what gets in my way.'),
(20, 3, 4, 'I have a strong sense of fair play and always try to find the most equitable solution to arguments.'),
(21, 3, 5, 'I\'m confident in my own abilities and do what I can to instill confidence in others.'),
(22, 3, 6, 'Thinking is for other people. I prefer action.'),
(23, 3, 7, 'I misuse long words in an attempt to sound smarter.'),
(24, 3, 8, 'I get bored easily. When am I going to get on with my destiny?'),
(25, 4, 1, 'My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.'),
(26, 4, 2, 'The common folk love me for my kindness and generosity.'),
(27, 4, 3, 'No one could doubt by looking at my regal bearing that I am a cut above the unwashed masses.'),
(28, 4, 4, 'I take great pains to always look my best and follow the latest fashions.'),
(29, 4, 5, 'I don\'t like to get my hands dirty, and I won\'t be caught dead in unsuitable accommodations.'),
(30, 4, 6, 'Despite my noble birth, I do not place myself above other folk. We all have the same blood.'),
(31, 4, 7, 'My favor, once lost, is lost forever.'),
(32, 4, 8, 'If you do me an injury, I will crush you, ruin your name, and salt your fields.'),
(33, 5, 1, 'I use polysyllabic words that convey the impression of great erudition.'),
(34, 5, 2, 'I\'ve read every book in the world\'s greatest libraries - or I like to boast that I have.'),
(35, 5, 3, 'I\'m used to helping out those who aren\'t as smart as I am, and I patiently explain anything and everything to others.'),
(36, 5, 4, 'There\'s nothing I like more than a good mystery.'),
(37, 5, 5, 'I\'m willing to listen to every side of an argument before I make my own judgment.'),
(38, 5, 6, 'I... speak... slowly... when talking... to idiots,... which... almost... everyone... is... compared... to me.'),
(39, 5, 7, 'I am horribly, horribly awkward in social situations.'),
(40, 5, 8, 'I\'m convinced that people are always trying to steal my secrets.'),
(41, 6, 1, 'I\'m always polite and respectful.'),
(42, 6, 2, 'I\'m haunted by memories of war. I can\'t get the images of violence out of my mind.'),
(43, 6, 3, 'I\'ve lost too many friends, and I\'m slow to make new ones.'),
(44, 6, 4, 'I\'m full of inspiring and cautionary tales from my military experience relevant to almost every combat situation.'),
(45, 6, 5, 'I can stare down a hell hound without flinching.'),
(46, 6, 6, 'I enjoy being strong and like breaking things.'),
(47, 6, 7, 'I have a crude sense of humor.'),
(48, 6, 8, 'I face problems head-on. A simple, direct solution is the best path to success.'),
(49, 7, 1, 'I fall in and out of love easily, and am always pursuing someone.'),
(50, 7, 2, 'I have a joke for every occasion, especially occasions where humor is inappropriate.'),
(51, 7, 3, 'Flattery is my preferred trick for getting what I want.'),
(52, 7, 4, 'I\'m a born gambler who can\'t resist taking a risk for a potential payoff.'),
(53, 7, 5, 'I lie about almost everything, even when there\'s no good reason to.'),
(54, 7, 6, 'Sarcasm and insults are my weapons of choice.'),
(55, 7, 7, 'I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.'),
(56, 7, 8, 'I pocket anything I see that might have some value.'),
(57, 8, 1, 'I know a story relevant to almost every situation.'),
(58, 8, 2, 'Whenever I come to a new place, I collect local rumors and spread gossip.'),
(59, 8, 3, 'I\'m a hopeless romantic, always searching for that \'special someone.\''),
(60, 8, 4, 'Nobody stays angry at me or around me for long, since I can defuse any amount of tension.'),
(61, 8, 5, 'I love a good insult, even one directed at me.'),
(62, 8, 6, 'I get bitter if I\'m not the center of attention.'),
(63, 8, 7, 'I\'ll settle for nothing less than perfection.'),
(64, 8, 8, 'I change my mood or my mind as quickly as I change key in a song.'),
(65, 9, 1, 'I believe that anything worth doing is worth doing right. I can\'t help it - I\'m a perfectionist.'),
(66, 9, 2, 'I\'m a snob who looks down on those who can\'t appreciate fine art.'),
(67, 9, 3, 'I always want to know how things work and what makes people tick.'),
(68, 9, 4, 'I\'m full of witty aphorisms and have a proverb for every occasion.'),
(69, 9, 5, 'I\'m rude to people who lack my commitment to hard work and fair play.'),
(70, 9, 6, 'I like to talk at length about my profession.'),
(71, 9, 7, 'I don\'t part with my money easily and will haggle tirelessly to get the best deal possible.'),
(72, 9, 8, 'I\'m well known for my work, and I want to make sure everyone appreciates it. I\'m always taken aback when people haven\'t heard of me.'),
(73, 10, 1, 'I\'ve been isolated for so long that I rarely speak, preferring gestures and the occasional grunt.'),
(74, 10, 2, 'I am utterly serene, even in the face of disaster.'),
(75, 10, 3, 'The leader of my community had something wise to say on every topic, and I am eager to share that wisdom.'),
(76, 10, 4, 'I feel tremendous empathy for all who suffer.'),
(77, 10, 5, 'I\'m oblivious to etiquette and social expectations.'),
(78, 10, 6, 'I connect everything that happens to me to a grand, cosmic plan.'),
(79, 10, 7, 'I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.'),
(80, 10, 8, 'I am working on a grand philosophical theory and love sharing my ideas.'),
(81, 11, 1, 'I\'m driven by a wanderlust that led me away from home.'),
(82, 11, 2, 'I watch over my friends as if they were a litter of newborn pups.'),
(83, 11, 3, 'I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I\'d do it again if I had to.'),
(84, 11, 4, 'I have a lesson for every situation, drawn from observing nature.'),
(85, 11, 5, 'I place no stock in wealthy or well-mannered folk. Money and manners won\'t save you from a hungry owlbear.'),
(86, 11, 6, 'I\'m always picking things up, absently fiddling with them, and sometimes accidentally breaking them.'),
(87, 11, 7, 'I feel far more comfortable around animals than people.'),
(88, 11, 8, 'I was, in fact, raised by wolves.'),
(89, 12, 1, 'My friends know they can rely on me, no matter what.'),
(90, 12, 2, 'I work hard so that I can play hard when the work is done.'),
(91, 12, 3, 'I enjoy sailing into new ports and making new friends over a flagon of ale.'),
(92, 12, 4, 'I stretch the truth for the sake of a good story.'),
(93, 12, 5, 'To me, a tavern brawl is a nice way to get to know a new city.'),
(94, 12, 6, 'I never pass up a friendly wager.'),
(95, 12, 7, 'My language is as foul as an otyugh nest.'),
(96, 12, 8, 'I like a job well done, especially if I can convince someone else to do it.'),
(97, 13, 1, 'I hide scraps of food and trinkets away in my pockets.'),
(98, 13, 2, 'I ask a lot of questions.'),
(99, 13, 3, 'I like to squeeze into small places where no one else can get to me.'),
(100, 13, 4, 'I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.'),
(101, 13, 5, 'I eat like a pig and have bad manners.'),
(102, 13, 6, 'I think anyone who\'s nice to me is hiding evil intent.'),
(103, 13, 7, 'I don\'t like to bathe.'),
(104, 13, 8, 'I bluntly say what other people are hinting at or hiding.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_classes`
--

CREATE TABLE `cms_classes` (
  `ID` int(11) NOT NULL,
  `Name` text,
  `HD` int(11) DEFAULT NULL,
  `PrimeStats` varchar(50) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_classes`
--

INSERT INTO `cms_classes` (`ID`, `Name`, `HD`, `PrimeStats`, `Source`) VALUES
(1, 'Cleric', 8, 'WIS', 'Basic'),
(2, 'Fighter', 10, 'STR or DEX', 'Basic'),
(3, 'Rogue', 8, 'DEX', 'Basic'),
(4, 'Wizard', 6, 'INT', 'Basic'),
(5, 'Barbarian', 12, 'STR', 'PHB'),
(6, 'Bard', 8, 'CHA', 'PHB'),
(7, 'Druid', 8, 'WIS', 'PHB'),
(8, 'Monk', 8, 'DEX & WIS', 'PHB'),
(9, 'Paladin', 10, 'STR & CHA', 'PHB'),
(10, 'Ranger', 10, 'DEX & WIS', 'PHB'),
(11, 'Sorcerer', 6, 'CHA', 'PHB'),
(12, 'Warlock', 8, 'CHA', 'PHB');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_archetype_spellsknown`
--

CREATE TABLE `cms_class_archetype_spellsknown` (
  `ID` int(11) NOT NULL,
  `Class_Level` int(11) NOT NULL,
  `Cantrips` int(11) DEFAULT NULL,
  `Spells` int(11) DEFAULT NULL,
  `Max_Level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_archetype_spellsknown`
--

INSERT INTO `cms_class_archetype_spellsknown` (`ID`, `Class_Level`, `Cantrips`, `Spells`, `Max_Level`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(3, 3, 2, 3, '1st-Level'),
(4, 4, 2, 4, '1st-Level'),
(5, 5, 2, 4, '1st-Level'),
(6, 6, 2, 4, '1st-Level'),
(7, 7, 2, 5, '2nd-Level'),
(8, 8, 2, 6, '2nd-Level'),
(9, 9, 2, 6, '2nd-Level'),
(10, 10, 3, 7, '2nd-Level'),
(11, 11, 3, 8, '2nd-Level'),
(12, 12, 3, 8, '2nd-Level'),
(13, 13, 3, 9, '3rd-Level'),
(14, 14, 3, 10, '3rd-Level'),
(15, 15, 3, 10, '3rd-Level'),
(16, 16, 3, 11, '3rd-Level'),
(17, 17, 3, 11, '3rd-Level'),
(18, 18, 3, 11, '3rd-Level'),
(19, 19, 3, 12, '4th-Level'),
(20, 20, 3, 13, '4th-Level');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_armor_prof`
--

CREATE TABLE `cms_class_armor_prof` (
  `ID` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `armor_type` varchar(50) DEFAULT NULL,
  `armor_id` int(11) DEFAULT NULL,
  `armor_prof_text` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_armor_prof`
--

INSERT INTO `cms_class_armor_prof` (`ID`, `class_id`, `armor_type`, `armor_id`, `armor_prof_text`) VALUES
(1, 1, 'Light', NULL, NULL),
(2, 1, 'Medium', NULL, NULL),
(3, 1, 'Shield', NULL, NULL),
(4, 1, NULL, NULL, 'Light and medium armor, shields'),
(5, 2, 'Light', NULL, NULL),
(6, 2, 'Medium', NULL, NULL),
(7, 2, 'Heavy', NULL, NULL),
(8, 2, 'Shield', NULL, NULL),
(9, 2, NULL, NULL, 'All armor and shields'),
(10, 3, 'Light', NULL, NULL),
(11, 3, NULL, NULL, 'Light armor'),
(12, 4, NULL, NULL, 'None'),
(13, 5, 'Light', NULL, NULL),
(14, 5, 'Medium', NULL, NULL),
(15, 5, 'Shield', NULL, NULL),
(16, 5, NULL, NULL, 'Light and medium armor, shields'),
(17, 6, 'Light', NULL, NULL),
(18, 6, NULL, NULL, 'Light armor'),
(19, 7, NULL, NULL, 'Light and medium armor (nonmetal), and shields (nonmetal)'),
(20, 7, NULL, 1, NULL),
(21, 7, NULL, 2, NULL),
(22, 7, NULL, 4, NULL),
(23, 7, 'Shield', NULL, NULL),
(24, 8, NULL, NULL, 'None'),
(25, 9, NULL, NULL, 'All armor and shields'),
(26, 9, 'Light', NULL, NULL),
(27, 9, 'Medium', NULL, NULL),
(28, 9, 'Heavy', NULL, NULL),
(29, 9, 'Shield', NULL, NULL),
(30, 10, 'Light', NULL, NULL),
(31, 10, 'Medium', NULL, NULL),
(32, 10, 'Shield', NULL, NULL),
(33, 10, NULL, NULL, 'Light and medium armor, shields'),
(34, 11, NULL, NULL, 'None'),
(35, 12, NULL, NULL, 'Light armor'),
(36, 12, 'Light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_barbarian_rage`
--

CREATE TABLE `cms_class_barbarian_rage` (
  `ID` int(11) NOT NULL,
  `Barbarian_Level` int(11) DEFAULT NULL,
  `Rages` varchar(50) DEFAULT NULL,
  `Rage_Damage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_barbarian_rage`
--

INSERT INTO `cms_class_barbarian_rage` (`ID`, `Barbarian_Level`, `Rages`, `Rage_Damage`) VALUES
(1, 1, '2/Day', '+2'),
(2, 2, '2/Day', '+2'),
(3, 3, '3/Day', '+2'),
(4, 4, '3/Day', '+2'),
(5, 5, '3/Day', '+2'),
(6, 6, '4/Day', '+2'),
(7, 7, '4/Day', '+2'),
(8, 8, '4/Day', '+2'),
(9, 9, '4/Day', '+3'),
(10, 10, '4/Day', '+3'),
(11, 11, '4/Day', '+3'),
(12, 12, '5/Day', '+3'),
(13, 13, '5/Day', '+3'),
(14, 14, '5/Day', '+3'),
(15, 15, '5/Day', '+4'),
(16, 16, '5/Day', '+4'),
(17, 17, '6/Day', '+4'),
(18, 18, '6/Day', '+4'),
(19, 19, '6/Day', '+4'),
(20, 20, 'Unlimited', '+4');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_barbarian_totems`
--

CREATE TABLE `cms_class_barbarian_totems` (
  `ID` int(11) NOT NULL,
  `Totem_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_barbarian_totems`
--

INSERT INTO `cms_class_barbarian_totems` (`ID`, `Totem_ID`) VALUES
(1, 'Bear'),
(2, 'Eagle'),
(3, 'Wolf'),
(4, 'Elk'),
(5, 'Tiger');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_bard_spellsknown`
--

CREATE TABLE `cms_class_bard_spellsknown` (
  `ID` int(11) NOT NULL,
  `Bard_Level` int(11) NOT NULL,
  `Spells` int(11) NOT NULL,
  `Max_Level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_bard_spellsknown`
--

INSERT INTO `cms_class_bard_spellsknown` (`ID`, `Bard_Level`, `Spells`, `Max_Level`) VALUES
(1, 1, 4, '1st-Level'),
(2, 2, 5, '1st-Level'),
(3, 3, 6, '2nd-Level'),
(4, 4, 7, '2nd-Level'),
(5, 5, 8, '3rd-Level'),
(6, 6, 9, '3rd-Level'),
(7, 7, 10, '4th-Level'),
(8, 8, 11, '4th-Level'),
(9, 9, 12, '5th-Level'),
(10, 10, 12, '5th-Level'),
(11, 11, 13, '6th-Level'),
(12, 12, 13, '6th-Level'),
(13, 13, 14, '7th-Level'),
(14, 14, 14, '7th-Level'),
(15, 15, 15, '8th-Level'),
(16, 16, 15, '8th-Level'),
(17, 17, 16, '9th-Level'),
(18, 18, 16, '9th-Level'),
(19, 19, 16, '9th-Level'),
(20, 20, 16, '9th-Level');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_cantrips`
--

CREATE TABLE `cms_class_cantrips` (
  `ID` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  `Cantrips` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All classes with cantrips gain an additional cantrip at 4th and 10th level.';

--
-- Dumping data for table `cms_class_cantrips`
--

INSERT INTO `cms_class_cantrips` (`ID`, `Class_ID`, `Cantrips`) VALUES
(1, 6, 2),
(2, 1, 3),
(3, 7, 2),
(4, 11, 4),
(5, 12, 2),
(6, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_druid_circle_land`
--

CREATE TABLE `cms_class_druid_circle_land` (
  `ID` int(11) NOT NULL,
  `Druid_Circle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_druid_circle_land`
--

INSERT INTO `cms_class_druid_circle_land` (`ID`, `Druid_Circle`) VALUES
(1, 'Arctic'),
(2, 'Coast'),
(3, 'Desert'),
(4, 'Forest'),
(5, 'Grassland'),
(6, 'Mountain'),
(7, 'Swamp'),
(8, 'Underdark');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_equipment`
--

CREATE TABLE `cms_class_equipment` (
  `ID` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  `Equip_ID` int(11) NOT NULL,
  `Text` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_equipment`
--

INSERT INTO `cms_class_equipment` (`ID`, `Class_ID`, `Equip_ID`, `Text`) VALUES
(1, 1, 1, 'mace'),
(2, 1, 1, 'warhammer (if proficient)'),
(3, 1, 2, 'scale mail'),
(4, 1, 2, 'leather armor'),
(5, 1, 2, 'chain mail (if proficient)'),
(6, 1, 3, 'light crossbow and case of 20 bolts'),
(7, 1, 3, 'simple weapon'),
(8, 1, 4, 'priest\'s Pack'),
(9, 1, 4, 'explorer\'s Pack'),
(10, 2, 1, 'chainmail'),
(11, 2, 1, 'leather, longbow, and quiver of 20 arrows'),
(12, 2, 2, 'martial weapon and shield'),
(13, 2, 2, 'two martial weapons'),
(14, 2, 3, 'light crossbow and case of 20 bolts'),
(15, 2, 3, 'two handaxes'),
(16, 2, 4, 'dungeoneer\'s pack'),
(17, 2, 4, 'explorer\'s pack'),
(18, 3, 1, 'rapier'),
(19, 3, 1, 'shortsword'),
(20, 3, 2, 'shortbow and quiver of 20 arrows'),
(21, 3, 2, 'shortsword'),
(22, 3, 3, 'burglar\'s pack'),
(23, 3, 3, 'dungeoneer\'s pack'),
(24, 3, 3, 'explorer\'s pack'),
(25, 4, 1, 'quarterstaff'),
(26, 4, 1, 'dagger'),
(27, 4, 2, 'component pouch'),
(28, 4, 2, 'arcane focus (crystal, orb, rod, staff, or wand)'),
(29, 4, 3, 'scholar\'s pack'),
(30, 4, 3, 'explorer\'s pack'),
(31, 5, 1, 'greataxe'),
(32, 5, 1, 'martial weapon'),
(33, 5, 2, 'two handaxes'),
(34, 5, 2, 'simple weapon'),
(35, 6, 1, 'rapier'),
(36, 6, 1, 'longsword'),
(37, 6, 1, 'simple weapon'),
(38, 6, 2, 'diplomat\'s pack'),
(39, 6, 2, 'entertainer\'s pack'),
(40, 6, 3, 'bagpipes'),
(41, 6, 3, 'drum'),
(42, 6, 3, 'dulcimer'),
(43, 6, 3, 'flute'),
(44, 6, 3, 'lute'),
(45, 6, 3, 'lyre'),
(46, 6, 3, 'horn'),
(47, 6, 3, 'pan flute'),
(48, 6, 3, 'shawm'),
(49, 6, 3, 'viol'),
(50, 7, 1, 'wooden shield'),
(51, 7, 1, 'simple weapon'),
(52, 7, 2, 'scimitar'),
(53, 7, 2, 'simple melee weapon'),
(54, 8, 1, 'shortsword'),
(55, 8, 1, 'simple weapon'),
(56, 8, 2, 'dungeoneer\'s pack'),
(57, 8, 2, 'explorer\'s pack'),
(58, 9, 1, 'martial weapon and shield'),
(59, 9, 1, 'two martial weapons'),
(60, 9, 2, 'five javelins'),
(61, 9, 2, 'simple melee weapon'),
(62, 9, 3, 'priest\'s pack'),
(63, 9, 3, 'explorer\'s pack'),
(64, 10, 1, 'scale mail'),
(65, 10, 1, 'leather armor'),
(66, 10, 2, 'two shortswords'),
(67, 10, 2, 'two simple melee weapons'),
(68, 10, 3, 'dungeoneer\'s pack'),
(69, 10, 3, 'explorer\'s pack'),
(70, 11, 1, 'light crossbow and case of 20 bolts'),
(71, 11, 1, 'simple weapon'),
(72, 11, 2, 'component pouch'),
(73, 11, 2, 'arcane focus (crystal, orb, rod staff, or wand)'),
(74, 11, 3, 'dungeoneer\'s pack'),
(75, 11, 3, 'explorer\'s pack'),
(76, 12, 1, 'a light crossbow and a case of 20 bolts'),
(77, 12, 1, 'simple weapon'),
(78, 12, 2, 'component pouch'),
(79, 12, 2, 'arcane focus (crystal, orb, rod, staff, or wand)'),
(80, 12, 3, 'scholar\'s pack'),
(81, 12, 3, 'dungeoneer\'s pack');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_generic_spellslots`
--

CREATE TABLE `cms_class_generic_spellslots` (
  `ID` int(11) NOT NULL,
  `Class_Levels` int(11) NOT NULL,
  `1st-Level` int(11) DEFAULT NULL,
  `2nd-Level` int(11) DEFAULT NULL,
  `3rd-Level` int(11) DEFAULT NULL,
  `4th-Level` int(11) DEFAULT NULL,
  `5th-Level` int(11) DEFAULT NULL,
  `6th-Level` int(11) DEFAULT NULL,
  `7th-Level` int(11) DEFAULT NULL,
  `8th-Level` int(11) DEFAULT NULL,
  `9th-Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_generic_spellslots`
--

INSERT INTO `cms_class_generic_spellslots` (`ID`, `Class_Levels`, `1st-Level`, `2nd-Level`, `3rd-Level`, `4th-Level`, `5th-Level`, `6th-Level`, `7th-Level`, `8th-Level`, `9th-Level`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 4, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 4, 3, 3, 1, NULL, NULL, NULL, NULL, NULL),
(8, 8, 4, 3, 3, 2, NULL, NULL, NULL, NULL, NULL),
(9, 9, 4, 3, 3, 3, 1, NULL, NULL, NULL, NULL),
(10, 10, 4, 3, 3, 3, 2, NULL, NULL, NULL, NULL),
(11, 11, 4, 3, 3, 3, 2, 1, NULL, NULL, NULL),
(12, 12, 4, 3, 3, 3, 2, 1, NULL, NULL, NULL),
(13, 13, 4, 3, 3, 3, 2, 1, 1, NULL, NULL),
(14, 14, 4, 3, 3, 3, 2, 1, 1, NULL, NULL),
(15, 15, 4, 3, 3, 3, 2, 1, 1, 1, NULL),
(16, 16, 4, 3, 3, 3, 2, 1, 1, 1, NULL),
(17, 17, 4, 3, 3, 3, 2, 1, 1, 1, 1),
(18, 18, 4, 3, 3, 3, 3, 1, 1, 1, 1),
(19, 19, 4, 3, 3, 3, 3, 2, 1, 1, 1),
(20, 20, 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_monk_bonus`
--

CREATE TABLE `cms_class_monk_bonus` (
  `ID` int(11) NOT NULL,
  `Monk_Level` int(11) NOT NULL,
  `Marital_Arts` varchar(50) NOT NULL,
  `Ki Points` int(11) DEFAULT NULL,
  `Unarmored Movement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_monk_bonus`
--

INSERT INTO `cms_class_monk_bonus` (`ID`, `Monk_Level`, `Marital_Arts`, `Ki Points`, `Unarmored Movement`) VALUES
(1, 1, '1d4', NULL, NULL),
(2, 2, '1d4', 2, '+10 ft.'),
(3, 3, '1d4', 3, '+10 ft.'),
(4, 4, '1d4', 4, '+10 ft.'),
(5, 5, '1d6', 5, '+10 ft.'),
(6, 6, '1d6', 6, '+15 ft.'),
(7, 7, '1d6', 7, '+15 ft.'),
(8, 8, '1d6', 8, '+15 ft.'),
(9, 9, '1d6', 9, '+15 ft.'),
(10, 10, '1d6', 10, '+20 ft.'),
(11, 11, '1d8', 11, '+20 ft.'),
(12, 12, '1d8', 12, '+20 ft.'),
(13, 13, '1d8', 13, '+20 ft.'),
(14, 14, '1d8', 14, '+25 ft.'),
(15, 15, '1d8', 15, '+25 ft.'),
(16, 16, '1d8', 16, '+25 ft.'),
(17, 17, '1d10', 17, '+25 ft.'),
(18, 18, '1d10', 18, '+30 ft'),
(19, 19, '1d10', 19, '+30 ft'),
(20, 20, '1d10', 20, '+30 ft');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_monk_elemental_disciplines`
--

CREATE TABLE `cms_class_monk_elemental_disciplines` (
  `ID` int(11) NOT NULL,
  `Req_Level` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Ki Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_monk_elemental_disciplines`
--

INSERT INTO `cms_class_monk_elemental_disciplines` (`ID`, `Req_Level`, `Name`, `Ki Cost`) VALUES
(1, 17, 'Breath of Winter', 6),
(2, 6, 'Clench of the North Wind', 3),
(3, 1, 'Elemental Atunement', 0),
(4, 17, 'Eternal Mountain Defense', 5),
(5, 1, 'Fangs of the Fire Snake', 1),
(6, 1, 'Fist of the Four Thunders', 2),
(7, 1, 'Fist of Unbroken Air', 2),
(8, 11, 'Flames of the Pheonix', 4),
(9, 6, 'Gong of the Summit', 3),
(10, 11, 'Mist Stance', 4),
(11, 11, 'Ride the Wind', 4),
(12, 17, 'River of Hungry Flame', 5),
(13, 1, 'Rush of the Gale Spirits', 2),
(14, 1, 'Shape the Flowing River', 1),
(15, 1, 'Sweeping Cinder Strike', 2),
(16, 1, 'Water Whip', 2),
(17, 17, 'Wave of Rolling Earth', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_multiclass`
--

CREATE TABLE `cms_class_multiclass` (
  `ID` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  `Ability_Score_Min` varchar(50) NOT NULL,
  `Proficiencies` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_multiclass`
--

INSERT INTO `cms_class_multiclass` (`ID`, `Class_ID`, `Ability_Score_Min`, `Proficiencies`) VALUES
(1, 1, '0|0|0|0|13|0', 'Light Armor, Medium Armor, Shields'),
(2, 2, '13/13|0|0|0|0', 'Light Armor, Medium Armor, Shields, Simple Weapons, Martial Weapons'),
(3, 3, '0|13|0|0|0|0', 'Light Armor, 1 Skill, Thieve\'s Tools'),
(4, 4, '0|0|0|13||0|0', NULL),
(5, 5, '13|0|0|0||0|0', 'Shields, Simple Weapons, Martial Weapons'),
(6, 6, '0|0|0|0||0|13', 'Light Armor, 1 Skill, 1 Instrument'),
(7, 7, '0|0|0|0|13|0', 'Light Armor, Medium Armor, Shields. (Non-Metal)'),
(8, 8, '0|13|0|0||13|0', 'Simple Weapons, Shortswords'),
(9, 9, '13|0|0|0||13|0', 'Light Armor, Medium Armor, Shields, Simple Weapons, Martial Weapons'),
(10, 10, '0|13|0|0||13|0', 'Light Armor, Medium Armor, Shields, Simple Weapons, Martial Weapons, 1 Skill'),
(11, 11, '0|0|0|0||0|13', NULL),
(12, 12, '0|0|0|0||0|13', 'Light armor, Simple Weapons');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_paladin_sacred_oaths`
--

CREATE TABLE `cms_class_paladin_sacred_oaths` (
  `ID` int(11) NOT NULL,
  `Oath` varchar(50) NOT NULL,
  `Tenets` text NOT NULL,
  `Channel Divinity` varchar(50) NOT NULL,
  `Channel Divinity 2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_paladin_sacred_oaths`
--

INSERT INTO `cms_class_paladin_sacred_oaths` (`ID`, `Oath`, `Tenets`, `Channel Divinity`, `Channel Divinity 2`) VALUES
(1, 'Devotion', 'Honesty, Courage, Compassion, Honor, and Duty', 'Sacred Weapon', 'Turn the Unholy'),
(2, 'Ancients', 'Kindle the Light, Shelter the Light, Preserve Your Own Light, and Be the Light.', 'Nature\'s Wrath', 'Turn the Faithless'),
(3, 'Vengence', 'Fight the Greater Evil, No Mercy for the Wicked, By Any Means Necessary, and Restitution.', 'Abjure Enemy', 'Vow of Enmity'),
(4, 'Crown', 'Law, Loyalty, Courage, and Responsibilty', 'Champion Challenge', 'Turn the Tide'),
(5, 'Oathbreaker', 'What have you done! You should seek out atonement immediately.', 'Control Undead', 'Dreadful Aspect');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_ranger_hunter`
--

CREATE TABLE `cms_class_ranger_hunter` (
  `ID` int(11) NOT NULL,
  `Trait_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_ranger_hunter`
--

INSERT INTO `cms_class_ranger_hunter` (`ID`, `Trait_ID`, `Name`) VALUES
(1, 150, 'Colossus Slayer'),
(2, 150, 'Giant Killer'),
(3, 150, 'Horde Breaker'),
(4, 151, 'Escape the Horder'),
(5, 151, 'Multiattack Defense'),
(6, 151, 'Steel Will'),
(7, 152, 'Volley'),
(8, 152, 'Whirlwind Attack'),
(9, 153, 'Evasion'),
(10, 153, 'Stand Against the Tide'),
(11, 153, 'Uncanny Dodge');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_ranger_spellsknown`
--

CREATE TABLE `cms_class_ranger_spellsknown` (
  `ID` int(11) NOT NULL,
  `Ranger_Level` int(11) NOT NULL,
  `Spells_Known` int(11) DEFAULT NULL,
  `Max_Level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_ranger_spellsknown`
--

INSERT INTO `cms_class_ranger_spellsknown` (`ID`, `Ranger_Level`, `Spells_Known`, `Max_Level`) VALUES
(1, 1, NULL, NULL),
(2, 2, 2, '1st-Level'),
(3, 3, 3, '1st-Level'),
(4, 4, 3, '1st-Level'),
(5, 5, 4, '2nd-Level'),
(6, 6, 4, '2nd-Level'),
(7, 7, 5, '2nd-Level'),
(8, 8, 5, '2nd-Level'),
(9, 9, 6, '3rd-Level'),
(10, 10, 6, '3rd-Level'),
(11, 11, 7, '3rd-Level'),
(12, 12, 7, '3rd-Level'),
(13, 13, 8, '4th-Level'),
(14, 14, 8, '4th-Level'),
(15, 15, 9, '4th-Level'),
(16, 16, 9, '4th-Level'),
(17, 17, 10, '5th-Level'),
(18, 18, 10, '5th-Level'),
(19, 19, 11, '5th-Level'),
(20, 20, 11, '5th-Level');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_skills`
--

CREATE TABLE `cms_class_skills` (
  `ID` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_skills` varchar(50) NOT NULL,
  `choices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_skills`
--

INSERT INTO `cms_class_skills` (`ID`, `class_id`, `class_skills`, `choices`) VALUES
(1, 1, '0|0|0|0|0|1|1|0|0|1|0|0|0|1|1|0|0|0', 2),
(2, 2, '1|1|0|1|0|1|1|1|0|0|0|1|0|0|0|0|0|1', 2),
(3, 3, '1|0|0|1|1|0|1|1|1|0|0|1|1|1|0|1|1|0', 4),
(4, 4, '0|0|1|0|0|1|1|0|1|1|0|0|0|0|1|0|0|0', 2),
(5, 5, '0|1|0|1|0|0|0|1|0|0|1|1|0|0|0|0|0|1', 2),
(6, 6, '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1', 4),
(7, 7, '0|1|1|0|0|0|1|0|0|1|1|1|0|0|1|0|0|1', 2),
(8, 8, '1|0|0|1|0|1|1|0|0|0|0|0|0|0|1|0|1|0', 2),
(9, 9, '0|0|0|1|0|0|1|1|0|1|0|0|0|1|1|0|0|0', 2),
(10, 10, '0|1|0|1|0|0|1|0|1|0|1|1|0|0|0|0|1|1', 3),
(11, 11, '0|0|1|0|1|0|1|1|0|0|0|0|0|1|1|0|0|0', 2),
(12, 12, '0|0|1|0|1|1|0|1|1|0|1|0|0|0|1|0|0|0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_sorcerer_draconic`
--

CREATE TABLE `cms_class_sorcerer_draconic` (
  `ID` int(11) NOT NULL,
  `Dragon_Ancestor` varchar(50) NOT NULL,
  `Damage_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_sorcerer_draconic`
--

INSERT INTO `cms_class_sorcerer_draconic` (`ID`, `Dragon_Ancestor`, `Damage_Type`) VALUES
(1, 'Black', 'Acid'),
(2, 'Blue', 'Lightning'),
(3, 'Brass', 'Fire'),
(4, 'Bronze', 'Lightning'),
(5, 'Copper', 'Acid'),
(6, 'Gold', 'Fire'),
(7, 'Green', 'Poison'),
(8, 'Red', 'Fire'),
(9, 'Silver', 'Cold'),
(10, 'White', 'Cold');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_sorcerer_metamagic`
--

CREATE TABLE `cms_class_sorcerer_metamagic` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_sorcerer_metamagic`
--

INSERT INTO `cms_class_sorcerer_metamagic` (`ID`, `Name`) VALUES
(1, 'Careful Spell'),
(2, 'Distant Spell'),
(3, 'Empowered Spell'),
(4, 'Extended Spell'),
(5, 'Heighted Spell'),
(6, 'Quickened Spell'),
(7, 'Subtle Spell'),
(8, 'Twinned Spell');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_sorcerer_spellsknown`
--

CREATE TABLE `cms_class_sorcerer_spellsknown` (
  `ID` int(11) NOT NULL,
  `Sorcerer_Level` int(11) NOT NULL,
  `Spells` int(11) NOT NULL,
  `Max_Level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_sorcerer_spellsknown`
--

INSERT INTO `cms_class_sorcerer_spellsknown` (`ID`, `Sorcerer_Level`, `Spells`, `Max_Level`) VALUES
(1, 1, 2, '1st-Level'),
(2, 2, 3, '1st-Level'),
(3, 3, 4, '2nd-Level'),
(4, 4, 5, '2nd-Level'),
(5, 5, 6, '3rd-Level'),
(6, 6, 7, '3rd-Level'),
(7, 7, 8, '4th-Level'),
(8, 8, 9, '4th-Level'),
(9, 9, 10, '5th-Level'),
(10, 10, 11, '5th-Level'),
(11, 11, 12, '6th-Level'),
(12, 12, 12, '6th-Level'),
(13, 13, 13, '7th-Level'),
(14, 14, 13, '7th-Level'),
(15, 15, 14, '8th-Level'),
(16, 16, 14, '8th-Level'),
(17, 17, 15, '9th-Level'),
(18, 18, 15, '9th-Level'),
(19, 19, 15, '9th-Level'),
(20, 20, 15, '9th-Level');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_tools`
--

CREATE TABLE `cms_class_tools` (
  `ID` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_tools` varchar(100) NOT NULL,
  `tool_text` text NOT NULL,
  `choices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_tools`
--

INSERT INTO `cms_class_tools` (`ID`, `class_id`, `class_tools`, `tool_text`, `choices`) VALUES
(1, 1, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(2, 2, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(3, 3, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|-1|0|0', 'Thieve\'s Tools', 0),
(4, 4, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(5, 5, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(6, 6, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0', 'Choose Three Instruments', 3),
(7, 7, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|-1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'Herbalism Kit', 0),
(8, 8, '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0|0|0|1|1|1|1|1|1|1|1|1|1|0|0|0|0|0', 'Choose One Artisan Tool or Instrument', 1),
(9, 9, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(10, 10, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(11, 11, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0),
(12, 12, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_traits`
--

CREATE TABLE `cms_class_traits` (
  `ID` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  `Sub_ID` int(11) NOT NULL,
  `trait_ID` int(11) NOT NULL,
  `trait_Level` int(11) NOT NULL,
  `trait_Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_traits`
--

INSERT INTO `cms_class_traits` (`ID`, `Class_ID`, `Sub_ID`, `trait_ID`, `trait_Level`, `trait_Text`) VALUES
(1, 1, 1, 1, 1, 'Divine Domain: Knowledge'),
(2, 1, 2, 1, 1, 'Divine Domain: Life'),
(3, 1, 3, 1, 1, 'Divine Domain: Light'),
(4, 1, 4, 1, 1, 'Divine Domain: Nature'),
(5, 1, 5, 1, 1, 'Divine Domain: Tempest'),
(6, 1, 6, 1, 1, 'Divine Domain: Trickery'),
(7, 1, 7, 1, 1, 'Divine Domain: War'),
(8, 1, 8, 1, 1, 'Divine Domain: Death'),
(9, 1, 9, 1, 1, 'Divine Domain: Arcana'),
(10, 1, 2, 2, 1, 'Disciple of Life'),
(11, 1, 3, 2, 1, 'Warding Flare'),
(12, 1, 5, 2, 1, 'Wrath of the Storm'),
(13, 1, 6, 2, 1, 'Blessing of the Trickster'),
(14, 1, 7, 2, 1, 'War Priest'),
(15, 1, 8, 2, 1, 'Reaper'),
(16, 1, 1, 3, 2, 'Channel Divinity: Knowledge of the Ages'),
(17, 1, 2, 3, 2, 'Channel Divinity: Preserve Life'),
(18, 1, 3, 3, 2, 'Channel Divinity: Radiance of the Dawn'),
(19, 1, 4, 3, 2, 'Channel Divinity: Charm Animals and Plants'),
(20, 1, 5, 3, 2, 'Channel Divinity: Destructive Wrath'),
(21, 1, 6, 3, 2, 'Channel Divinity: Invoke Duplicity'),
(22, 1, 7, 3, 2, 'Channel Divinity: Guided Strike'),
(23, 1, 8, 3, 2, 'Channel Divinity: Touch of Death'),
(24, 1, 9, 3, 2, 'Channel Divinity: Arcane Abjuration'),
(25, 1, 1, 4, 6, 'Channel Divinity: Read Thoughts'),
(26, 1, 2, 4, 6, 'Blessed Healer'),
(27, 1, 3, 4, 6, 'Improved Flare'),
(28, 1, 4, 4, 6, 'Dampen Elements'),
(29, 1, 5, 4, 6, 'Thunderbolt Strike'),
(30, 1, 6, 4, 6, 'Channel Divinity: Cloak of Shadows'),
(31, 1, 7, 4, 6, 'Channel Divinity: War God\'s Blessing'),
(32, 1, 8, 4, 6, 'Inescapable Destruction'),
(33, 1, 9, 4, 6, 'Spell Breaker'),
(34, 1, 1, 5, 8, 'Potent Spellcasting'),
(35, 1, 2, 5, 8, 'Divine Strike'),
(36, 1, 3, 5, 8, 'Potent Spell Casting'),
(37, 1, 4, 5, 8, 'Divine Strike'),
(38, 1, 5, 5, 8, 'Divine Strike'),
(39, 1, 6, 5, 8, 'Divine Strike'),
(40, 1, 7, 5, 8, 'Divine Strike'),
(41, 1, 8, 5, 8, 'Divine Strike'),
(42, 1, 9, 5, 8, 'Potent Spell Casting'),
(43, 1, 1, 6, 17, 'Visions of the Past'),
(44, 1, 2, 6, 17, 'Supreme Healing'),
(45, 1, 3, 6, 17, 'Corona of Light'),
(46, 1, 4, 6, 17, 'Master of Nature'),
(47, 1, 5, 6, 17, 'Stormborn'),
(48, 1, 6, 6, 17, 'Improved Duplicity'),
(49, 1, 7, 6, 17, 'Avatar of Battle'),
(50, 1, 8, 6, 17, 'Improved Reaper'),
(51, 1, 9, 6, 17, 'Arcane Mastery'),
(52, 1, 0, 7, 2, 'Channel Divinity (1/rest)'),
(53, 1, 0, 8, 5, 'Destroy Undead CR 1/2'),
(54, 1, 0, 9, 6, 'Channel Divinity 2/Rest'),
(55, 1, 0, 10, 10, 'Divine Intervention'),
(56, 1, 0, 11, 18, 'Channel Divinity (3/rest)'),
(57, 1, 0, 12, 20, 'Improved Divine Intervention'),
(58, 1, 0, 13, 8, 'Destroy Undead CR 1'),
(59, 1, 0, 14, 11, 'Destroy Undead CR 2'),
(60, 1, 0, 15, 14, 'Destroy Undead CR 3'),
(61, 1, 0, 16, 17, 'Destroy Undead CR 4'),
(62, 2, 1, 17, 3, 'Improved Critical 19-20'),
(63, 2, 1, 18, 7, 'Remarkable Athelete'),
(64, 2, 1, 19, 10, '~Additional Fighting Style~'),
(65, 2, 1, 20, 15, 'Superior Critical 18-20'),
(66, 2, 1, 21, 18, 'Survivor'),
(67, 2, 2, 17, 3, 'Combat Superiority: d8'),
(68, 2, 2, 18, 7, 'Know Your Enemy'),
(69, 2, 2, 19, 10, 'Improved Combat Superiority: d10'),
(70, 2, 2, 20, 15, 'Relentless'),
(71, 2, 2, 21, 18, 'Improved Combat Superiority: d12'),
(72, 2, 2, 22, 3, 'Student of War'),
(73, 2, 2, 23, 3, 'Combat Maneuvers'),
(74, 2, 2, 24, 7, 'New Maneuvers'),
(75, 2, 2, 25, 10, 'New Maneuvers'),
(76, 2, 2, 20, 15, 'New Maneuvers'),
(77, 2, 3, 17, 3, 'Weapon Bond'),
(78, 2, 3, 18, 7, 'War Magic'),
(79, 2, 3, 19, 10, 'Eldritch Strike'),
(80, 2, 3, 20, 15, 'Arcane Charge'),
(81, 2, 3, 21, 18, 'Improved War Magic'),
(82, 2, 3, 17, 3, 'Rallying Cry'),
(83, 2, 3, 18, 7, 'Royal Envoy'),
(84, 2, 3, 19, 10, 'Inspiring Surge'),
(85, 2, 3, 20, 15, 'Bulwark'),
(86, 2, 3, 21, 18, 'Improved Inspiring Surge'),
(87, 2, 0, 26, 1, 'Fighting Style'),
(88, 2, 0, 27, 0, 'Second Wind'),
(89, 2, 0, 28, 2, 'Action Surge 1/day'),
(90, 2, 0, 29, 17, 'Action Surge 2/day'),
(91, 2, 0, 30, 5, 'Extra Attack'),
(92, 2, 0, 31, 11, 'Extra Attack 2'),
(93, 2, 0, 32, 20, 'Extra Attack 3'),
(94, 2, 0, 33, 5, 'Indomitable 1/day'),
(95, 2, 0, 34, 11, 'Indomitable 2/day'),
(96, 2, 0, 35, 20, 'Indomitable 3/day'),
(97, 2, 0, 36, 6, 'Ability Score Improvement or Feat'),
(98, 2, 0, 37, 14, 'Ability Score Improvement or Feat'),
(99, 3, 1, 38, 3, 'Fast Hands'),
(100, 3, 1, 39, 3, 'Second-Story Work'),
(101, 3, 1, 40, 9, 'Supreme Sneak'),
(102, 3, 1, 41, 13, 'Use Magic Device'),
(103, 3, 1, 42, 17, 'Thief\'s Reflexes'),
(104, 3, 2, 38, 3, 'Bonus Proficiencies'),
(105, 3, 2, 39, 3, 'Assassinate'),
(106, 3, 2, 40, 9, 'Infiltration Expertise'),
(107, 3, 2, 41, 13, 'Impostor'),
(108, 3, 2, 42, 17, 'Death Strike'),
(109, 3, 3, 39, 3, 'Mage Hand Legerdmain'),
(110, 3, 3, 40, 9, 'Magical Ambush'),
(111, 3, 3, 41, 13, 'Versatile Trickster'),
(112, 3, 3, 42, 17, 'Spell Thief'),
(113, 3, 4, 38, 3, 'Master of Intrigue'),
(114, 3, 4, 39, 3, 'Master of Tactics'),
(115, 3, 4, 40, 9, 'Insightful Manipulator'),
(116, 3, 4, 41, 13, 'Misdirection'),
(117, 3, 4, 42, 17, 'Soul of Deceit'),
(118, 3, 5, 38, 3, 'Fancy Footwork'),
(119, 3, 5, 39, 3, 'Rakish Audacity'),
(120, 3, 5, 40, 9, 'Panache'),
(121, 3, 5, 41, 13, 'Elegant Maneuver'),
(122, 3, 5, 42, 17, 'Master Duelist'),
(123, 3, 0, 43, 1, 'Expertise (2)'),
(124, 3, 0, 44, 6, 'Expertise (4)'),
(125, 3, 0, 45, 1, 'Sneak Attack'),
(126, 3, 0, 46, 1, 'Thieves Cant'),
(127, 3, 0, 47, 2, 'Cunning Action'),
(128, 3, 0, 48, 5, 'Uncanny Dodge'),
(129, 3, 0, 49, 7, 'Evasion'),
(130, 3, 0, 50, 11, 'Reliable Talent'),
(131, 3, 0, 51, 14, 'Blind Sense'),
(132, 3, 0, 52, 15, 'Slippery Mind'),
(133, 3, 0, 53, 18, 'Elusive'),
(134, 3, 0, 54, 20, 'Stroke of Luck'),
(135, 4, 1, 55, 2, 'Abjuration Savant'),
(136, 4, 1, 56, 2, 'Arcane Ward'),
(137, 4, 1, 57, 6, 'Protected Ward'),
(138, 4, 1, 58, 10, 'Improved Abjuration'),
(139, 4, 1, 59, 14, 'Spell Resistance'),
(140, 4, 2, 55, 2, 'Conjuration Savant'),
(141, 4, 2, 56, 2, 'Minor Conjuration'),
(142, 4, 2, 57, 6, 'Benign Transposition'),
(143, 4, 2, 58, 10, 'Focused Conjuration'),
(144, 4, 2, 59, 14, 'Durable Summons'),
(145, 4, 3, 55, 2, 'Divination Savant'),
(146, 4, 3, 56, 2, 'Portent'),
(147, 4, 3, 57, 6, 'Expert Divination'),
(148, 4, 3, 58, 10, 'The Third Eye'),
(149, 4, 3, 59, 14, 'Greater Portent'),
(150, 4, 4, 55, 2, 'Enchantment Savant'),
(151, 4, 4, 56, 2, 'Hypnotic'),
(152, 4, 4, 57, 6, 'Instinctive Charm'),
(153, 4, 4, 58, 10, 'Split Enchantment'),
(154, 4, 4, 59, 14, 'Alter Memories'),
(155, 4, 5, 55, 2, 'Evocation Savant'),
(156, 4, 5, 56, 2, 'Sculpt Spells'),
(157, 4, 5, 57, 6, 'Potent Cantrip'),
(158, 4, 5, 58, 10, 'Empowered Evocation'),
(159, 4, 5, 59, 14, 'Overchannel'),
(160, 4, 6, 55, 2, 'Illusion Savant'),
(161, 4, 6, 56, 2, 'Improved Minor Illusion'),
(162, 4, 6, 57, 6, 'Malleable Illusions'),
(163, 4, 6, 58, 10, 'Illusory Self'),
(164, 4, 6, 59, 14, 'Illusory Reality'),
(165, 4, 7, 55, 2, 'Necromancy Savant'),
(166, 4, 7, 56, 2, 'Grim Harvest'),
(167, 4, 7, 57, 6, 'Undead Thralls'),
(168, 4, 7, 58, 10, 'Inured to Undeath'),
(169, 4, 7, 59, 14, 'Command Undead'),
(170, 4, 8, 55, 2, 'Transmutation Savant'),
(171, 4, 8, 56, 2, 'Minor Alchemy'),
(172, 4, 8, 57, 6, 'Transmuter\'s Stone'),
(173, 4, 8, 58, 10, 'Shapechanger'),
(174, 4, 8, 59, 14, 'Master Transmuter'),
(175, 4, 9, 55, 2, 'Training in War and Song'),
(176, 4, 9, 56, 2, 'Blade Song'),
(177, 4, 9, 57, 6, 'Extra Attack'),
(178, 4, 9, 58, 10, 'Song of Defense'),
(179, 4, 9, 59, 14, 'Song of Victory'),
(180, 4, 0, 60, 1, 'Arcane Recovery'),
(181, 4, 0, 61, 18, 'Spell Mastery'),
(182, 4, 0, 62, 20, 'Signature Spells'),
(183, 0, 0, 63, 4, 'Ability Score Improvement or Feat'),
(184, 0, 0, 64, 8, 'Ability Score Improvement or Feat'),
(185, 0, 0, 65, 12, 'Ability Score Improvement or Feat'),
(186, 0, 0, 66, 16, 'Ability Score Improvement or Feat'),
(187, 0, 0, 67, 19, 'Ability Score Improvement or Feat'),
(188, 5, 1, 68, 3, 'Frenzy'),
(189, 5, 1, 69, 6, 'Mindless Rage'),
(190, 5, 1, 70, 10, 'Intimidating Presence'),
(191, 5, 1, 71, 14, 'Retaliation'),
(193, 5, 2, 72, 3, 'Spirit Seeker'),
(194, 5, 2, 68, 3, 'Totem Spirit'),
(195, 5, 2, 69, 6, 'Aspect of the Beast'),
(196, 5, 2, 70, 10, 'Spirit Walker'),
(197, 5, 2, 71, 14, 'Totemic Atunement'),
(198, 5, 3, 68, 3, 'Battlerager Armor'),
(199, 5, 3, 69, 6, 'Reckless Abandon'),
(200, 5, 3, 70, 10, 'Battlerager Charge'),
(201, 5, 3, 71, 14, 'Spiked Retribution'),
(202, 5, 0, 72, 1, 'Rage'),
(203, 5, 0, 73, 1, 'Unarmored Defense'),
(204, 5, 0, 74, 2, 'Reckless Attack'),
(205, 5, 0, 75, 2, 'Danger Sense'),
(206, 5, 0, 76, 5, 'Extra Attack'),
(207, 5, 0, 77, 5, 'Fast Movement'),
(208, 5, 0, 78, 7, 'Feral Instinct'),
(209, 5, 0, 79, 9, 'Brutal Critical (1 die)'),
(210, 5, 0, 80, 13, 'Brutal Critical (2 die)'),
(211, 5, 0, 81, 17, 'Brutal Critical (4 die)'),
(212, 5, 0, 82, 12, 'Relentless Rage'),
(213, 5, 0, 83, 15, 'Persistent Rage'),
(214, 5, 0, 84, 18, 'Indomitable Might'),
(215, 5, 0, 85, 20, 'Primal Champion'),
(216, 6, 1, 86, 3, 'Bonus Proficiencies (Skills)'),
(217, 6, 1, 87, 3, 'Cutting Words'),
(218, 6, 1, 88, 6, 'Additional Magical Secrets'),
(219, 6, 1, 89, 14, 'Peerless Skill'),
(220, 6, 2, 86, 3, 'Bonus Proficiencies (Equipment)'),
(221, 6, 2, 87, 3, 'Combat Inspiration'),
(222, 6, 2, 88, 6, 'Extra Attack'),
(223, 6, 2, 89, 14, 'Battle Magic'),
(224, 6, 0, 90, 1, 'Bardic Inspiration (d6)'),
(225, 6, 0, 91, 2, 'Jack of All Trades'),
(226, 6, 0, 92, 3, 'Expertise'),
(227, 6, 0, 93, 5, 'Font of Inspiration'),
(228, 6, 0, 94, 6, 'Countercharm'),
(229, 6, 0, 95, 10, 'Magical Secrets'),
(230, 6, 0, 96, 14, 'Magical Secrets'),
(231, 6, 0, 97, 18, 'Magical Secrets'),
(232, 6, 0, 98, 20, 'Superior Inspiration'),
(233, 7, 1, 99, 2, 'Bonus Cantrip'),
(234, 7, 1, 100, 2, 'Natural Recovery'),
(235, 7, 1, 101, 3, 'Circle Spells'),
(236, 7, 1, 102, 6, 'Land\'s Stride'),
(237, 7, 1, 103, 10, 'Nature\'s Ward'),
(238, 7, 1, 104, 14, 'Nature\'s Sanctuary'),
(239, 7, 2, 100, 2, 'Combat Wild Shape'),
(240, 7, 2, 101, 3, 'Circle Forms'),
(241, 7, 2, 102, 6, 'Primal Strike'),
(242, 7, 2, 103, 10, 'Elemental Wild Shape'),
(243, 7, 2, 104, 14, 'Thousand Forms'),
(244, 7, 0, 105, 1, 'Druidic'),
(245, 7, 0, 106, 2, 'Wild Shape CR 1/4 No Flying or Swimming Speed.'),
(246, 7, 0, 107, 4, 'Wild Shape: CR 1/2 No Flying Speed'),
(247, 7, 0, 108, 8, 'Wild Shape: CR 1'),
(248, 7, 0, 109, 18, 'Timeless Body'),
(249, 7, 0, 110, 18, 'Beast Spells'),
(250, 7, 0, 111, 20, 'Archdruid'),
(251, 8, 1, 112, 3, 'Open Hand Technique'),
(252, 8, 1, 113, 6, 'Wholeness of Body'),
(253, 8, 1, 114, 11, 'Tranquility'),
(254, 8, 1, 115, 17, 'Quivering Palm'),
(255, 8, 2, 112, 3, 'Shadow Arts'),
(256, 8, 2, 113, 6, 'Shadow Step'),
(257, 8, 2, 114, 11, 'Cloak of Shadows'),
(258, 8, 2, 115, 17, 'Opportunist'),
(259, 8, 3, 112, 3, 'New Discipline'),
(260, 8, 3, 113, 6, 'New Discipline'),
(261, 8, 3, 114, 11, 'New Discipline '),
(262, 8, 3, 115, 17, 'New Discipline'),
(263, 8, 4, 112, 3, 'Touch of Death'),
(264, 8, 4, 113, 6, 'Hour of Reaping'),
(265, 8, 4, 114, 11, 'Mastery of Death'),
(266, 8, 4, 115, 17, 'Touch of the Long Death'),
(267, 8, 0, 116, 1, 'Unarmored Defense'),
(268, 8, 0, 117, 1, 'Martial Arts'),
(269, 8, 0, 118, 2, 'Ki: Flurry of Blows, Patent Defense, Step of The Wind'),
(270, 8, 0, 119, 2, 'Unarmored Movement'),
(271, 8, 0, 120, 3, 'Deflect Missiles'),
(272, 8, 0, 121, 4, 'Slow Fall'),
(273, 8, 0, 122, 5, 'Extra Attack'),
(274, 8, 0, 123, 5, 'Stunning Strike'),
(275, 8, 0, 124, 5, 'Ki-Empowered Strikes'),
(277, 8, 0, 125, 7, 'Evasion'),
(278, 8, 0, 126, 7, 'Stillness of Mind'),
(279, 8, 0, 127, 9, 'Improved Unarmored Movement'),
(280, 8, 0, 128, 10, 'Purity of Body'),
(281, 8, 0, 129, 13, 'Tongue of the Sun and Moon'),
(282, 8, 0, 130, 14, 'Diamond Soul'),
(283, 8, 0, 131, 15, 'Timeless Body'),
(284, 8, 0, 132, 18, 'Empty Body'),
(285, 8, 0, 133, 20, 'Perfect Self'),
(286, 9, 1, 134, 7, 'Aura of Devotion'),
(287, 9, 1, 135, 15, 'Purity of Spirit'),
(288, 9, 1, 136, 20, 'Holy Nimbus'),
(289, 9, 2, 134, 7, 'Aura of Warding'),
(290, 9, 2, 135, 15, 'Undying Sentinel'),
(291, 9, 2, 136, 20, 'Elder Champion'),
(292, 9, 3, 134, 7, 'Relentless Avenger'),
(293, 9, 3, 135, 15, 'Soul of Vengeance'),
(294, 9, 3, 136, 20, 'Avenging Angel'),
(295, 9, 4, 134, 7, 'Divine Allegiance'),
(296, 9, 4, 135, 15, 'Unyielding Spirit'),
(297, 9, 4, 136, 20, 'Exalted Champion'),
(298, 9, 5, 134, 7, 'Aura of Hate'),
(299, 9, 5, 135, 15, 'Supernatural Resistance'),
(300, 9, 5, 136, 20, 'Dread Lord'),
(301, 9, 0, 137, 1, 'Divine Sense'),
(302, 9, 0, 138, 1, 'Lay on Hands'),
(303, 9, 0, 139, 2, 'Fighting Style'),
(304, 9, 0, 140, 2, 'Divine Smite'),
(305, 9, 0, 141, 3, 'Divine Health'),
(306, 9, 0, 143, 3, 'Sacred Oath'),
(307, 9, 0, 144, 5, 'Extra Attack'),
(308, 9, 0, 145, 6, 'Aura of Protection'),
(309, 9, 0, 146, 10, 'Aura of Courage'),
(310, 9, 0, 147, 11, 'Improved Divine Smite'),
(311, 9, 0, 148, 14, 'Cleansing Touch'),
(312, 9, 0, 149, 18, 'Aura Improvements'),
(313, 10, 1, 150, 3, 'Hunter\'s Prey'),
(314, 10, 1, 151, 7, 'Defensive Tactics'),
(315, 10, 1, 152, 11, 'Multiattack'),
(316, 10, 1, 153, 15, 'Superior Hunter\'s Defense'),
(317, 10, 2, 150, 3, 'Ranger\'s Companion'),
(318, 10, 2, 151, 7, 'Exceptional Training'),
(319, 10, 2, 152, 11, 'Bestial Fury'),
(320, 10, 2, 153, 15, 'Share Spells'),
(321, 10, 0, 154, 1, 'Favored Enemy'),
(322, 10, 0, 155, 6, 'Favored Enemy'),
(323, 10, 0, 156, 14, 'Favored Enemy'),
(324, 10, 0, 157, 1, 'Natural Explorer'),
(325, 10, 0, 158, 6, 'Natural Explorer'),
(326, 10, 0, 159, 10, 'Natural Explorer'),
(327, 10, 0, 160, 2, 'Fighting Style'),
(328, 10, 0, 161, 3, 'Primeval Awareness'),
(329, 10, 0, 162, 5, 'Extra Attack'),
(330, 10, 0, 163, 8, 'Land\'s Stride'),
(331, 10, 0, 164, 10, 'Hide In Plain Sight'),
(332, 10, 0, 165, 14, 'Vanish'),
(333, 10, 0, 166, 18, 'Feral Senses'),
(334, 10, 0, 167, 20, 'Foe Slayer'),
(335, 11, 1, 168, 1, 'Dragon Ancestor'),
(336, 11, 1, 169, 1, 'Draconic Resilience'),
(337, 11, 1, 170, 6, 'Elemental Affinity'),
(338, 11, 1, 171, 14, 'Dragon Wings'),
(339, 11, 1, 172, 18, 'Draconic Presence'),
(340, 11, 2, 168, 1, 'Wild Magic Surge'),
(341, 11, 2, 169, 1, 'Tides of Chaos'),
(342, 11, 2, 170, 6, 'Bend Luck'),
(343, 11, 2, 171, 14, 'Controlled Chaos'),
(344, 11, 2, 172, 18, 'Spell Bombardment'),
(345, 11, 3, 168, 1, 'Wind Speaker'),
(346, 11, 3, 169, 1, 'Tempestuous Magic'),
(347, 11, 3, 170, 6, 'Heart of the Storm'),
(348, 11, 3, 171, 6, 'Storm Guide'),
(349, 11, 3, 172, 14, 'Storm\'s Fury'),
(350, 11, 3, 173, 18, 'Wind Soul'),
(351, 11, 0, 174, 1, 'Font of Magic'),
(352, 11, 0, 175, 1, 'Flexible Casting'),
(353, 11, 0, 176, 3, 'Metamagic'),
(354, 11, 0, 177, 10, 'Metamagic'),
(355, 11, 0, 178, 17, 'Metamagic'),
(356, 11, 0, 179, 20, 'Sorcerous Restoration'),
(357, 12, 1, 180, 1, 'Fey Presence'),
(358, 12, 1, 181, 6, 'Misty Escape'),
(359, 12, 1, 182, 10, 'Beguiling Defense'),
(360, 12, 1, 183, 14, 'Dark Delirium'),
(361, 12, 2, 180, 2, 'Dark One\'s Blessing'),
(362, 12, 2, 181, 6, 'Dark One\'s Own Luck'),
(363, 12, 2, 182, 10, 'Fiendish Resilience'),
(364, 12, 2, 183, 14, 'Hurl Through Hell'),
(365, 12, 3, 180, 2, 'Awakened Mind'),
(366, 12, 3, 181, 6, 'Entropic Ward'),
(367, 12, 3, 182, 10, 'Thought Shield'),
(368, 12, 3, 183, 14, 'Create Thrall'),
(374, 12, 0, 184, 1, 'Pact Magic'),
(375, 12, 0, 185, 3, 'Pact Boon'),
(376, 12, 0, 186, 11, 'Mystic Arcanum 6th-Level'),
(377, 12, 0, 187, 13, 'Mystic Arcanum 7th-Level'),
(378, 12, 0, 188, 15, 'Mystic Arcanum 8th-Level'),
(379, 12, 0, 189, 17, 'Mystic Arcanum 9th-Level'),
(380, 12, 0, 190, 20, 'Eldritch Master'),
(381, 12, 4, 180, 1, 'Among the Dead'),
(382, 12, 4, 181, 6, 'Defy Death'),
(383, 12, 4, 182, 10, 'Undying Nature'),
(384, 12, 4, 183, 14, 'Indestructible Life');

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_warlock_invocations`
--

CREATE TABLE `cms_class_warlock_invocations` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Blast_Invocation` varchar(50) NOT NULL DEFAULT 'no',
  `Req_Level` int(11) NOT NULL DEFAULT '0',
  `Req_Pact` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_warlock_invocations`
--

INSERT INTO `cms_class_warlock_invocations` (`ID`, `Name`, `Blast_Invocation`, `Req_Level`, `Req_Pact`) VALUES
(1, 'Agonizing Blast', 'yes', 1, 0),
(2, 'Armor of Shadows', 'no', 1, 0),
(3, 'Ascendent Step', 'no', 9, 0),
(4, 'Beast Speech', 'no', 1, 0),
(5, 'Beguiling Influence', 'no', 1, 0),
(6, 'Bewitching Whispers', 'no', 7, 0),
(7, 'Book of Ancient Secrets', 'no', 1, 3),
(8, 'Chains of Carceri', 'no', 15, 1),
(9, 'Devil\'s Sight', 'no', 1, 0),
(10, 'Dreadful Word', 'no', 7, 0),
(11, 'Eldritch Sight', 'no', 1, 0),
(12, 'Eldritch Spear', 'yes', 1, 0),
(13, 'Eyes of the Rune Keeper', 'no', 1, 0),
(14, 'Fiendish Vigor', 'no', 1, 0),
(15, 'Gaze of Two Minds', 'no', 1, 0),
(16, 'Lifedrinker', 'no', 12, 2),
(17, 'Mask of Many Faces', 'no', 1, 0),
(18, 'Master of Myriad Forms', 'no', 15, 0),
(19, 'Minions of Chaos', 'no', 9, 0),
(20, 'Mire the Mind', 'no', 5, 0),
(21, 'Misty Visions', 'no', 1, 0),
(22, 'One With Shadows', 'no', 5, 0),
(23, 'Otherwordly Leap', 'no', 9, 0),
(24, 'Repelling Blast', 'yes', 1, 0),
(25, 'Sculptor of Flesh', 'no', 7, 0),
(26, 'Sign of Ill Omen', 'no', 5, 0),
(27, 'Thief of Five Fates', 'no', 1, 0),
(28, 'Thirsting Blade', 'no', 5, 2),
(29, 'Visions of Distant Realms', 'no', 15, 0),
(30, 'Voice of the Chain Master', 'no', 1, 0),
(31, 'Whispers of the Grave', 'no', 9, 0),
(32, 'Witch Sight', 'no', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_warlock_pactmagic`
--

CREATE TABLE `cms_class_warlock_pactmagic` (
  `ID` int(11) NOT NULL,
  `Warlock_Level` int(11) NOT NULL,
  `Spells` int(11) NOT NULL,
  `Spell Slots` int(11) NOT NULL,
  `Slot Level` varchar(50) NOT NULL,
  `Invocations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_warlock_pactmagic`
--

INSERT INTO `cms_class_warlock_pactmagic` (`ID`, `Warlock_Level`, `Spells`, `Spell Slots`, `Slot Level`, `Invocations`) VALUES
(1, 1, 2, 1, '1st-Level', NULL),
(2, 2, 3, 2, '1st-Level', 2),
(3, 3, 4, 2, '2nd-Level', 2),
(4, 4, 5, 2, '2nd-Level', 2),
(5, 5, 6, 2, '3rd-Level', 3),
(6, 6, 7, 2, '3rd-Level', 3),
(7, 7, 8, 2, '4th-Level', 4),
(8, 8, 9, 2, '4th-Level', 4),
(9, 9, 10, 2, '5th-Level', 5),
(10, 10, 10, 2, '5th-Level', 5),
(11, 11, 11, 3, '5th-Level', 5),
(12, 12, 11, 3, '5th-Level', 6),
(13, 13, 12, 3, '5th-Level', 6),
(14, 14, 12, 3, '5th-Level', 6),
(15, 15, 13, 3, '5th-Level', 7),
(16, 16, 13, 3, '5th-Level', 7),
(17, 17, 14, 4, '5th-Level', 7),
(18, 18, 14, 4, '5th-Level', 8),
(19, 19, 15, 4, '5th-Level', 8),
(20, 20, 15, 4, '5th-Level', 8);

-- --------------------------------------------------------

--
-- Table structure for table `cms_class_wpn_prof`
--

CREATE TABLE `cms_class_wpn_prof` (
  `ID` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `wpn_type` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_class_wpn_prof`
--

INSERT INTO `cms_class_wpn_prof` (`ID`, `class_id`, `wpn_type`) VALUES
(1, 1, 'Simple Melee'),
(2, 1, 'Simple Ranged'),
(3, 2, 'Simple Melee'),
(4, 2, 'Simple Ranged'),
(5, 2, 'Martial Melee'),
(6, 2, 'Martial Ranged'),
(7, 3, 'Simple Melee'),
(8, 3, 'Simple Ranged'),
(9, 5, 'Simple Melee'),
(10, 5, 'Simple Ranged'),
(11, 5, 'Martial Melee'),
(12, 5, 'Martial Ranged'),
(13, 6, 'Simple Melee'),
(14, 6, 'Simple Ranged'),
(15, 8, 'Simple Melee'),
(16, 8, 'Simple Ranged'),
(17, 9, 'Simple Melee'),
(18, 9, 'Simple Ranged'),
(19, 9, 'Martial Melee'),
(20, 9, 'Martial Ranged'),
(21, 10, 'Simple Melee'),
(23, 10, 'Simple Ranged'),
(24, 10, 'Martial Melee'),
(25, 10, 'Martial Ranged'),
(26, 12, 'Simple Melee'),
(27, 12, 'Simple Ranged');

-- --------------------------------------------------------

--
-- Table structure for table `cms_config`
--

CREATE TABLE `cms_config` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Value` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_config`
--

INSERT INTO `cms_config` (`ID`, `Name`, `Value`) VALUES
(1, 'SiteName', 'Hall of Heroes'),
(2, 'Template', 'default'),
(3, 'Theme', 'Default'),
(4, 'TimeZone', '0'),
(5, 'Articles', '5'),
(6, 'DateFormat', 'm/d/Y');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_armor`
--

CREATE TABLE `cms_dnd_armor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `Value` int(50) NOT NULL,
  `AC` int(11) NOT NULL,
  `DexA` varchar(5) NOT NULL DEFAULT 'N',
  `DexM` int(11) NOT NULL,
  `StrR` int(11) NOT NULL DEFAULT '0',
  `Stealth` varchar(2) NOT NULL,
  `Weight` int(25) NOT NULL,
  `Material` varchar(100) NOT NULL DEFAULT 'Generic'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_armor`
--

INSERT INTO `cms_dnd_armor` (`ID`, `Name`, `Type`, `Value`, `AC`, `DexA`, `DexM`, `StrR`, `Stealth`, `Weight`, `Material`) VALUES
(1, 'Padded', 'Light', 5, 11, 'Y', 5, 0, 'Y', 8, 'Generic'),
(2, 'Leather', 'Light', 10, 11, 'Y', 5, 0, 'N', 10, 'Generic'),
(3, 'Studded Leather', 'Light', 45, 12, 'Y', 5, 0, 'N', 13, 'Generic'),
(4, 'Hide', 'Medium', 10, 12, 'Y', 2, 0, 'N', 13, 'Generic'),
(5, 'Chain Shirt', 'Medium', 50, 13, 'Y', 2, 0, 'Y', 40, 'Generic'),
(6, 'Scale Mail', 'Medium', 50, 14, 'Y', 2, 0, 'Y', 45, 'Generic'),
(7, 'Breastplate', 'Medium', 400, 14, 'Y', 2, 0, 'N', 20, 'Generic'),
(8, 'Half Plate', 'Medium', 750, 15, 'Y', 2, 0, 'Y', 40, 'Generic'),
(9, 'Ring Mail', 'Heavy', 30, 14, 'N', 0, 0, 'Y', 40, 'Generic'),
(10, 'Chain Mail', 'Heavy', 75, 16, 'N', 0, 13, 'Y', 55, 'Generic'),
(11, 'Splint', 'Heavy', 200, 17, 'N', 0, 15, 'Y', 60, 'Generic'),
(12, 'Plate', 'Heavy', 1500, 18, 'N', 0, 15, 'Y', 65, 'Generic'),
(13, 'Shield', 'Shield', 10, 2, 'N', 0, 0, 'N', 6, 'Generic');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_char`
--

CREATE TABLE `cms_dnd_char` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Class` int(11) NOT NULL,
  `Background` int(11) NOT NULL,
  `Race` int(11) NOT NULL,
  `Alignment` enum('LG','NG','CH','LN','NN','CN','LE','NE','CE') NOT NULL,
  `Owner` int(11) NOT NULL,
  `Gender` enum('M','F','O','') NOT NULL,
  `aStr` int(3) NOT NULL,
  `aDex` int(3) NOT NULL,
  `aCon` int(3) NOT NULL,
  `aInt` int(3) NOT NULL,
  `aWis` int(3) NOT NULL,
  `aCha` int(3) NOT NULL,
  `Exp` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_char`
--

INSERT INTO `cms_dnd_char` (`ID`, `Name`, `Surname`, `Class`, `Background`, `Race`, `Alignment`, `Owner`, `Gender`, `aStr`, `aDex`, `aCon`, `aInt`, `aWis`, `aCha`, `Exp`) VALUES
(1, 'Laoi', 'Rielle', 3, 2, 122, 'CN', 1, 'F', 10, 17, 11, 14, 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_epic_boons`
--

CREATE TABLE `cms_dnd_epic_boons` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_epic_boons`
--

INSERT INTO `cms_dnd_epic_boons` (`ID`, `Name`, `Description`) VALUES
(1, 'Boon of Combat Prowess', 'When you miss with a melee weapon attack, you can choose to hit instead. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(2, 'Boon of Dimensional Travel', 'As an action, you can cast the misty step spell, without using a spell slot or any components. Once you do so, you can\'t use this boon again until you finish a short rest.'),
(3, 'Boon of Fate', 'When another creature that you can see within 60 feet of you makes an ability check, an attack roll, or a saving throw, you can roll a d2O and apply the result as a bonus or penalty to the roll. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(4, 'Boon of Fortitude', 'Your hit point maximum increases by 40.'),
(5, 'Boon of High Magic', 'You gain one one 9th-Level spell slot, provided you already have one.'),
(6, 'Boon of Immortality', 'You stop aging. You are immune to any effect that would age you, and you can\'t die from old age.'),
(7, 'Boon of Invincibility', 'When you take damage from any source, you can reduce that damage to 0. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(8, 'Boon of Irresistible Offense', 'You can bypass the damage resistances of any creature.'),
(9, 'Boon of Luck', 'You can add a d1O roll to any ability check, attack roll, or saving throw you make. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(10, 'Boon of Magic Resistance', 'You have advantage on saving throws against spells and other magical effects.'),
(11, 'Boon of Peerless Aim', 'You can give yourself a +20 bonus to a ranged attack roll you make. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(12, 'Boon of Perfect Health', 'You are immune to all diseases and poisons, and you have advantage on Constitution saving throws.'),
(13, 'Boon of Planar Travel', 'When you gain this boon, choose a plane of existence other than the Material Plane. You can now use an action to cast the plane shift spell (no spell slot or components required), targeting yourself only, and travel to the chosen plane, or from that plane back to the Material Plane. Once you use this boon, you can\'t use it again until you finish a short rest.'),
(14, 'Boon of Quick Casting', 'Choose one of your spells of 1st through 3rd level that has a casting time of 1 action. That spell\'s casting time is now 1 bonus action for you.'),
(15, 'Boon of Recovery', 'You can use a bonus action to regain a number of hit points equal to half your hit point maximum. Once you use this boon, you can\'t use it again until you finish a long rest.'),
(16, 'Boon of Resilience', 'You have resistance to bludgeoning, piercing, and slashing damage from non-magical weapons.'),
(17, 'Boon of Skill Proficiency', 'You gain proficiency in all skills.'),
(18, 'Boon of Speed', 'Your walking speed increases by 30 feet.\r\nIn addition, you can use a bonus action to take the Dash or Disengage action. Once you do so, you can\'t do so again until you finish a short rest.'),
(19, 'Boon of Spell Mastery', 'Choose one 1st-level sorcerer, warlock, or wizard spell that you can cast. You can now cast that spell at its lowest level without expending a spell slot.'),
(20, 'Boon of Spell Recall', 'You can cast any spell you know or have prepared without expending a spell slot. Once you do so, you can\'t use this boon again until you finish a long rest.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_factions`
--

CREATE TABLE `cms_dnd_factions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  `Goals` text NOT NULL,
  `Beliefs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_factions`
--

INSERT INTO `cms_dnd_factions` (`ID`, `Name`, `Description`, `Goals`, `Beliefs`) VALUES
(1, 'Emerald Enclave', 'The Emerald Enclave is a widespread group of wilderness survivalists who preserve the natural order while rooting out unnatural threats. The organization is decentralized, hardy, and reclusive. Barbarians, druids, and rangers of good or neutral alignments are commonly drawn to the Emerald Enclave.', 'Restore and preserve the natural order.<br />Destroy all that is unnatural.<br />Keep the elemental forces of the world in check.<br /> Keep civilization and the wilderness from destroying each other.', 'The natural order must be respected and preserved.<br />Forces that upset the natural order must be destroyed.<br />Civilization and the wilderness must learn to coexist peacefully.'),
(2, 'Harpers', 'The Harpers is a scattered network of spellcasters and spies who advocate equality and covertly oppose the abuse of power. The organization is benevolent, knowledgeable, and secretive. Bards and wizards of good alignments are commonly drawn to the Harpers.', 'Gather information throughout Faerûn. <br />Promote fairness and equality by covert means.<br /> Thwart tyrants and leaders, governments, and organizations that grow too powerful. <br />Aid the weak, poor and oppressed.', 'One can never have too much information or arcane knowledge.<br />Too much power leads to corruption. The abuse of magic must be closely monitored.<br />No one should be powerless.'),
(3, 'Lords\' Aliance', 'The Lords\' Alliance is a loose coalition of established political powers concerned with mutual security and prosperity. The organization is aggressive, militant, and political. Fighters and sorcerers of lawful or neutral alignments are commonly drawn to the Lords’ Alliance.', 'Ensure the safety and prosperity of cities and other settlements of Faerûn.<br />Maintain a strong coalition against the forces of disorder.<br />Proactively eliminate threats to the established powers.<br />Bring honor and glory to one’s leaders and one’s homeland.', 'If civilization is to survive, all must unite against the dark forces that threaten it.<br />  Fight for your realm. Only you can bring honor, glory, and prosperity to your lord and homeland.<br />  Don’t wait for the enemy to come to you. The best defense is a strong offense.'),
(4, 'Order of the Gauntlet', 'The Order of the Gauntlet is composed of faithful and vigilant seekers of justice who protect others from the depredations of evildoers. The organization is honorable, vigilant, and zealous. Clerics, monks, and paladins of good (and often lawful good) alignments are commonly drawn to the Order of the Gauntlet.', 'Be armed and vigilant against evil.<br />Identify evil threats such as secretive power groups and inherently evil creatures.<br />Enforce justice.<br />Enact retribution against evil actions—do not strike preemptively.', 'Faith is the greatest weapon against evil—faith in one’s god, one’s friends, and one’s self.<br />Battling evil is an extraordinary task that requires extraordinary strength and bravery<br />Punishing an evil act is just. Punishing an evil thought is not.'),
(5, 'Zhentarium', 'The Zhentarim is an unscrupulous shadow network that seeks to expand its influence and power throughout Faerûn. The organization is ambitious, opportunistic, and meritocratic. Rogues and warlocks of neutral and/or evil alignments are commonly drawn to the Zhentarim.', 'Amass wealth.<br />Look for opportunities to seize power.<br />Gain influence over important people and organizations.<br />Dominate Faerûn.', 'The Zhentarim is your family. You watch out for it, and it watches out for you.<br />You are the master of your own destiny. Never be less than what you deserve to be.<br />Everything—and everyone—has a price.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_languages`
--

CREATE TABLE `cms_dnd_languages` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_languages`
--

INSERT INTO `cms_dnd_languages` (`ID`, `Name`, `Type`, `Source`) VALUES
(1, 'Common', 'Standard', 'PHB'),
(2, 'Dwarvish', 'Standard', 'PHB'),
(3, 'Elvish', 'Standard', 'PHB'),
(4, 'Giant', 'Standard', 'PHB'),
(5, 'Gnomish', 'Standard', 'PHB'),
(6, 'Goblin', 'Standard', 'PHB'),
(7, 'Halfling', 'Standard', 'PHB'),
(8, 'Orc', 'Standard', 'PHB'),
(9, 'Abyssal', 'Exotic', 'PHB'),
(10, 'Celestial', 'Exotic', 'PHB'),
(11, 'Draconic', 'Exotic', 'PHB'),
(12, 'Deep Speech', 'Exotic', 'PHB'),
(13, 'Infernal', 'Exotic', 'PHB'),
(14, 'Primordial', 'Exotic', 'PHB'),
(15, 'Sylvan', 'Exotic', 'PHB'),
(16, 'Undercommon', 'Exotic', 'PHB'),
(17, 'Druidic', 'Class', 'PHB'),
(18, 'Thieves\' Cant', 'Class', 'PHB'),
(19, 'Aarakocra', 'Race', 'EE'),
(20, 'Aven', 'Race', 'PSA'),
(21, 'Mimicry', 'Race', 'VgtM'),
(22, 'Khenra', 'Race', 'PSA'),
(23, 'Kor', 'Race', 'PSA'),
(24, 'Silent Speech', 'Race', 'PSA'),
(25, 'Merfolk', 'Race', 'PSZ'),
(26, 'Merfolk', 'Race', 'PSZ'),
(27, 'Minotaur', 'Race', 'PSZ'),
(28, 'Naga', 'Race', 'PSA'),
(29, 'Vampire', 'Race', 'PSA'),
(30, 'Vampire', 'Race', 'PSA'),
(31, 'Auran', 'Special', 'MM'),
(32, 'Aquan', 'Special', 'MM'),
(33, 'Ignan', 'Special', 'MM'),
(34, 'Terran', 'Special', 'MM'),
(35, 'All', 'Special', 'DMG'),
(36, 'Telepathy', 'Special', 'DMG');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_skills`
--

CREATE TABLE `cms_dnd_skills` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `AbilScore` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_skills`
--

INSERT INTO `cms_dnd_skills` (`ID`, `Name`, `AbilScore`) VALUES
(1, 'Acrobatics', 'Dex'),
(2, 'Animal Handling', 'Wis'),
(3, 'Arcana', 'Int'),
(4, 'Athletics', 'Str'),
(5, 'Deception', 'Cha'),
(6, 'History', 'Int'),
(7, 'Insight', 'Wis'),
(8, 'Intimidate', 'Cha'),
(9, 'Investigation', 'Int'),
(10, 'Medicine', 'Wis'),
(11, 'Nature', 'Wis'),
(12, 'Perception', 'Wis'),
(13, 'Performance', 'Cha'),
(14, 'Persuasion', 'Cha'),
(15, 'Religion', 'Int'),
(16, 'Sleight of Hand', 'Dex'),
(17, 'Stealth', 'Dex'),
(18, 'Survival', 'Wis');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_spells`
--

CREATE TABLE `cms_dnd_spells` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `HLvl` text NOT NULL,
  `Source` varchar(150) NOT NULL,
  `CastRange` varchar(50) NOT NULL,
  `Components` varchar(50) NOT NULL,
  `Materials` text NOT NULL,
  `Ritual` varchar(5) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `Concentration` varchar(50) NOT NULL,
  `CastTime` varchar(50) NOT NULL,
  `Level` varchar(50) NOT NULL,
  `School` varchar(50) NOT NULL,
  `Class` varchar(255) NOT NULL,
  `Archetype` varchar(255) NOT NULL,
  `Circles` varchar(255) NOT NULL,
  `Domains` varchar(255) NOT NULL,
  `Oaths` varchar(255) NOT NULL,
  `Patrons` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_spells`
--

INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(1, 'Acid Arrow', 'A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn.', 'When you cast this spell using a spell slot of 3rd level or higher, the damage (both initial and later) increases by 1d4 for each slot level above 2nd.', 'phb 259', '90 feet', 'V|S|M', 'Powdered rhubarb leaf and an adder’s stomach.', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Evocation', 'Druid|Wizard', '', 'Swamp', '', '', ''),
(2, 'Acid Splash', 'You hurl a bubble of acid. Choose one creature within range, or choose two creatures within range that are within 5 feet of each other. A target must succeed on a dexterity saving throw or take 1d6 acid damage. This spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).', '', 'phb 211', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'Cantrip', 'Conjuration', 'Sorcerer|Wizard', '', '', '', '', ''),
(3, 'Aid', 'Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target’s hit point maximum and current hit points increase by 5 for the duration.', 'When you cast this spell using a spell slot of 3rd level or higher, a target’s hit points increase by an additional 5 for each slot level above 2nd.', 'phb 211', '30 feet', 'V|S|M', 'A tiny strip of white cloth.', 'no', '8 hours', 'no', '1 action', '2nd-level', 'Abjuration', 'Cleric|Paladin', '', '', '', '', ''),
(4, 'Alarm', 'You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a Tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won’t set off the alarm. You also choose whether the alarm is mental or audible.A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping.An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.', '', 'phb 211', '30 feet', 'V|S|M', 'A tiny bell and a piece of fine silver wire.', 'yes', '8 hours', 'no', '1 minute', '1st-level', 'Abjuration', 'Ranger|Ritual Caster|Wizard', '', '', '', '', ''),
(5, 'Alter Self', 'You assume a different form. When you cast the spell, choose one of the following options, the effects of which last for the duration of the spell. While the spell lasts, you can end one option as an action to gain the benefits of a different one.<br /><strong>Aquatic Adaptation.</strong> You adapt your body to an aquatic environment, sprouting gills and growing webbing between your fingers. You can breathe underwater and gain a swimming speed equal to your walking speed.<br /><strong>Change Appearance.</strong> You transform your appearance. You decide what you look like, including your height, weight, facial features, sound of your voice, hair length, coloration, and distinguishing characteristics, if any. You can make yourself appear as a member of another race, though none of your statistics change. You also can’t appear as a creature of a different size than you, and your basic shape stays the same; if you&lsquo;re bipedal, you can’t use this spell to become quadrupedal, for instance. At any time for the duration of the spell, you can use your action to change your appearance in this way again.<br /><strong>Natural Weapons.</strong> You grow claws, fangs, spines, horns, or a different natural weapon of your choice. Your unarmed strikes deal 1d6 bludgeoning, piercing, or slashing damage, as appropriate to the natural weapon you chose, and you are proficient with your unarmed strikes. Finally, the natural weapon is magic and you have a +1 bonus to the attack and damage rolls you make using it.', '', 'phb 211', 'Self', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Transmutation', 'Sorcerer|Wizard', '', '', '', '', ''),
(6, 'Animal Friendship', '', 'You can affect one additional beast for each slot above 1st.', 'phb 212', '30 ft.', 'V|S|M', 'morsel of food', 'no', '24 hours', 'no', '1 action', '1st-level', 'Enchantment', 'Bard', '', '', 'Nature', '', ''),
(7, 'Animal Messenger', 'By means of this spell, you use an animal to deliver a message. Choose a Tiny beast you can see within range, such as a squirrel, a blue jay, or a bat. You specify a location, which you must have visited, and a recipient who matches a general description, such as “a man or woman dressed in the uniform of the town guard” or “a red-haired dwarf wearing a pointed hat.” You also speak a message of up to twenty-five words. The target beast travels for the duration of the spell toward the specified location, covering about 50 miles per 24 hours for a flying messenger, or 25 miles for other animals.When the messenger arrives, it delivers your message to the creature that you described, replicating the sound of your voice. The messenger speaks only to a creature matching the description you gave. If the messenger doesn’t reach its destination before the spell ends, the message is lost, and the beast makes its way back to where you cast this spell.', 'If you cast this spell using a spell slot of 3nd level or higher, the duration of the spell increases by 48 hours for each slot level above 2nd.', 'phb 212', '30 feet', 'V|S|M', 'A morsel of food.', 'yes', '24 hours', 'no', '1 action', '2nd-level', 'Enchantment', 'Bard|Druid|Ranger|Ritual Caster', '', '', '', '', ''),
(8, 'Animal Shapes', 'Your magic turns others into beasts. Choose any number of willing creatures that you can see within range. You transform each target into the form of a Large or smaller beast with a challenge rating of 4 or lower. On subsequent turns, you can use your action to transform affected creatures into new forms.The transformation lasts for the duration for each target, or until the target drops to 0 hit points or dies. You can choose a different form for each target. A target’s game statistics are replaced by the statistics of the chosen beast, though the target retains its alignment and Intelligence, Wisdom, and Charisma scores. The target assumes the hit points of its new form, and when it reverts to its normal form, it returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious. The creature is limited in the actions it can perform by the nature of its new form, and it can’t speak or cast spells.The target’s gear melds into the new form. The target can’t activate, wield, or otherwise benefit from any of its equipment.', '', 'phb 212', '30 feet', 'V|S', '', 'no', 'Up to 24 hours', 'yes', '1 action', '8th-level', 'Transmutation', 'Druid', '', '', '', '', ''),
(9, 'Animate Dead', 'This spell creates an undead servant. Choose a pile of bones or a corpse of a Medium or Small humanoid within range. Your spell imbues the target with a foul mimicry of life, raising it as an undead creature. The target becomes a skeleton if you chose bones or a zombie if you chose a corpse (the DM has the creature’s game statistics).On each of your turns, you can use a bonus action to mentally command any creature you made with this spell if the creature is within 60 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.The creature is under your control for 24 hours, after which it stops obeying any command you’ve given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature again before the current 24-hour period ends. This use of the spell reasserts your control over up to four creatures you have animated with this spell, rather than animating a new one.', 'When you cast this spell using a spell slot of 4th level or higher, you animate or reassert control over two additional undead creatures for each slot level above 3rd. Each of the creatures must come from a different corpse or pile of bones.', 'phb 212', '10 feet', 'V|S|M', 'A drop of blood, a piece of flesh, and a pinch of bone dust.', 'no', 'Instantaneous', 'no', '1 minute', '3rd-level', 'Necromancy', 'Cleric|Wizard', '', '', '', '', ''),
(10, 'Animate Objects', 'Objects come to life at your command. Choose up to ten nonmagical objects within range that are not being worn or carried. Medium targets count as two objects, Large targets count as four objects, Huge targets count as eight objects. You can’t animate any object larger than Huge. Each target animates and becomes a creature under your control until the spell ends or until reduced to 0 hit points.As a bonus action, you can mentally command any creature you made with this spell if the creature is within 500 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.An animated object is a construct with AC, hit points, attacks, Strength, and Dexterity determined by its size. Its Constitution is 10 and its Intelligence and Wisdom are 3, and its Charisma is 1. Its speed is 30 feet; if the object lacks legs or other appendages it can use for locomotion, it instead has a flying speed of 30 feet and can hover. If the object is securely attached to a surface or a larger object, such as a chain bolted to a wall, its speed is 0. It has blindsight with a radius of 30 feet and is blind beyond that distance. When the animated object drops to 0 hit points, it reverts to its original object form, and any remaining damage carries over to its original object form.If you command an object to attack, it can make a single melee attack against a creature within 5 feet of it. It makes a slam attack with an attack bonus and bludgeoning damage determined by its size. The DM might rule that a specific object inflicts slashing or piercing damage based on its form.', 'If you cast this spell using a spell slot of 6th level or higher, you can animate two additional objects for each slot level above 5th.', 'phb 213', '120 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Transmutation', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(11, 'Antilife Shell', 'A shimmering barrier extends out from you in a 10-foot radius and moves with you, remaining centered on you and hedging out creatures other than undead and constructs. The barrier lasts for the duration.The barrier prevents an affected creature from passing or reaching through. An affected creature can cast spells or make attacks with ranged or reach weapons through the barrier.If you move so that an affected creature is forced to pass through the barrier, the spell ends.', '', 'phb 213', 'Self', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '5th-level', 'Abjuration', 'Druid', '', '', '', '', ''),
(12, 'Antimagic Field', 'A 10-foot-radius invisible sphere of antimagic surrounds you. This area is divorced from the magical energy that suffuses the multiverse. Within the sphere, spells can’t be cast, summoned creatures disappear, and even magic items become mundane. Until the spell ends, the sphere moves with you, centered on you.Spells and other magical effects, except those created by an artifact or a deity, are suppressed in the sphere and can’t protrude into it. A slot expended to cast a suppressed spell is consumed. While an effect is suppressed, it doesn’t function, but the time it spends suppressed counts against its duration.Targeted Effects. Spells and other magical effects, such as magic missile and charm person, that target a creature or an object in the sphere have no effect on that target.Areas of Magic. The area of another spell or magical effect, such as fireball, can’t extend into the sphere. If the sphere overlaps an area of magic, the part of the area that is covered by the sphere is suppressed. For example, the flames created by a wall of fire are suppressed within the sphere, creating a gap in the wall if the overlap is large enough.Spells. Any active spell or other magical effect on a creature or an object in the sphere is suppressed while the creature or object is in it.Magic Items. The properties and powers of magic items are suppressed in the sphere. For example, a +1 longsword in the sphere functions as a nonmagical longsword.A magic weapon’s properties and powers are suppressed if it is used against a target in the sphere or wielded by an attacker in the sphere. If a magic weapon or a piece of magic ammunition fully leaves the sphere (for example, if you fire a magic arrow or throw a magic spear at a target outside the sphere), the magic of the item ceases to be suppressed as soon as it exits.Magical Travel. Teleportation and planar travel fail to work in the sphere, whether the sphere is the destination or the departure point for such magical travel. A portal to another location, world, or plane of existence, as well as an opening to an extradimensional space such as that created by the rope trick spell, temporarily closes while in the sphere.Creatures and Objects. A creature or object summoned or created by magic temporarily winks out of existence in the sphere. Such a creature instantly reappears once the space the creature occupied is no longer within the sphere.Dispel Magic. Spells and magical effects such as dispel magic have no effect on the sphere. Likewise, the spheres created by different antimagic field spells don’t nullify each other.', '', 'phb 213', 'Self', 'V|S|M', 'A pinch of powdered iron or iron filings.', 'no', 'Up to 1 hour', 'yes', '1 action', '8th-level', 'Abjuration', 'Cleric|Wizard', '', '', '', '', ''),
(13, 'Antipathy/Sympathy', 'This spell attracts or repels creatures of your choice. You target something within range, either a Huge or smaller object or creature or an area that is no larger than a 200-foot cube. Then specify a kind of intelligent creature, such as red dragons, goblins, or vampires. You invest the target with an aura that either attracts or repels the specified creatures for the duration. Choose antipathy or sympathy as the aura’s effect.<br /><strong>Antipathy.</strong> The enchantment causes creatures of the kind you designated to feel an intense urge to leave the area and avoid the target. When such a creature can see the target or comes within 60 feet of it, the creature must succeed on a wisdom saving throw or become frightened. The creature remains frightened while it can see the target or is within 60 feet of it. While frightened by the target, the creature must use its movement to move to the nearest safe spot from which it can’t see the target. If the creature moves more than 60 feet from the target and can’t see it, the creature is no longer frightened, but the creature becomes frightened again if it regains sight of the target or moves within 60 feet of it.<br /><strong>Sympathy.</strong> The enchantment causes the specified creatures to feel an intense urge to approach the target while within 60 feet of it or able to see it. When such a creature can see the target or comes within 60 feet of it, the creature must succeed on a wisdom saving throw or use its movement on each of its turns to enter the area or move within reach of the target. When the creature has done so, it can’t willingly move away from the target. If the target damages or otherwise harms an affected creature, the affected creature can make a wisdom saving throw to end the effect, as described below.<br /><strong>Ending the Effect.</strong> If an affected creature ends its turn while not within 60 feet of the target or able to see it, the creature makes a wisdom saving throw. On a successful save, the creature is no longer affected by the target and recognizes the feeling of repugnance or attraction as magical. In addition, a creature affected by the spell is allowed another wisdom saving throw every 24 hours while the spell persists.A creature that successfully saves against this effect is immune to it for 1 minute, after which time it can be affected again.', '', 'phb 214', '60 feet', 'V|S|M', 'Either a lump of alum soaked in vinegar for the antipathy effect or a drop of honey for the sympathy effect.', 'no', '10 days', 'no', '1 hour', '8th-level', 'Enchantment', 'Druid|Wizard', '', '', '', '', ''),
(14, 'Arcane Eye', 'You create an invisible, magical eye within range that hovers in the air for the duration.You mentally receive visual information from the eye, which has normal vision and darkvision out to 30 feet. The eye can look in every direction.As an action, you can move the eye up to 30 feet in any direction. There is no limit to how far away from you the eye can move, but it can’t enter another plane of existence. A solid barrier blocks the eye’s movement, but the eye can pass through an opening as small as 1 inch in diameter.', '', 'phb 214', '30 feet', 'V|S|M', 'A bit of bat fur.', 'no', 'Up to 1 hour', 'yes', '1 action', '4th-level', 'Divination', 'Cleric|Wizard', '', '', 'Knowledge', '', ''),
(15, 'Arcane Gate', '', '', 'phb 214', '500 ft.', 'V|S', '', 'no', '10 minutes', 'yes', '1 action', '6th-level', 'Conjuration', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(16, 'Arcane Hand', 'You create a Large hand of shimmering, translucent force in an unoccupied space that you can see within range. The hand lasts for the spell’s duration, and it moves at your command, mimicking the movements of your own hand.The hand is an object that has AC 20 and hit points equal to your hit point maximum. If it drops to 0 hit points, the spell ends. It has a Strength of 26 (+8) and a Dexterity of 10 (+0). The hand doesn’t fill its space.When you cast the spell and as a bonus action on your subsequent turns, you can move the hand up to 60 feet and then cause one of the following effects with it.<br /><strong>Clenched Fist.</strong> The hand strikes one creature or object within 5 feet of it. Make a melee spell attack for the hand using your game statistics. On a hit, the target takes 4d8 force damage.<br /><strong>Forceful Hand.</strong> The hand attempts to push a creature within 5 feet of it in a direction you choose. Make a check with the hand’s Strength contested by the Strength (Athletics) check of the target. If the target is Medium or smaller, you have advantage on the check. If you succeed, the hand pushes the target up to 5 feet plus a number of feet equal to five times your spellcasting ability modifier. The hand moves with the target to remain within 5 feet of it.<br /><strong>Grasping Hand.</strong> The hand attempts to grapple a Huge or smaller creature within 5 feet of it. You use the hand’s Strength score to resolve the grapple. If the target is Medium or smaller, you have advantage on the check. While the hand is grappling the target, you can use a bonus action to have the hand crush it. When you do so, the target takes bludgeoning damage equal to 2d6 + your spellcasting ability modifier.<br /><strong>Interposing Hand.</strong> The hand interposes itself between you and a creature you choose until you give the hand a different command. The hand moves to stay between you and the target, providing you with half cover against the target. The target can&lsquo;t move through the hand’s space if its Strength score is less than or equal to the hand’s Strength score. If its Strength score is higher than the hand’s Strength score, the target can move toward you through the hand’s space, but that space is difficult terrain for the target.', 'When you cast this spell using a spell slot of 6th level or higher, the damage from the clenched fist option increases by 2d8 and the damage from the grasping hand increases by 2d6 for each slot level above 5th.', 'phb 218', '120 feet', 'V|S|M', 'An eggshell and a snakeskin glove.', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(17, 'Arcane Lock', 'You touch a closed door, window, gate, chest, or other entryway, and it becomes locked for the duration. You and the creatures you designate when you cast this spell can open the object normally. You can also set a password that, when spoken within 5 feet of the object, suppresses this spell for 1 minute. Otherwise, it is impassable until it is broken or the spell is dispelled or suppressed. Casting knock on the object suppresses arcane lock for 10 minutes.While affected by this spell, the object is more difficult to break or force open; the DC to break it or pick any locks on it increases by 10.', '', 'phb 215', 'Touch', 'V|S|M', 'Gold dust worth at least 25gp, which the spell consumes.', 'no', 'Until dispelled', 'no', '1 action', '2nd-level', 'Abjuration', 'Wizard', '', '', '', '', ''),
(18, 'Arcane Sword', 'You create a sword-shaped plane of force that hovers within range. It lasts for the duration.When the sword appears, you make a melee spell attack against a target of your choice within 5 feet of the sword. On a hit, the target takes 3d10 force damage. Until the spell ends, you can use a bonus action on each of your turns to move the sword up to 20 feet to a spot you can see and repeat this attack against the same target or a different one.', '', 'phb 262', '60 feet', 'V|S|M', 'A miniature platinum sword with a grip and pommel of copper and zinc, worth 250 gp.', 'no', 'Up to 1 minute', 'yes', '1 action', '7th-level', 'Evocation', 'Bard|Wizard', '', '', '', '', ''),
(19, 'Arcanist&lsquo;s Magic Aura', 'You place an illusion on a creature or an object you touch so that divination spells reveal false information about it. The target can be a willing creature or an object that isn’t being carried or worn by another creature.When you cast the spell, choose one or both of the following effects. The effect lasts for the duration. If you cast this spell on the same creature or object every day for 30 days, placing the same effect on it each time, the illusion lasts until it is dispelled.<br /><strong>False Aura.</strong> You change the way the target appears to spells and magical effects, such as detect magic, that detect magical auras. You can make a nonmagical object appear magical, a magical object appear nonmagical, or change the object’s magical aura so that it appears to belong to a specific school of magic that you choose. When you use this effect on an object, you can make the false magic apparent to any creature that handles the item.<br /><strong>Mask.</strong> You change the way the target appears to spells and magical effects that detect creature types, such as a paladin’s Divine Sense or the trigger of a symbol spell. You choose a creature type and other spells and magical effects treat the target as if it were a creature of that type or of that alignment.', '', 'phb 263', 'Touch', 'V|S|M', 'A small square of silk.', 'no', '24 hours', 'no', '1 action', '2nd-level', 'Illusion', 'Wizard', '', '', '', '', ''),
(20, 'Armor of Agathys', '', 'Both the temporary hit points and the cold damage increase by 5 for each slot leveI above 1st.', 'phb 215', 'Self', 'V|S|M', 'cup of water', 'no', '1 hour', 'no', '1 action', '1st-level', 'Abjuration', 'Warlock', '', '', '', '', ''),
(21, 'Arms of Hadar', '', 'The damage increases by 1d6 for each slot leveI above 1st.', 'phb 215', 'Self', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Conjuration', 'Warlock', '', '', '', '', ''),
(22, 'Astral Projection', 'You and up to eight willing creatures within range project your astral bodies into the Astral Plane (the spell fails and the casting is wasted if you are already on that plane). The material body you leave behind is unconscious and in a state of suspended animation; it doesn’t need food or air and doesn’t age.Your astral body resembles your mortal form in almost every way, replicating your game statistics and possessions. The principal difference is the addition of a silvery cord that extends from between your shoulder blades and trails behind you, fading to invisibility after 1 foot. This cord is your tether to your material body. As long as the tether remains intact, you can find your way home. If the cord is cut—something that can happen only when an effect specifically states that it does—your soul and body are separated, killing you instantly.Your astral form can freely travel through the Astral Plane and can pass through portals there leading to any other plane. If you enter a new plane or return to the plane you were on when casting this spell, your body and possessions are transported along the silver cord, allowing you to re-enter your body as you enter the new plane. Your astral form is a separate incarnation. Any damage or other effects that apply to it have no effect on your physical body, nor do they persist when you return to it.The spell ends for you and your companions when you use your action to dismiss it. When the spell ends, the affected creature returns to its physical body, and it awakens.The spell might also end early for you or one of your companions. A successful dispel magic spell used against an astral or physical body ends the spell for that creature. If a creature’s original body or its astral form drops to 0 hit points, the spell ends for that creature. If the spell ends and the silver cord is intact, the cord pulls the creature’s astral form back to its body, ending its state of suspended animation.If you are returned to your body prematurely, your companions remain in their astral forms and must find their own way back to their bodies, usually by dropping to 0 hit points.', '', 'phb 215', '10 feet', 'V|S|M', 'For each creature you affect with this spell, you must provide one jacinth worth at least 1,000gp and one ornately carved bar of silver worth at least 100gp, all of which the spell consumes.', 'no', 'Special', 'no', '1 hour', '9th-level', 'Necromancy', 'Cleric|Warlock|Wizard', '', '', '', '', ''),
(23, 'Augury', 'By casting gem-inlaid sticks, rolling dragon bones, laying out ornate cards, or employing some other divining tool, you receive an omen from an otherworldly entity about the results of a specific course of action that you plan to take within the next 30 minutes. The DM chooses from the following possible omens:- Weal, for good results- Woe, for bad results- Weal and woe, for both good and bad results- Nothing, for results that aren’t especially good or badThe spell doesn’t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion.If you cast the spell two or more times before completing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.', '', 'phb 215', 'Self', 'V|S|M', 'Specially marked sticks, bones, or similar tokens worth at least 25gp.', 'yes', 'Instantaneous', 'no', '1 minute', '2nd-level', 'Divination', 'Cleric|Ritual Caster', '', '', 'Knowledge', '', ''),
(24, 'Aura of Life', '', '', 'phb 216', 'Self', 'V', '', 'no', '10 minutes', 'yes', '1 action', '4th-level', 'Abjuration', 'Paladin', '', '', '', '', ''),
(25, 'Aura of Purity', '', '', 'phb 216', 'Self', 'V', '', 'no', '10 minutes', 'yes', '1 action', '4th-level', 'Abjuration', 'Paladin', '', '', '', '', ''),
(26, 'Aura of Vitality', '', '', 'phb 216', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 action', '3rd-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(27, 'Awaken', 'After spending the casting time tracing magical pathways within a precious gemstone, you touch a Huge or smaller beast or plant. The target must have either no Intelligence score or an Intelligence of 3 or less. The target gains an Intelligence of 10. The target also gains the ability to speak one language you know. If the target is a plant, it gains the ability to move its limbs, roots, vines, creepers, and so forth, and it gains senses similar to a human’s. Your DM chooses statistics appropriate for the awakened plant, such as the statistics for the awakened shrub or the awakened tree.The awakened beast or plant is charmed by you for 30 days or until you or your companions do anything harmful to it. When the charmed condition ends, the awakened creature chooses whether to remain friendly to you, based on how you treated it while it was charmed.', '', 'phb 216', 'Touch', 'V|S|M', 'An agate worth at least 1,000 gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '8 hours', '5th-level', 'Transmutation', 'Bard|Druid', '', '', '', '', ''),
(28, 'Bane', 'Up to three creatures of your choice that you can see within range must make charisma saving throws. Whenever a target that fails this saving throw makes an attack roll or a saving throw before the spell ends, the target must roll a d4 and subtract the number rolled from the attack roll or saving throw.', 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.', 'phb 216', '30 feet', 'V|S|M', 'A drop of blood.', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Enchantment', 'Bard|Cleric|Paladin', '', '', '', 'Vengeance', ''),
(29, 'Banishing Smite', '', '', 'phb 216', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '5th-level', 'Abjuration', 'Paladin', '', '', '', '', ''),
(30, 'Banishment', 'You attempt to send one creature that you can see within range to another plane of existence. The target must succeed on a charisma saving throw or be banished.If the target is native to the plane of existence you’re on, you banish the target to a harmless demiplane. While there, the target is incapacitated. The target remains there until the spell ends, at which point the target reappears in the space it left or in the nearest unoccupied space if that space is occupied.If the target is native to a different plane of existence than the one you’re on, the target is banished with a faint popping noise, returning to its home plane. If the spell ends before 1 minute has passed, the target reappears in the space it left or in the nearest unoccupied space if that space is occupied. Otherwise, the target doesn’t return.', 'When you cast this spell using a spell slot of 5th level or higher, you can target one additional creature for each slot level above 4th.', 'phb 217', '60 feet', 'V|S|M', 'An item distasteful to the target.', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Abjuration', 'Cleric|Paladin|Sorcerer|Warlock|Wizard', '', '', '', 'Vengeance', ''),
(31, 'Barkskin', 'You touch a willing creature. Until the spell ends, the target&lsquo;s skin has a rough, bark-like appearance, and the target&lsquo;s AC can&lsquo;t be less than 16, regardless of what kind of armor it is wearing.', '', 'phb 217', 'Touch', 'V|S|M', 'A handful of oak bark.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Transmutation', 'Cleric|Druid|Ranger', '', 'Forest', 'Nature', '', ''),
(32, 'Beacon of Hope', 'This spell bestows hope and vitality. Choose any number of creatures within range. For the duration, each target has advantage on wisdom saving throws and death saving throws, and regains the maximum number of hit points possible from any healing.', '', 'phb 217', '30 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Abjuration', 'Cleric|Paladin', '', '', 'Life', 'Devotion', ''),
(33, 'Beast Sense', '', '', 'phb 217', 'Touch', 'S', '', 'yes', '1 hour', 'yes', '1 action', '2nd-level', 'Divination', 'Druid|Ranger|Ritual Caster', '', '', '', '', ''),
(34, 'Bestow Curse', 'You touch a creature, and that creature must succeed on a wisdom saving throw or become cursed for the duration of the spell. When you cast this spell, choose the nature of the curse from the following options:- Choose one ability score. While cursed, the target has disadvantage on ability checks and saving throws made with that ability score.- While cursed, the target has disadvantage on attack rolls against you.- While cursed, the target must make a wisdom saving throw at the start of each of its turns. If it fails, it wastes its action that turn doing nothing.- While the target is cursed, your attacks and spells deal an extra 1d8 necrotic damage to the target.A remove curse spell ends this effect. At the DM’s option, you may choose an alternative curse effect, but it should be no more powerful than those described above. The DM has final say on such a curse’s effect.', 'If you cast this spell using a spell slot of 4th level or higher, the duration is concentration, up to 10 minutes. If you use a spell slot of 5th level or higher, the duration is 8 hours. If you use a spell slot of 7th level or higher, the duration is 24 hours. If you use a 9th level spell slot, the spell lasts until it is dispelled. Using a spell slot of 5th level or higher grants a duration that doesn’t require concentration.', 'phb 218', 'Touch', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Necromancy', 'Bard|Cleric|Wizard', '', '', '', '', ''),
(35, 'Black Tentacles', 'Dark writhing tentacles occupy the ground in a square of 90 feet ridge you can see the range of the spell. For the duration of the spell, the tentacles make the difficult terrain.When a creature enters the affected area for the first time in a turn or where it begins its turn, it must make a dexterity saving throw or it suffers 3d6 bludgeoning damage and is hampered by tentacles until the end of the spell. A creature that starts its turn in the area and is already hampered by the tentacles suffers 3d6 bludgeoning damage.A creature hampered by the tentacles can use his action to a test Strength or Dexterity (at its option) opposite to the SD backup of your fate. If successful, it is free.', '', 'phb 238', '90 feet', 'V|S|M', 'A piece of tentacle from a giant octopus or a giant squid', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Conjuration', 'Warlock|Wizard', '', '', '', '', 'Great Old One'),
(36, 'Blade Barrier', 'You create a vertical wall of whirling, razor-sharp blades made of magical energy. The wall appears within range and lasts for the duration. You can make a straight wall up to 100 feet long, 20 feet high, and 5 feet thick, or a ringed wall up to 60 feet in diameter, 20 feet high, and 5 feet thick. The wall provides three-quarters cover to creatures behind it, and its space is difficult terrain.When a creature enters the wall’s area for the first time on a turn or starts its turn there, the creature must make a dexterity saving throw. On a failed save, the creature takes 6d10 slashing damage. On a successful save, the creature takes half as much damage.', '', 'phb 218', '90 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '6th-level', 'Evocation', 'Cleric', '', '', '', '', ''),
(37, 'Blade Ward', '', '', 'phb 218', 'Self', 'V|S', '', 'no', '1 round', 'no', '1 action', 'cantrip', 'Abjuration', 'Bard', '', '', '', '', ''),
(38, 'Bless', 'You bless up to three creatures of your choice within range. Whenever a target makes an attack roll or a saving throw before the spell ends, the target can roll a d4 and add the number rolled to the attack roll or saving throw.', 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.', 'phb 219', '30 feet', 'V|S|M', 'A sprinkling of holy water.', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Enchantment', 'Cleric|Paladin', '', '', 'Life', '', ''),
(39, 'Blight', 'Necromantic energy washes over a creature of your choice that you can see within range, draining moisture and vitality from it. The target must make a constitution saving throw. The target takes 8d8 necrotic damage on a failed save, or half as much damage on a successful one. The spell has no effect on undead or constructs.If you target a plant creature or a magical plant, it makes the saving throw with disadvantage, and the spell deals maximum damage to it.If you target a nonmagical plant that isn’t a creature, such as a tree or shrub, it doesn’t make a saving throw; it simply withers and dies.', 'When you cast this spell using a spell slot of 5th level of higher, the damage increases by 1d8 for each slot level above 4th.', 'phb 219', '30 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '4th-level', 'Necromancy', 'Druid|Sorcerer|Warlock|Wizard', '', 'Desert', '', '', ''),
(40, 'Blinding Smite', '', '', 'phb 219', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '3rd-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(41, 'Blindness/Deafness', 'You can blind or deafen a foe. Choose one creature that you can see within range to make a constitution saving throw. If it fails, the target is either blinded or deafened (your choice) for the duration. At the end of each of its turns, the target can make a constitution saving throw. On a success, the spell ends.', 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.', 'phb 219', '30 feet', 'V', '', 'no', '1 minute', 'no', '1 action', '2nd-level', 'Necromancy', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', 'Fiend'),
(42, 'Blink', 'Roll a d20 at the end of each of your turns for the duration of the spell. On a roll of 11 or higher, you vanish from your current plane of existence and appear in the Ethereal Plane (the spell fails and the casting is wasted if you were already on that plane). At the start of your next turn, and when the spell ends if you are on the Ethereal Plane, you return to an unoccupied space of your choice that you can see within 10 feet of the space you vanished from. If no unoccupied space is available within that range, you appear in the nearest unoccupied space (chosen at random if more than one space is equally near). You can dismiss this spell as an action.While on the Ethereal Plane, you can see and hear the plane you originated from, which is cast in shades of gray, and you can’t see anything there more than 60 feet away. You can only affect and be affected by other creatures on the Ethereal Plane. Creatures that aren’t there can’t perceive you or interact with you, unless they have the ability to do so.', '', 'phb 219', 'Self', 'V|S', '', 'no', '1 minute', 'no', '1 action', '3rd-level', 'Transmutation', 'Cleric|Sorcerer|Warlock|Wizard', '', '', 'Trickery', '', 'Archfey'),
(43, 'Blur', 'Your body becomes blurred, shifting and wavering to all who can see you. For the duration, any creature has disadvantage on attack rolls against you. An attacker is immune to this effect if it doesn’t rely on sight, as with blindsight, or can see through illusions, as with truesight.', '', 'phb 219', 'Self', 'V', '', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Illusion', 'Druid|Sorcerer|Wizard', '', 'Desert', '', '', ''),
(44, 'Branding Smite', '', 'The extra damage increases by 1d6 for each slot level above 2nd', 'phb 219', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '2nd-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(45, 'Burning Hands', 'As you hold your hands with thumbs touching and fingers spread, a thin sheet of flames shoots forth from your outstretched fingertips. Each creature in a 15-foot cone must make a dexterity saving throw. A creature takes 3d6 fire damage on a failed save, or half as much damage on a successful one.The fire ignites any flammable objects in the area that aren’t being worn or carried.', 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.', 'phb 220', 'Self', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Evocation', 'Cleric|Sorcerer|Warlock|Wizard', '', '', 'Light', '', 'Fiend'),
(46, 'Call Lightning', 'A storm cloud appears in the shape of a cylinder that is 10 feet tall with a 60-foot radius, centered on a point you can see 100 feet directly above you. The spell fails if you can’t see a point in the air where the storm cloud could appear (for example, if you are in a room that can’t accommodate the cloud).When you cast the spell, choose a point you can see within range. A bolt of lightning flashes down from the cloud to that point. Each creature within 5 feet of that point must make a dexterity saving throw. A creature takes 3d10 lightning damage on a failed save, or half as much damage on a successful one. On each of your turns until the spell ends, you can use your action to call down lightning in this way again, targeting the same point or a different one.If you are outdoors in stormy conditions when you cast this spell, the spell gives you control over the existing storm instead of creating a new one. Under such conditions, the spell’s damage increases by 1d10.', 'When you cast this spell using a spell slot of 4th or higher level, the damage increases by 1d10 for each slot level above 3rd.', 'phb 220', '120 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '3rd-level', 'Conjuration', 'Cleric|Druid', '', 'Forest', 'Tempest', '', ''),
(47, 'Calm Emotions', 'You attempt to suppress strong emotions in a group of people. Each humanoid in a 20-foot-radius sphere centered on a point you choose within range must make a charisma saving throw; a creature can choose to fail this saving throw if it wishes. If a creature fails its saving throw, choose one of the following two effects. You can suppress any effect causing a target to be charmed or frightened. When this spell ends, any suppressed effect resumes, provided that its duration has not expired in the meantime.Alternatively, you can make a target indifferent about creatures of your choice that it is hostile toward. This indifference ends if the target is attacked or harmed by a spell or if it witnesses any of its friends being harmed. When the spell ends, the creature becomes hostile again, unless the DM rules otherwise.', '', 'phb 221', '60 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Enchantment', 'Bard|Cleric|Warlock', '', '', '', '', 'Archfey'),
(48, 'Chain Lightning', 'You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must be within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts.A target must make a dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much damage on a successful one.', 'When you cast this spell using a spell slot of 7th level or higher, one additional bolt leaps from the first target to another target for each slot level above 6th.', 'phb 221', '150 feet', 'V|S|M', 'A bit of fur; a piece of amber, glass, or a crystal rod; and three silver pins.', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(49, 'Charm Person', 'You attempt to charm a humanoid you can see within range. It must make a wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it. The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it was charmed by you.', 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.', 'phb 221', '30 feet', 'V|S', '', 'no', '1 hour', 'no', '1 action', '1st-level', 'Enchantment', 'Bard|Cleric|Druid|Sorcerer|Warlock|Wizard', '', '', 'Trickery', '', ''),
(50, 'Chill Touch', 'You create a ghostly, skeletal hand in the space of a creature within range. Make a ranged spell attack against the creature to assail it with the chill of the grave. On a hit, the target takes 1d8 necrotic damage, and it can’t regain hit points until the start of your next turn. Until then, the hand clings to the target.If you hit an undead target, it also has disadvantage on attack rolls against you until the end of your next turn.This spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', '', 'phb 221', '120 feet', 'V|S', '', 'no', '1 round', 'no', '1 action', 'Cantrip', 'Necromancy', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(51, 'Chromatic Orb', '', 'The damage increases by 1d88 for each slot level above 1st.', 'phb 221', '90 ft.', 'V|S|M', 'diamond worth 50 gp', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(52, 'Circle of Death', 'A sphere of negative energy ripples out in a 60-footradius sphere from a point within range. Each creature in that area must make a constitution saving throw. A target takes 8d6 necrotic damage on a failed save, or half as much damage on a successful one.', 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 2d6 for each slot level above 6th.', 'phb 221', '150 feet', 'V|S|M', 'The powder of a crushed black pearl worth at least 500 gp.', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Necromancy', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(53, 'Circle of Power', '', '', 'phb 221', 'Self', 'V', '', 'no', '10 minutes', 'yes', '1 action', '5th-level', 'Abjuration', 'Paladin', '', '', '', '', ''),
(54, 'Clairvoyance', 'You create an invisible sensor within range in a location familiar to you (a place you have visited or seen before) or in an obvious location that is unfamiliar to you (such as behind a door, around a corner, or in a grove of trees). The sensor remains in place for the duration, and it can’t be attacked or otherwise interacted with.When you cast the spell, you choose seeing or hearing. You can use the chosen sense through the sensor as if you were in its space. As your action, you can switch between seeing and hearing.A creature that can see the sensor (such as a creature benefiting from see invisibility or truesight) sees a luminous, intangible orb about the size of your fist.', '', 'phb 222', '1 mile', 'V|S|M', 'A focus worth at least 100gp, either a jeweled horn for hearing or a glass eye for seeing.', 'no', 'Up to 10 minutes', 'yes', '10 minutes', '3rd-level', 'Divination', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', 'Great Old One'),
(55, 'Clone', 'This spell grows an inert duplicate of a living creature as a safeguard against death. This clone forms inside a sealed vessel and grows to full size and maturity after 120 days; you can also choose to have the clone be a younger version of the same creature. It remains inert and endures indefinitely, as long as its vessel remains undisturbed.At any time after the clone matures, if the original creature dies, its soul transfers to the clone, provided that the soul is free and willing to return. The clone is physically identical to the original and has the same personality, memories, and abilities, but none of the original’s equipment. The original creature’s physical remains, if they still exist, become inert and can’t thereafter be restored to life, since the creature’s soul is elsewhere.', '', 'phb 222', 'Touch', 'V|S|M', 'A diamond worth at least 1,000 gp and at least 1 cubic inch of flesh of the creature that is to be cloned, which the spell consumes, and a vessel worth at least 2,000 gp that has a sealable lid and is large enough to hold a Medium creature, such as a huge urn, coffin, mud-filled cyst in the ground, or crystal container filled with salt water.', 'no', 'Instantaneous', 'no', '1 hour', '8th-level', 'Necromancy', 'Wizard', '', '', '', '', ''),
(56, 'Cloud of Daggers', '', 'The damage increases by 2d4 for each slot level above 2nd.', 'phb 222', '60 ft.', 'V|S|M', 'sliver of glass', 'no', '1 minute', 'yes', '1 action', '2nd-level', 'Conjuration', 'Bard', '', '', '', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(57, 'Cloudkill', 'You create a 20-foot-radius sphere of poisonous, yellow-green fog centered on a point you choose within range. The fog spreads around corners. It lasts for the duration or until strong wind disperses the fog, ending the spell. Its area is heavily obscured.When a creature enters the spell&lsquo;s area for the first time on a turn or starts its turn there, that creature must make a constitution saving throw. The creature takes 5d8 poison damage on a failed save, or half as much damage on a successful one. Creatures are affected even if they hold their breath or don&lsquo;t need to breathe.The fog moves 10 feet away from you at the start of each of your turns, rolling along the surface of the ground. The vapors, being heavier than air, sink to the lowest level of the land, even pouring down openings.', 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.', 'phb 222', '120 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '5th-level', 'Conjuration', 'Druid|Sorcerer|Wizard', '', 'Underdark', '', '', ''),
(58, 'Color Spray', 'A dazzling array of flashing, colored light springs from your hand. Roll 6d10; the total is how many hit points of creatures this spell can effect. Creatures in a 15-foot cone originating from you are affected in ascending order of their current hit points (ignoring unconscious creatures and creatures that can’t see).Starting with the creature that has the lowest current hit points, each creature affected by this spell is blinded until the spell ends. Subtract each creature’s hit points from the total before moving on to the creature with the next lowest hit points. A creature’s hit points must be equal to or less than the remaining total for that creature to be affected.', 'When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d10 for each slot level above 1st.', 'phb 222', 'Self', 'V|S|M', 'A pinch of powder or sand that is colored red, yellow, and blue.', 'no', '1 round', 'no', '1 action', '1st-level', 'Illusion', 'Sorcerer|Wizard', '', '', '', '', ''),
(59, 'Command', 'You speak a one-word command to a creature you can see within range. The target must succeed on a wisdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn’t understand your language, or if your command is directly harmful to it.Some typical commands and their effects follow. You might issue a command other than one described here. If you do so, the DM determines how the target behaves. If the target can’t follow your command, the spell ends.<br /><strong>Approach.</strong> The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you.<br /><strong>Drop</strong> The target drops whatever it is holding and then ends its turn.<br /><strong>Flee.</strong> The target spends its turn moving away from you by the fastest available means.<br /><strong>Grovel.</strong> The target falls prone and then ends its turn.<br /><strong>Halt.</strong> The target doesn’t move and takes no actions. A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air.', 'When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.', 'phb 223', '60 feet', 'V', '', 'no', '1 round', 'no', '1 action', '1st-level', 'Enchantment', 'Cleric|Paladin|Warlock', '', '', 'Knowledge', '', 'Fiend'),
(60, 'Commune', 'You contact your deity or a divine proxy and ask up to three questions that can be answered with a yes or no. You must ask your questions before the spell ends. You receive a correct answer for each question.Divine beings aren’t necessarily omniscient, so you might receive “unclear” as an answer if a question pertains to information that lies beyond the deity’s knowledge. In a case where a one-word answer could be misleading or contrary to the deity’s interests, the DM might offer a short phrase as an answer instead.If you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get no answer. The DM makes this roll in secret.', '', 'phb 223', 'Self', 'V|S|M', 'Incense and a vial of holy or unholy water.', 'yes', '1 minute', 'no', '1 minute', '5th-level', 'Divination', 'Cleric|Paladin|Ritual Caster', '', '', '', 'Devotion', ''),
(61, 'Commune with Nature', 'You briefly become one with nature and gain knowledge of the surrounding territory. In the outdoors, the spell gives you knowledge of the land within 3 miles of you. In caves and other natural underground settings, the radius is limited to 300 feet. The spell doesn’t function where nature has been replaced by construction, such as in dungeons and towns. You instantly gain knowledge of up to three facts of your choice about any of the following subjects as they relate to the area:- terrain and bodies of water- prevalent plants, minerals, animals, or peoples- powerful celestials, fey, fiends, elementals, or undead- influence from other planes of existence- buildingsFor example, you could determine the location of powerful undead in the area, the location of major sources of safe drinking water, and the location of any nearby towns.', '', 'phb 224', 'Self', 'V|S', '', 'yes', 'Instantaneous', 'no', '1 minute', '5th-level', 'Divination', 'Druid|Paladin|Ranger|Ritual Caster', '', 'Arctic|Forest', '', 'Ancients', ''),
(62, 'Compelled Duel', '', '', 'phb 224', '30 ft.', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Enchantment', 'Paladin', '', '', '', '', ''),
(63, 'Comprehend Languages', 'For the duration, you understand the literal meaning of any spoken language that you hear. You also understand any written language that you see, but you must be touching the surface on which the words are written. It takes about 1 minute to read one page of text.This spell doesn’t decode secret messages in a text or a glyph, such as an arcane sigil, that isn’t part of a written language.', '', 'phb 224', 'Self', 'V|S|M', 'A pinch of soot and salt.', 'yes', '1 hour', 'no', '1 action', '1st-level', 'Divination', 'Bard|Ritual Caster|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(64, 'Compulsion', '', '', 'phb 224', '30 ft.', 'V|S', '', 'no', '1 minute', 'yes', '1 action', '4th-level', 'Enchantment', 'Bard', '', '', '', '', ''),
(65, 'Cone of Cold', 'A blast of cold air erupts from your hands. Each creature in a 60-foot cone must make a constitution saving throw. A creature takes 8d8 cold damage on a failed save, or half as much damage on a successful one.A creature killed by this spell becomes a frozen statue until it thaws.', 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.', 'phb 224', 'Self', 'V|S|M', 'A small crystal or glass cone.', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Evocation', 'Druid|Sorcerer|Wizard', '', 'Arctic', '', '', ''),
(66, 'Confusion', 'This spell assails and distorts the minds of creatures, generating illusions and causing uncontrolled actions. Each creature in a sphere of 10-foot-radius centered on a point chosen in the range of the spell must make a wisdom saving throw otherwise it will be affected by the spell.An affected target can react and it must start at the beginning of 1d10 each of his game rounds to determine its behavior for that round.At the end of each turn, an affected creature can make a saving throw of Wisdom. If successful, the effect of the spell ends for this target.', 'When you cast this spell using a level spell slot 5 or more, the radius of the sphere increases by 5 feet for each level of higher spell slot to 4.', 'phb 224', '90 feet', 'V|S|M', 'Three walnut shells.', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Enchantment', 'Bard|Cleric|Druid|Sorcerer|Wizard', '', '', 'Knowledge', '', ''),
(67, 'Conjure Animals', 'You summon fey spirits that take the form of beasts and appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears:- One beast of challenge rating 2 or lower- Two beasts of challenge rating 1 or lower- Four beasts of challenge rating 1/2 or lower- Eight beasts of challenge rating 1/4 or lower- Each beast is also considered fey, and it disappears when it drops to 0 hit points or when the spell ends.The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don’t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions.The DM has the creatures’ statistics.', 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 5th-level slot, three times as many with a 7th-level.', 'phb 225', '60 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '3rd-level', 'Conjuration', 'Druid|Ranger', '', '', '', '', ''),
(68, 'Conjure Barrage', '', '', 'phb 225', 'Self', 'V|S|M', 'ammo or thrown weapon', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Conjuration', 'Ranger', '', '', '', '', ''),
(69, 'Conjure Celestial', 'You summon a celestial of challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends.The celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don’t violate its alignment. If you don’t issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions.The DM has the celestial’s statistics.', 'When you cast this spell using a 9th-level spell slot, you summon a celestial of challenge rating 5 or lower.', 'phb 225', '90 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 minute', '7th-level', 'Conjuration', 'Cleric', '', '', '', '', ''),
(70, 'Conjure Elemental', 'You call forth an elemental servant. Choose an area of air, earth, fire, or water that fills a 10-foot cube within range. An elemental of challenge rating 5 or lower appropriate to the area you chose appears in an unoccupied space within 10 feet of it. For example, a fire elemental emerges from a bonfire, and an earth elemental rises up from the ground. The elemental disappears when it drops to 0 hit points or when the spell ends.The elemental is friendly to you and your companions for the duration. Roll initiative for the elemental, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you). If you don’t issue any commands to the elemental, it defends itself from hostile creatures but otherwise takes no actions.If your concentration is broken, the elemental doesn’t disappear. Instead, you lose control of the elemental, it becomes hostile toward you and your companions, and it might attack. An uncontrolled elemental can’t be dismissed by you, and it disappears 1 hour after you summoned it.The DM has the elemental’s statistics.', 'When you cast this spell using a spell slot of 6th level or higher, the challenge rating increases by 1 for each slot level above 5th.', 'phb 225', '90 feet', 'V|S|M', 'Burning incense for air, soft clay for earth, sulfur and phosphorus for fire, or water and sand for water.', 'no', 'Up to 1 hour', 'yes', '1 minute', '5th-level', 'Conjuration', 'Druid|Wizard', '', 'Coast', '', '', ''),
(71, 'Conjure Fey', 'You summon a fey creature of challenge rating 6 or lower, or a fey spirit that takes the form of a beast of challenge rating 6 or lower. It appears in an unoccupied space that you can see within range. The fey creature disappears when it drops to 0 hit points or when the spell ends.The fey creature is friendly to you and your companions for the duration. Roll initiative for the creature, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don&lsquo;t violate its alignment. If you don’t issue any commands to the fey creature, it defends itself from hostile creatures but otherwise takes no actions.If your concentration is broken, the fey creature doesn’t disappear. Instead, you lose control of the fey creature, it becomes hostile toward you and your companions, and it might attack. An uncontrolled fey creature can&lsquo;t be dismissed by you, and it disappears 1 hour after you summoned it.The DM has the fey creature’s statistics.', 'When you cast this spell using a spell slot of 7th level or higher, the challenge rating increases by 1 for each slot level above 6th.', 'phb 226', '90 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 minute', '6th-level', 'Conjuration', 'Druid|Warlock', '', '', '', '', ''),
(72, 'Conjure Minor Elementals', 'You summon elementals that appear in unoccupied spaces that you can see within range. You choose one the following options for what appears:- One elemental of challenge rating 2 or lower- Two elementals of challenge rating 1 or lower- Four elementals of challenge rating 1/2 or lower- Eight elementals of challenge rating 1/4 or lower.An elemental summoned by this spell disappears when it drops to 0 hit points or when the spell ends.The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don’t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions.The DM has the creatures&lsquo; statistics.', 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.', 'phb 226', '90 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 minute', '4th-level', 'Conjuration', 'Druid|Wizard', '', '', '', '', ''),
(73, 'Conjure Volley', '', '', 'phb 226', '150 ft.', 'V|S|M', 'ammo or thrown weapon', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Conjuration', 'Ranger', '', '', '', '', ''),
(74, 'Conjure Woodland Beings', 'You summon fey creatures that appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears:- One fey creature of challenge rating 2 or lower- Two fey creatures of challenge rating 1 or lower- Four fey creatures of challenge rating 1/2 or lower- Eight fey creatures of challenge rating 1/4 or lowerA summoned creature disappears when it drops to 0 hit points or when the spell ends.The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which have their own turns. They obey any verbal commands that you issue to them (no action required by you). If you don&lsquo;t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions.The DM has the creatures’ statistics.', 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.', 'phb 226', '60 feet', 'V|S|M', 'One holly berry per creature summoned.', 'no', 'Up to 1 hour', 'yes', '1 action', '4th-level', 'Conjuration', 'Druid|Ranger', '', '', '', '', ''),
(75, 'Contact Other Plane', 'You mentally contact a demigod, the spirit of a long-dead sage, or some other mysterious entity from another plane. Contacting this extraplanar intelligence can strain or even break your mind. When you cast this spell, make a DC 15 intelligence saving throw. On a failure, you take 6d6 psychic damage and are insane until you finish a long rest. While insane, you can’t take actions, can’t understand what other creatures say, can’t read, and speak only in gibberish. A greater restoration spell cast on you ends this effect.On a successful save, you can ask the entity up to five questions. You must ask your questions before the spell ends. The DM answers each question with one word, such as “yes,” “no,” “maybe,” “never,” “irrelevant,” or “unclear” (if the entity doesn’t know the answer to the question). If a one-word answer would be misleading, the DM might instead offer a short phrase as an answer.', '', 'phb 226', 'Self', 'V', '', 'yes', '1 minute', 'no', '1 minute', '5th-level', 'Divination', 'Ritual Caster|Warlock|Wizard', '', '', '', '', ''),
(76, 'Contagion', 'Your touch inflicts disease. Make a melee spell attack against a creature within your reach. On a hit, you afflict the creature with a disease of your choice from any of the ones described below.At the end of each of the target’s turns, it must make a constitution saving throw. After failing three of these saving throws, the disease’s effects last for the duration, and the creature stops making these saves. After succeeding on three of these saving throws, the creature recovers from the disease, and the spell ends.Since this spell induces a natural disease in its target, any effect that removes a disease or otherwise ameliorates a disease’s effects apply to it.<br /><strong>Blinding Sickness.</strong> Pain grips the creature’s mind, and its eyes turn milky white. The creature has disadvantage on wisdom checks and wisdom saving throws and is blinded.<br /><strong>Filth Fever.</strong> A raging fever sweeps through the creature’s body. The creature has disadvantage on strength checks, strength saving throws, and attack rolls that use Strength.<br /><strong>Flesh Rot.</strong> The creature’s flesh decays. The creature has disadvantage on Charisma checks and vulnerability to all damage.<br /><strong>Mindfire.</strong> The creature’s mind becomes feverish. The creature has disadvantage on intelligence checks and intelligence saving throws, and the creature behaves as if under the effects of the confusion spell during combat.<br /><strong>Seizure.</strong> The creature is overcome with shaking. The creature has disadvantage on dexterity checks, dexterity saving throws, and attack rolls that use Dexterity.<br /><strong>Slimy Doom.</strong> The creature begins to bleed uncontrollably. The creature has disadvantage on constitution checks and constitution saving throws. In addition, whenever the creature takes damage, it is stunned until the end of its next turn.', '', 'phb 227', 'Touch', 'V|S', '', 'no', '7 days', 'no', '1 action', '5th-level', 'Necromancy', 'Cleric|Druid', '', '', '', '', ''),
(77, 'Contingency', 'Choose a spell of 5th level or lower that you can cast, that has a casting time of 1 action, and that can target you. You cast that spell—called the contingent spell—as part of casting contingency, expending spell slots for both, but the contingent spell doesn&lsquo;t come into effect. Instead, it takes effect when a certain circumstance occurs. You describe that circumstance when you cast the two spells. For example, a contingency cast with water breathing might stipulate that water breathing comes into effect when you are engulfed in water or a similar liquid. The contingent spell takes effect immediately after the circumstance is met for the first time, whether or not you want it to. and then contingency ends.The contingent spell takes effect only on you, even if it can normally target others. You can use only one contingency spell at a time. If you cast this spell again, the effect of another contingency spell on you ends. Also, contingency ends on you if its material component is ever not on your person.', '', 'phb 227', 'Self', 'V|S|M', 'A statuette of yourself carved from ivory and decorated with gems worth at least 1,500 gp.', 'no', '10 days', 'no', '10 minutes', '6th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(78, 'Continual Flame', 'A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn&lsquo;t use oxygen. A continual flame can be covered or hidden but not smothered or quenched.', '', 'phb 227', 'Touch', 'V|S|M', 'Ruby dust worth 50 gp, which the spell consumes.', 'no', 'Until dispelled', 'no', '1 action', '2nd-level', 'Evocation', 'Cleric|Wizard', '', '', '', '', ''),
(79, 'Control Water', 'Until the spell ends, you control any freestanding water inside an area you choose that is a cube up to 100 feet on a side. You can choose from any of the following effects when you cast this spell. As an action on your turn, you can repeat the same effect or choose a different one.<br /><strong>Flood.</strong> You cause the water level of all standing water in the area to rise by as much as 20 feet. If the area includes a shore, the flooding water spills over onto dry land.instead create a 20-foot tall wave that travels from one side of the area to the other and then crashes down. Any Huge or smaller vehicles in the wave’s path are carried with it to the other side. Any Huge or smaller vehicles struck by the wave have a 25 percent chance of capsizing.The water level remains elevated until the spell ends or you choose a different effect. If this effect produced a wave, the wave repeats on the start of your next turn while the flood effect lasts.<br /><strong>Part Water.</strong> You cause water in the area to move apart and create a trench. The trench extends across the spell’s area, and the separated water forms a wall to either side. The trench remains until the spell ends or you choose a different effect. The water then slowly fills in the trench over the course of the next round until the normal water level is restored.<br /><strong>Redirect Flow.</strong> You cause flowing water in the area to move in a direction you choose, even if the water has to flow over obstacles, up walls, or in other unlikely directions. The water in the area moves as you direct it, but once it moves beyond the spell’s area, it resumes its flow based on the terrain conditions. The water continues to move in the direction you chose until the spell ends or you choose a different effect.<br /><strong>Whirlpool.</strong> This effect requires a body of water at least 50 feet square and 25 feet deep. You cause a whirlpool to form in the center of the area. The whirlpool forms a vortex that is 5 feet wide at the base, up to 50 feet wide at the top, and 25 feet tall. Any creature or object in the water and within 25 feet of the vortex is pulled 10 feet toward it. A creature can swim away from the vortex by making a Strength (Athletics) check against your spell save DC.When a creature enters the vortex for the first time on a turn or starts its turn there, it must make a strength saving throw. On a failed save, the creature takes 2d8 bludgeoning damage and is caught in the vortex until the spell ends. On a successful save, the creature takes half damage, and isn’t caught in the vortex. A creature caught in the vortex can use its action to try to swim away from the vortex as described above, but has disadvantage on the Strength (Athletics) check to do so.The first time each turn that an object enters the vortex, the object takes 2d8 bludgeoning damage; this damage occurs each round it remains in the vortex.', '', 'phb 227', '300 feet', 'V|S|M', 'A drop of water and a pinch of dust.', 'no', 'Up to 10 minutes', 'yes', '1 action', '4th-level', 'Transmutation', 'Cleric|Druid|Wizard', '', '', '', '', ''),
(80, 'Control Weather', 'You take control of the weather within 5 miles of you for the duration. You must be outdoors to cast this spell. Moving to a place where you don’t have a clear path to the sky ends the spell early.When you cast the spell, you change the current weather conditions, which are determined by the DM based on the climate and season. You can change precipitation, temperature, and wind. It takes 1d4 x 10 minutes for the new conditions to take effect. Once they do so, you can change the conditions again. When the spell ends, the weather gradually returns to normal.When you change the weather conditions, find a current condition on the following tables and change its stage by one, up or down. When changing the wind, you can change its direction.', '', 'phb 228', 'Self', 'V|S|M', 'Burning incense and bits of earth and wood mixed in water.', 'no', 'Up to 8 hours', 'yes', '10 minutes', '8th-level', 'Transmutation', 'Cleric|Druid|Wizard', '', 'Coast', 'Tempest', '', ''),
(81, 'Cordon of Arrows', '', 'The amount of ammunition increases by two for each slot level above 2nd.', 'phb 228', '5 ft.', 'V|S|M', '4 pieces of ammo', 'no', '8 hours', 'no', '1 action', '2nd-level', 'Transmutation', 'Ranger', '', '', '', '', ''),
(82, 'Counterspell', '', 'If the slot level is less than or equal to the spell slot used it is interrupted.', 'phb 228', '60 ft.', 'S', '', 'no', 'Instantaneous', 'no', '1 reaction (spell cast)', '3rd-level', 'Abjuration', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(83, 'Create Food and Water', 'You create 45 pounds of food and 30 gallons of water on the ground or in containers within range, enough to sustain up to fifteen humanoids or five steeds for 24 hours. The food is bland but nourishing, and spoils if uneaten after 24 hours. The water is clean and doesn’t go bad.', '', 'phb 229', '30 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Conjuration', 'Cleric|Druid|Paladin', '', 'Desert', '', '', ''),
(84, 'Create or Destroy Water', 'You either create or destroy water.<br /><strong>Create Water.</strong> You create up to 10 gallons of clean water within range in an open container. Alternatively, the water falls as rain in a 30-foot cube within range.<br /><strong>Destroy Water.</strong> You destroy up to 10 gallons of water in an open container within range. Alternatively, you destroy fog in a 30-foot cube within range.', 'When you cast this spell using a spell slot of 2nd level or higher, you create or destroy 10 additional gallons of water, or the size of the cube increases by 5 feet, for each slot level above 1st.', 'phb 229', '30 feet', 'V|S|M', 'A drop of water if creating water, or a few grains of sand if destroying it.', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Transmutation', 'Cleric|Druid', '', '', '', '', ''),
(85, 'Create Undead', 'You can cast this spell only at night. Choose up to three corpses of Medium or Small humanoids within range. Each corpse becomes a ghoul under your control. (The DM has game statistics for these creatures.)As a bonus action on each of your turns, you can mentally command any creature you animated with this spell if the creature is within 120 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.The creature is under your control for 24 hours, after which it stops obeying any command you have given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature before the current 24-hour period ends. This use of the spell reasserts your control over up to three creatures you have animated with this spell, rather than animating new ones.', 'When you cast this spell using a 7th-level spell slot, you can animate or reassert control over four ghouls. When you cast this spell using an 8th-level spell slot, you can animate or reassert control over five ghouls or two ghasts or wights. When you cast this spell using a 9th-level spell slot, you can animate or reassert control over six ghouls, three ghasts or wights, or two mummies.', 'phb 229', '10 feet', 'V|S|M', 'One clay pot filled with grave dirt, one clay pot filled with brackish water, and one 150 gp black onyx stone for each corpse.', 'no', 'Instantaneous', 'no', '1 minute', '6th-level', 'Necromancy', 'Cleric|Warlock|Wizard', '', '', '', '', ''),
(86, 'Creation', 'You pull wisps of shadow material from the Shadowfell to create a nonliving object of vegetable matter within &lsquo;range&lsquo;: soft goods, rope, wood, or something similar. You can also use this spell to create mineral objects such as stone, crystal, or metal. The object created must be no larger than a 5-foot cube, and the object must be of a form and material that you have seen before.The duration depends on the object’s material. If the object is composed of multiple materials, use the shortest duration.<br /><strong>Vegetable matter</strong> 1 day<br /><strong>Stone or crystal</strong> 12 hours<br /><strong>Precious metals</strong> 1 hour<br /><strong>Gems</strong> 10 minutes<br /><strong>Adamantine or mithral</strong> 1 minuteUsing any material created by this spell as another spell’s material component causes that spell to fail.', 'When you cast this spell using a spell slot of 6th level or higher, the cube increases by 5 feet for each slot level above 5th.', 'phb 229', '30 feet', 'V|S|M', 'A tiny piece of matter of the same type of the item you plan to create.', 'no', 'Special', 'no', '1 minute', '5th-level', 'Illusion', 'Sorcerer|Wizard', '', '', '', '', ''),
(87, 'Crown of Madness', '', '', 'phb 229', '120 ft.', 'V|S', '', 'no', '1 minute', 'yes', '1 action', '2nd-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', 'Oathbreaker', ''),
(88, 'Crusader\'s Mantle', '', '', 'phb 230', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 action', '3rd-level', 'Evocation', 'Paladin', '', '', 'War', '', ''),
(89, 'Cure Wounds', 'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.', 'When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.', 'phb 230', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Evocation', 'Bard|Cleric|Druid|Paladin|Ranger', '', '', 'Life', '', ''),
(90, 'Dancing Lights', 'You create up to four torch-sized lights within range, making them appear as torches, lanterns, or glowing orbs that hover in the air for the duration. You can also combine the four lights into one glowing vaguely humanoid form of Medium size. Whichever form you choose, each light sheds dim light in a 10-foot radius.As a bonus action on your turn, you can move the lights up to 60 feet to a new spot within range. A light must be within 20 feet of another light created by this spell, and a light winks out if it exceeds the spell’s range.', '', 'phb 230', '120 feet', 'V|S|M', 'A bit of phosphorus or wychwood, or a glowworm.', 'no', 'Up to 1 minute', 'yes', '1 action', 'Cantrip', 'Evocation', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(91, 'Darkness', 'Magical darkness spreads from a point you choose within range to fill a 15-foot-radius sphere for the duration. The darkness spreads around corners. A creature with darkvision can’t see through this darkness, and nonmagical light can’t illuminate it.If the point you choose is on an object you are holding or one that isn’t being worn or carried, the darkness emanates from the object and moves with it. Completely covering the source of the darkness with an opaque object, such as a bowl or a helm, blocks the darkness.If any of this spell’s area overlaps with an area of light created by a spell of 2nd level or lower, the spell that created the light is dispelled.', '', 'phb 230', '60 feet', 'V|M', 'Bat fur and a drop of pitch or piece of coal.', 'no', 'Up to 10 minutes', 'yes', '1 action', '2nd-level', 'Evocation', 'Druid|Sorcerer|Warlock|Wizard', '', 'Swamp', '', '', ''),
(92, 'Darkvision', 'You touch a willing creature to grant it the ability to see in the dark. For the duration, that creature has darkvision out to a range of 60 feet.', '', 'phb 230', 'Touch', 'V|S|M', 'Either a pinch of dried carrot or an agate.', 'no', '8 hours', 'no', '1 action', '2nd-level', 'Transmutation', 'Druid|Ranger|Sorcerer|Wizard', '', '', '', '', ''),
(93, 'Daylight', 'A 60-foot-radius sphere of light spreads out from a point you choose within range. The sphere is bright light and sheds dim light for an additional 60 feet.If you chose a point on an object you are holding or one that isn’t being worn or carried, the light shines from the object and moves with it. Completely covering the affected object with an opaque object, such as a bowl or a helm, blocks the light.If any of this spell’s area overlaps with an area of darkness created by a spell of 3rd level or lower, the spell that created the darkness is dispelled.', '', 'phb 230', '60 feet', 'V|S', '', 'no', '1 hour', 'no', '1 action', '3rd-level', 'Evocation', 'Cleric|Druid|Paladin|Ranger|Sorcerer', '', 'Grassland', 'Light', '', ''),
(94, 'Death Ward', 'You touch a creature and grant it a measure of protection from death.The first time the target would drop to 0 hit points as a result of taking damage, the target instead drops to 1 hit point, and the spell ends.If the spell is still in effect when the target is subjected to an effect that would kill it instantaneously without dealing damage, that effect is instead negated against the target, and the spell ends.', '', 'phb 230', 'Touch', 'V|S', '', 'no', '8 hours', 'no', '1 action', '4th-level', 'Abjuration', 'Cleric|Paladin', '', '', 'Life', '', ''),
(95, 'Delayed Blast Fireball', 'A beam of yellow light flashes from your pointing finger, then condenses to linger at a chosen point within range as a glowing bead for the duration. When the spell ends, either because your concentration is broken or because you decide to end it, the bead blossoms with a low roar into an explosion of flame that spreads around corners. Each creature in a 20-foot-radius sphere centered on that point must make a dexterity saving throw. A creature takes fire damage equal to the total accumulated damage on a failed save, or half as much damage on a successful one.The spell’s base damage is 12d6. If at the end of your turn the bead has not yet detonated, the damage increases by 1d6.If the glowing bead is touched before the interval has expired, the creature touching it must make a dexterity saving throw. On a failed save, the spell ends immediately, causing the bead to erupt in flame. On a successful save, the creature can throw the bead up to 40 feet. When it strikes a creature or a solid object, the spell ends, and the bead explodes.The fire damages objects in the area and ignites flammable objects that aren’t being worn or carried.', 'When you cast this spell using a spell slot of 8th level or higher, the base damage increases by 1d6 for each slot level above 7th.', 'phb 230', '150 feet', 'V|S|M', 'A tiny ball of bat guano and sulfur.', 'no', 'Up to 1 minute', 'yes', '1 action', '7th-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(96, 'Demiplane', 'You create a shadowy door on a flat solid surface that you can see within range. The door is large enough to allow Medium creatures to pass through unhindered. When opened, the door leads to a demiplane that appears to be an empty room 30 feet in each dimension, made of wood or stone. When the spell ends, the door disappears, and any creatures or objects inside the demiplane remain trapped there, as the door also disappears from the other side.Each time you cast this spell, you can create a new demiplane, or have the shadowy door connect to a demiplane you created with a previous casting of this spell. Additionally, if you know the nature and contents of a demiplane created by a casting of this spell by another creature, you can have the shadowy door connect to its demiplane instead.', '', 'phb 231', '60 feet', 'S', '', 'no', '1 hour', 'no', '1 action', '8th-level', 'Conjuration', 'Warlock|Wizard', '', '', '', '', ''),
(97, 'Destructive Wave', '', '', 'phb 231', 'Self', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Evocation', 'Paladin', '', '', 'Tempest', '', ''),
(98, 'Detect Evil and Good', 'For the duration, you know if there is an aberration, celestial, elemental, fey, fiend, or undead within 30 feet of you, as well as where the creature is located. Similarly, you know if there is a place or object within 30 feet of you that has been magically consecrated or desecrated.The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.', '', 'phb 231', 'Self', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '1st-level', 'Divination', 'Cleric|Paladin', '', '', '', '', ''),
(99, 'Detect Magic', 'For the duration, you sense the presence of magic within 30 feet of you. If you sense magic in this way, you can use your action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any.The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.', '', 'phb 231', 'Self', 'V|S', '', 'yes', 'Up to 10 minutes', 'yes', '1 action', '1st-level', 'Divination', 'Bard|Cleric|Druid|Paladin|Ranger|Ritual Caster|Sorcerer|Wizard', '', '', '', '', ''),
(100, 'Detect Poison and Disease', 'For the duration, you can sense the presence and location of poisons, poisonous creatures, and diseases within 30 feet of you. You also identify the kind of poison, poisonous creature, or disease in each case.The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.', '', 'phb 231', 'Self', 'V|S|M', 'A yew leaf.', 'yes', 'Up to 10 minutes', 'yes', '1 action', '1st-level', 'Divination', 'Cleric|Druid|Paladin|Ranger|Ritual Caster', '', '', '', '', ''),
(101, 'Detect Thoughts', 'For the duration of the spell, you can read the thoughts of some creatures. While casting the spell and at your action in each round until the spell, you may focus your mind on a creature you can see 30 feet of you. If the chosen creature has an Intelligence of 3 or less, or if she does not speak any language, the creature is not affected.You first read the surface thoughts of the creature, which occupies her mind at that moment. In an action, you can direct your attention to the thoughts of another creature or attempt to deepen your reading thoughts of the same creature. If you deepen your reading, the target must make a backup of Wisdom, otherwise you get access to his argument (if any), in his emotional state and thought that concerns his mind on a broader spectrum Such a concern, love or hate. If successful, the spell ends. In all cases, the target is aware that his mind is under your eyes. Unless you are directing your attention to the thoughts of another creature, the target can use his action turn to roll Intelligence opposite your roll Intelligence. If she has the upper hand, the spell ends.The questions verbally directed to the target guide the train of thought. This spell is especially effective during an interrogation.You can also use this spell to detect the presence of thinking creatures that are invisible to you. When you cast this spell, or in an action for the duration of the spell, you can find thoughts to 30 feet of you. The spell can override most obstacles but it is blocked by 2 feet stone 2 inches of precious metal, or a thin sheet of lead. You can not detect a creature with an Intelligence of 3 or less or speaking any language.After detecting the presence of a creature in this way, you can read his thoughts for the rest of the spell&lsquo;s duration as described above, even if you can not see it, but only if it remains in the range of the spell.', '', 'phb 231', 'Self', 'V|S|M', 'A copper coin.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Divination', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', 'Great Old One'),
(102, 'Dimension Door', 'You teleport yourself from your current location to any other spot within range. You arrive at exactly the spot desired. It can be a place you can see, one you can visualize, or one you can describe by stating distance and direction, such as “200 feet straight downward” or “upward to the northwest at a 45-degree angle, 300 feet.”You can bring along objects as long as their weight doesn’t exceed what you can carry. You can also bring one willing creature of your size or smaller who is carrying gear up to its carrying capacity. The creature must be within 5 feet of you when you cast this spell.If you would arrive in a place already occupied by an object or a creature, you and any creature traveling with you each take 4d6 force damage, and the spell fails to teleport you.', '', 'phb 233', '500 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '4th-level', 'Conjuration', 'Bard|Cleric|Paladin|Sorcerer|Warlock|Wizard', '', '', 'Trickery', 'Vengeance', ''),
(103, 'Disguise Self', 'You make yourself – including your clothing, armor, weapons, and other belongings on your person – look different until the spell ends or until you use your action to dismiss it. You can seem 1 foot shorter or taller and can appear thin, fat, or in between. You can’t change your body type, so you must adopt a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you.The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to your outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel your head and hair. If you use this spell to appear thinner than you are, the hand of someone who reaches out to touch you would bump into you while it was seemingly still in midair.To discern that you are disguised, a creature can use its action to inspect your apperance and must succeed on an Intelligence (Investigation) check against your spell save DC.', '', 'phb 233', 'Self', 'V|S', '', 'no', '1 hour', 'no', '1 action', '1st-level', 'Illusion', 'Bard|Cleric|Sorcerer|Wizard', '', '', 'Trickery', '', ''),
(104, 'Disintegrate', 'A thin green ray springs from your pointing finger to a target that you can see within range. The target can be a creature, an object, or a creation of magical force, such as the wall created by wall of force.A creature targeted by this spell must make a dexterity saving throw. On a failed save, the target takes 10d6 + 40 force damage. If this damage reduces the target to 0 hit points, it is disintegrated.A disintegrated creature and everything it is wearing and carrying, except magic items, are reduced to a pile of fine gray dust. The creature can be restored to life only by means of a true resurrection or a wish spell.This spell automatically disintegrates a Large or smaller nonmagical object or a creation of magical force. If the target is a Huge or larger object or creation of force, this spell disintegrates a 10-foot-cube portion of it. A magic item is unaffected by this spell.', 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 3d6 for each slot level above 6th.', 'phb 233', '60 feet', 'V|S|M', 'A lodestone and a pinch of dust.', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Transmutation', 'Sorcerer|Wizard', '', '', '', '', ''),
(105, 'Dispel Evil and Good', 'Shimmering energy surrounds and protects you from fey, undead, and creatures originating from beyond the Material Plane. For the duration, celestials, elementals, fey, fiends, and undead have disadvantage on attack rolls against you.You can end the spell early by using either of the following special functions.<br /><strong>Break Enchantment.</strong> As your action, you touch a creature you can reach that is charmed, frightened, or possessed by a celestial, an elemental, a fey, a fiend, or an undead. The creature you touch is no longer charmed, frightened, or possessed by such creatures.<br /><strong>Dismissal.</strong> As your action, make a melee spell attack against a celestial, an elemental, a fey, a fiend, or an undead you can reach. On a hit, you attempt to drive the creature back to its home plane. The creature must succeed on a charisma saving throw or be sent back to its home plane (if it isn&lsquo;t there already). If they aren’t on their home plane, undead are sent to the Shadowfell, and fey are sent to the Feywild.', '', 'phb 233', 'Self', 'V|S|M', 'Holy water or powdered silver and iron.', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Abjuration', 'Cleric|Paladin', '', '', '', '', ''),
(106, 'Dispel Magic', 'Choose one creature, object, or magical effect within range. Any spell of 3rd level or lower on the target ends. For each spell of 4th level or higher on the target, make an ability check using your spellcasting ability. The DC equals 10 + the spell’s level. On a successful check, the spell ends.', 'When you cast this spell using a spell slot of 4th level or higher, you automatically end the effects of a spell on the target if the spell’s level is equal to or less than the level of the spell slot you used.', 'phb 234', '120 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Abjuration', 'Bard|Cleric|Druid|Paladin|Sorcerer|Warlock|Wizard', '', '', 'Trickery', 'Devotion', ''),
(107, 'Dissonant Whispers', '', 'Damage increases by 1d6 for each slot level above 1st.', 'phb 234', '60 ft.', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Enchantment', 'Bard', '', '', '', '', ''),
(108, 'Divination', 'Your magic and an offering put you in contact with a god or a god’s servants. You ask a single question concerning a specific goal, event, or activity to occur within 7 days. The DM offers a truthful reply. The reply might be a short phrase, a cryptic rhyme, or an omen.The spell doesn’t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion.If you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.', '', 'phb 234', 'Self', 'V|S|M', 'Incense and a sacrificial offering appropriate to your religion, together worth at least 25gp, which the spell consumes.', 'yes', 'Instantaneous', 'no', '1 action', '4th-level', 'Divination', 'Cleric|Druid|Ritual Caster', '', 'Forest|Grassland', '', '', ''),
(109, 'Divine Favor', 'Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal an extra 1d4 radiant damage on a hit.', '', 'phb 234', 'Self', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 bonus action', '1st-level', 'Evocation', 'Cleric|Paladin', '', '', 'War', '', ''),
(110, 'Divine Word', 'You speak a word of God, full of the power that has shaped the world at the dawn of creation. Choose as many creatures as you want from those you see, in the range of the spell. Every creature that hears you must make a backup Charisma, or she undergoes an effect based on the current value of his life.- pv or less 50: muted for 1 minute- 40 hp or less: deafened and blinded for 10 minutes- 30 hp or less: blinded, deafened and dazed for 1 hour- 20 hp or less: killed instantlyRegardless of its points of current life, a celestial, an elementary, a fairy or a fiend who fails his roll is returned to its original plan (if not already) and it can not go back on your plan for 24 hours, regardless of the means, with the exception of the wish spell.', '', 'phb 234', '30 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 bonus action', '7th-level', 'Evocation', 'Cleric', '', '', '', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(111, 'Dominate Beast', 'You attempt to beguile a creature that you can see within range. It must succeed on a wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.While the creature is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as \"Attack that creature,\" \"Run over there,\" or \"Fetch that object.\" If the creature completes the order and doesn&lsquo;t receive further direction from you, it defends and preserves itself to the best of its ability.You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn&lsquo;t do anything that you don&lsquo;t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well. Each time the target takes damage, it makes a new wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.', 'When you cast this spell with a 9th level spell slot, the duration is concentration, up to 8 hours.', 'phb 234', '60 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Enchantment', 'Cleric|Druid|Sorcerer|Warlock', '', '', 'Nature', '', 'Archfey|Great Old One'),
(112, 'Dominate Monster', 'You attempt to beguile a creature that you can see within range. It must succeed on a wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.While the creature is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as “Attack that creature,” “Run over there,” or “Fetch that object.” If the creature completes the order and doesn’t receive further direction from you, it defends and preserves itself to the best of its ability.You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn’t do anything that you don’t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well.Each time the target takes damage, it makes a new wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.', 'When you cast this spell with a 9th-level spell slot, the duration is concentration, up to 8 hours.', 'phb 235', '60 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '8th-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(113, 'Dominate Person', 'You attempt to beguile a humanoid that you can see within range. It must succeed on a wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.While the target is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as “Attack that creature,” “Run over there,” or “Fetch that object.” If the creature completes the order and doesn’t receive further direction from you, it defends and preserves itself to the best of its ability.You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn’t do anything that you don’t allow it to do. During this time you can also cause the creature to use a reaction, but this requires you to use your own reaction as well.Each time the target takes damage, it makes a new wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.', 'When you cast this spell using a 6th-level spell slot, the duration is concentration, up to 10 minutes. When you use a 7th-level spell slot, the duration is concentration, up to 1 hour. When you use a spell slot of 8th level or higher, the duration is concentration, up to 8 hours.', 'phb 235', '60 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Enchantment', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', 'Trickery', '', 'Archfey|Great Old One'),
(114, 'Dream', 'This spell shapes a creature’s dreams. Choose a creature known to you as the target of this spell. The target must be on the same plane of existence as you. Creatures that don’t sleep, such as elves, can’t be contacted by this spell. You, or a willing creature you touch, enters a trance state, acting as a messenger.While in the trance, the messenger is aware of his or her surroundings, but can’t take actions or move.If the target is asleep, the messenger appears in the target’s dreams and can converse with the target as long as it remains asleep, through the duration of the spell. The messenger can also shape the environment of the dream, creating landscapes, objects, and other images. The messenger can emerge from the trance at any time, ending the effect of the spell early. The target recalls the dream perfectly upon waking. If the target is awake when you cast the spell, the messenger knows it, and can either end the trance (and the spell) or wait for the target to fall asleep, at which point the messenger appears in the target’s dreams.You can make the messenger appear monstrous and terrifying to the target. If you do, the messenger can deliver a message of no more than ten words and then the target must make a wisdom saving throw. On a failed save, echoes of the phantasmal monstrosity spawn a nightmare that lasts the duration of the target’s sleep and prevents the target from gaining any benefit from that rest. In addition, when the target wakes up, it takes 3d6 psychic damage.If you have a body part, lock of hair, clipping from a nail, or similar portion of the target’s body, the target makes its saving throw with disadvantage.', '', 'phb 236', 'Special', 'V|S|M', 'A handful of sand, a dab of ink, and a writing quill plucked from a sleeping bird.', 'no', '8 hours', 'no', '1 minute', '5th-level', 'Illusion', 'Bard|Druid|Warlock|Wizard', '', 'Grassland', '', '', ''),
(115, 'Druidcraft', '', '', 'phb 236', '30 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Transmutation', 'Druid', '', '', 'Nature', '', ''),
(116, 'Earthquake', 'You create a seismic disturbance at a point on the ground that you can see within range. For the duration, an intense tremor rips through the ground in a 100-foot-radius circle centered on that point and shakes creatures and structures in contact with the ground in that area.The ground in the area becomes difficult terrain. Each creature on the ground that is concentrating must make a constitution saving throw. On a failed save, the creature’s concentration is broken.When you cast this spell and at the end of each turn you spend concentrating on it, each creature on the ground in the area must make a dexterity saving throw. On a failed save, the creature is knocked prone.This spell can have additional effects depending on the terrain in the area, as determined by the DM.Fissures. Fissures open throughout the spell’s area at the start of your next turn after you cast the spell. A total of 1d6 such fissures open in locations chosen by the DM. Each is 1d10 × 10 feet deep, 10 feet wide, and extends from one edge of the spell’s area to the opposite side. A creature standing on a spot where a fissure opens must succeed on a dexterity saving throw or fall in. A creature that successfully saves moves with the fissure’s edge as it opens.A fissure that opens beneath a structure causes it to automatically collapse (see below).Structures. The tremor deals 50 bludgeoning damage to any structure in contact with the ground in the area when you cast the spell and at the start of each of your turns until the spell ends. If a structure drops to 0 hit points, it collapses and potentially damages nearby creatures. A creature within half the distance of a structure’s height must make a dexterity saving throw. On a failed save, the creature takes 5d6 bludgeoning damage, is knocked prone, and is buried in the rubble, requiring a DC 20 Strength (Athletics) check as an action to escape. The DM can adjust the DC higher or lower, depending on the nature of the rubble. On a successful save, the creature takes half as much damage and doesn’t fall prone or become buried.', '', 'phb 236', '500 feet', 'V|S|M', 'A pinch of dirt, a piece of rock, and a lump of clay.', 'no', 'Up to 1 minute', 'yes', '1 action', '8th-level', 'Evocation', 'Cleric|Druid|Sorcerer', '', '', '', '', ''),
(117, 'Eldritch Blast', '', 'Creates an addition beam at 5th, 11th, and 17th level. Each can be aimed at separate targets and have their own attack rolls.', 'phb 237', '120 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Evocation', 'Warlock', '', '', '', '', ''),
(118, 'Elemental Weapon', '', '5th-6th level +2 attack and +2d4 damage. 7th-level +3 attack and +3d4 damage.', 'phb 237', 'Touch', 'V|S', '', 'no', '1 hour', 'yes', '1 action', '3rd-level', 'Transmutation', 'Paladin', '', '', '', '', ''),
(119, 'Enhance Ability', 'You touch a creature and bestow upon it a magical enhancement. Choose one of the following effects; the target gains that effect until the spell ends.<br /><strong>Bear’s Endurance.</strong> The target has advantage on constitution checks. It also gains 2d6 temporary hit points, which are lost when the spell ends. <br /><strong>Bull’s Strength.</strong> The target has advantage on strength checks, and his or her carrying capacity doubles.<br /><strong>Cat’s Grace.</strong> The target has advantage on dexterity checks. It also doesn’t take damage from falling 20 feet or less if it isn’t incapacitated.<br /><strong>Eagle’s Splendor.</strong> The target has advantage on Charisma checks.<br /><strong>Fox’s Cunning.</strong> The target has advantage on intelligence checks.<br /><strong>Owl’s Wisdom.</strong> The target has advantage on wisdom checks.', 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.', 'phb 237', 'Touch', 'V|S|M', 'Fur or a feather from a beast.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Transmutation', 'Bard|Cleric|Druid|Sorcerer', '', '', '', '', ''),
(120, 'Enlarge/Reduce', 'Enlarging or reducing in size a creature or object that you can see and is within range for the duration of the spell. Choose a creature or object that is not worn or carried. If the target does not consent, it can make a constitution saving throw. If successful, the spell has no effect.If the target is a creature, everything she wears and carries with it change size. Any item dropped by the affected creature returns to its normal size.<br /><strong>Magnification.</strong> The double target in all dimensions, and its weight is multiplied by eight. This increases the size of a class of M to G for example. If there is not enough space in the room for the double target size, the creature or object reaches the maximum size possible in the available space. Until the end of the spell, the target also has the advantage of its jets Force and Force saves. Weapons to the target also grow. As long as these weapons are enlarged, the target&lsquo;s attacks cause additional 1d4 damage.<br /><strong>Reduction.</strong> The size of the target is reduced by half in all dimensions, and its weight is divided by eight. This reduction decreases the size of a class from M to P for example. Until the end of the spell, the target has a disadvantage to its jets Force and its Force saves. The weapons of the target shrink too. As long as these weapons are reduced, target attacks cause less damage 1d4 (minimum 1 point of damage). ', '', 'phb 237', '30 feet', 'V|S|M', 'A pinch iron powder.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Transmutation', 'Sorcerer|Wizard', '', '', '', '', ''),
(121, 'Ensnaring Strike', '', 'Damage increases by 1d6 for each slot level above 1st.', 'phb 237', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Conjuration', 'Ranger', '', '', '', 'Ancients', ''),
(122, 'Entangle', 'Grasping weeds and vines sprout from the ground in a 20-foot square starting form a point within range. For the duration, these plants turn the ground in the area into difficult terrain.A creature in the area when you cast the spell must succeed on a strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself.When the spell ends, the conjured plants wilt away.', '', 'phb 238', '90 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Conjuration', 'Druid', '', '', '', '', ''),
(123, 'Enthrall', 'You weave a distracting string of words, causing creatures of your choice that you can see within range and that can hear you to make a wisdom saving throw. Any creature that can’t be charmed succeeds on this saving throw automatically, and if you or your companions are fighting a creature, it has advantage on the save. On a failed save, the target has disadvantage on Wisdom (Perception) checks made to perceive any creature other than you until the spell ends or until the target can no longer hear you. The spell ends if you are incapacitated or can no longer speak.', '', 'phb 238', '60 feet', 'V|S', '', 'no', '1 minute', 'no', '1 action', '2nd-level', 'Enchantment', 'Bard|Warlock', '', '', '', '', ''),
(124, 'Etherealness', 'You step into the border regions of the Ethereal Plane, in the area where it overlaps with your current plane. You remain in the Border Ethereal for the duration or until you use your action to dismiss the spell. During this time, you can move in any direction. If you move up or down, every foot of movement costs an extra foot. You can see and hear the plane you originated from, but everything there looks gray, and you can’t see anything more than 60 feet away.While on the Ethereal Plane, you can only affect and be affected by other creatures on that plane. Creatures that aren’t on the Ethereal Plane can’t perceive you and can’t interact with you, unless a special ability or magic has given them the ability to do so.You ignore all objects and effects that aren’t on the Ethereal Plane, allowing you to move through objects you perceive on the plane you originated from.When the spell ends, you immediately return to the plane you originated from in the spot you currently occupy. If you occupy the same spot as a solid object or creature when this happens, you are immediately shunted to the nearest unoccupied space that you can occupy and take force damage equal to twice the number of feet you are moved.This spell has no effect if you cast it while you are on the Ethereal Plane or a plane that doesn’t border it, such as one of the Outer Planes.', 'When you cast this spell using a spell slot of 8th level or higher, you can target up to three willing creatures (including you) for each slot level above 7th. The creatures must be within 10 feet of you when you cast the spell.', 'phb 238', 'Self', 'V|S', '', 'no', '8 hours', 'no', '1 action', '7th-level', 'Transmutation', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(125, 'Expeditious Retreat', 'This spell allows you to move at an incredible pace. When you cast this spell, and then as a bonus action on each of your turns until the spell ends, you can take the Dash action.', '', 'phb 238', 'Self', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 bonus action', '1st-level', 'Transmutation', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(126, 'Eyebite', 'For the spell’s duration, your eyes become an inky void imbued with dread power. One creature of your choice within 60 feet of you that you can see must succeed on a wisdom saving throw or be affected by one of the following effects of your choice for the duration. On each of your turns until the spell ends, you can use your action to target another creature but can’t target a creature again if it has succeeded on a saving throw against this casting of eyebite.<br /><strong>Asleep.</strong> The target falls unconscious. It wakes up if it takes any damage or if another creature uses its action to shake the sleeper awake.<br /><strong>Panicked.</strong> The target is frightened of you. On each of its turns, the frightened creature must take the Dash action and move away from you by the safest and shortest available route, unless there is nowhere to move. If the target moves to a place at least 60 feet away from you where it can no longer see you, this effect ends.<br /><strong>Sickened.</strong> The target has disadvantage on attack rolls and ability checks. At the end of each of its turns, it can make another wisdom saving throw. If it succeeds, the effect ends.', '', 'phb 238', 'Self', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '6th-level', 'Necromancy', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(127, 'Fabricate', 'You convert raw materials into products of the same material. For example, you can fabricate a wooden bridge from a clump of trees, a rope from a patch of hemp, and clothes from flax or wool.Choose raw materials that you can see within range. You can fabricate a Large or smaller object (contained within a 10-foot cube, or eight connected 5-foot cubes), given a sufficient quantity of raw material. If you are working with metal, stone, or another mineral substance, however, the fabricated object can be no larger than Medium (contained within a single 5-foot cube). The quality of objects made by the spell is commensurate with the quality of the raw materials.Creatures or magic items can’t be created or transmuted by this spell. You also can’t use it to create items that ordinarily require a high degree of craftsmanship, such as jewelry, weapons, glass, or armor, unless you have proficiency with the type of artisan’s tools used to craft such objects.', '', 'phb 239', '120 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '10 minutes', '4th-level', 'Transmutation', 'Wizard', '', '', '', '', ''),
(128, 'Faerie Fire', 'Each object in a 20-foot cube within range is outlined in blue, green, or violet light (your choice). Any creature in the area when the spell is cast is also outlined in light if it fails a dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10-foot radius.Any attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can’t benefit from being invisible.', '', 'phb 239', '60 feet', 'V', '', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Evocation', 'Bard|Cleric|Druid|Warlock', '', '', 'Light', '', 'Archfey'),
(129, 'Faithful Hound', 'You conjure a phantom watchdog in an unoccupied space that you can see within range, where it remains for the duration, until you dismiss it as an action, or until you move more than 100 feet away from it.The hound is invisible to all creatures except you and can’t be harmed. When a Small or larger creature comes within 30 feet of it without first speaking the password that you specify when you cast this spell, the hound starts barking loudly. The hound sees invisible creatures and can see into the Ethereal Plane. It ignores illusions.At the start of each of your turns, the hound attempts to bite one creature within 5 feet of it that is hostile to you. The hound’s attack bonus is equal to your spellcasting ability modifier + your proficiency bonus. On a hit, it deals 4d8 piercing damage.', '', 'phb 261', '30 feet', 'V|S|M', 'A tiny silver whistle, a piece of bone, and a thread', 'no', '8 hours', 'no', '1 action', '4th-level', 'Conjuration', 'Wizard', '', '', '', '', ''),
(130, 'False Life', 'Bolstering yourself with a necromantic facsimile of life, you gain 1d4 + 4 temporary hit points for the duration.', 'When you cast this spell using a spell slot of 2nd level or higher, you gain 5 additional temporary hit points for each slot level above 1st.', 'phb 239', 'Self', 'V|S|M', 'A small amount of alcohol or distilled spirits.', 'no', '1 hour', 'no', '1 action', '1st-level', 'Necromancy', 'Sorcerer|Wizard', '', '', '', '', ''),
(131, 'Fear', 'You project a phantasmal image of a creature’s worst fears. Each creature in a 30-foot cone must succeed on a wisdom saving throw or drop whatever it is holding and become frightened for the duration.While frightened by this spell, a creature must take the Dash action and move away from you by the safest available route on each of its turns, unless there is nowhere to move. If the creature ends its turn in a location where it doesn’t have line of sight to you, the creature can make a wisdom saving throw. On a successful save, the spell ends for that creature.', '', 'phb 239', 'Self', 'V|S|M', 'A white feather or the heart of a hen.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Illusion', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(132, 'Feather Fall', 'Choose up to five falling creatures within range. A falling creature’s rate of descent slows to 60 feet per round until the spell ends. If the creature lands before the spell ends, it takes no falling damage and can land on its feet, and the spell ends for that creature.', '', 'phb 239', '60 feet', 'V|M', 'A small feather or a piece of down.', 'no', '1 minute', 'no', '1 reaction', '1st-level', 'Transmutation', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(133, 'Feeblemind', 'You blast the mind of a creature that you can see within range, attempting to shatter its intellect and personality. The target takes 4d6 psychic damage and must make an intelligence saving throw.On a failed save, the creature’s Intelligence and Charisma scores become 1. The creature can’t cast spells, activate magic items, understand language, or communicate in any intelligible way. The creature can, however, identify its friends, follow them, and even protect them.At the end of every 30 days, the creature can repeat its saving throw against this spell. If it succeeds on its saving throw, the spell ends.The spell can also be ended by greater restoration, heal, or wish.', '', 'phb 239', '150 feet', 'V|S|M', 'A handful of clay, crystal, glass, or mineral spheres.', 'no', 'Instantaneous', 'no', '1 action', '8th-level', 'Enchantment', 'Bard|Druid|Warlock|Wizard', '', '', '', '', ''),
(134, 'Feign Death', '', '', 'phb 240', 'Touch', 'V|S|M', 'pinch of graveyard dirt', 'yes', '1 hour', 'no', '1 action', '3rd-level', 'Necromancy', 'Bard|Cleric| Druid|Wizard|Ritual Caster', '', '', '', '', ''),
(135, 'Find Familiar', '', '', 'phb 240', '10 ft.', 'V|S|M', 'charcoal, incense, and herbs worth 10 gp', 'yes', 'Instantaneous', 'no', '1 hour', '1st-level', 'Conjuration', 'Wizard|Ritual Caster', '', '', '', '', ''),
(136, 'Find Steed', 'You summon a spirit that assumes the form of an unusually intelligent, strong, and loyal steed, creating a long-lasting bond with it. Appearing in an unoccupied space within range, the steed takes on a form that you choose, such as a warhorse, a pony, a camel, an elk, or a mastiff. (Your DM might allow other animals to be summoned as steeds.) The steed has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of its normal type. Additionally, if your steed has an Intelligence of 5 or less, its Intelligence becomes 6, and it gains the ability to understand one language of your choice that you speak.Your steed serves you as a mount, both in combat and out, and you have an instinctive bond with it that allows you to fight as a seamless unit. While mounted on your steed, you can make any spell you cast that targets only you also target your steed.When the steed drops to 0 hit points, it disappears, leaving behind no physical form. You can also dismiss your steed at any time as an action, causing it to disappear. In either case, casting this spell again summons the same steed, restored to its hit point maximum.While your steed is within 1 mile of you, you can communicate with it telepathically.You can’t have more than one steed bonded by this spell at a time. As an action, you can release the steed from its bond at any time, causing it to disappear.', '', 'phb 240', '30 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '10 minutes', '2nd-level', 'Conjuration', 'Paladin', '', '', '', '', ''),
(137, 'Find the Path', 'This spell allows you to find the shortest, most direct physical route to a specific fixed location that you are familiar with on the same plane of existence. If you name a destination on another plane of existence, a destination that moves (such as a mobile fortress), or a destination that isn’t specific (such as “a green dragon’s lair”), the spell fails.For the duration, as long as you are on the same plane of existence as the destination, you know how far it is and in what direction it lies. While you are traveling there, whenever you are presented with a choice of paths along the way, you automatically determine which path is the shortest and most direct route (but not necessarily the safest route) to the destination.', '', 'phb 240', 'Self', 'V|S|M', 'A set of divinatory tools—such as bones, ivory sticks, cards, teeth, or carved runes—worth 100gp and an object from the location you wish to find.', 'no', 'Up to 24 hours', 'yes', '1 minute', '6th-level', 'Divination', 'Bard|Cleric|Druid', '', '', '', '', ''),
(138, 'Find Traps', 'You sense the presence of any trap within range that is within line of sight. A trap, for the purpose of this spell, includes anything that would inflict a sudden or unexpected effect you consider harmful or undesirable, which was specifically intended as such by its creator. Thus, the spell would sense an area affected by the alarm spell, a glyph of warding, or a mechanical pit trap, but it would not reveal a natural weakness in the floor, an unstable ceiling, or a hidden sinkhole.This spell merely reveals that a trap is present. You don’t learn the location of each trap, but you do learn the general nature of the danger posed by a trap you sense.', '', 'phb 241', '120 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Divination', 'Cleric|Druid|Ranger', '', '', '', '', ''),
(139, 'Finger of Death', 'You send negative energy coursing through a creature that you can see within range, causing it searing pain. The target must make a constitution saving throw. It takes 7d8 + 30 necrotic damage on a failed save, or half as much damage on a successful one.A humanoid killed by this spell rises at the start of your next turn as a zombie that is permanently under your command, following your verbal orders to the best of its ability.', '', 'phb 241', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '7th-level', 'Necromancy', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(140, 'Fire Bolt', '', 'Damage increases by an additional 1d10 at 5th, 11th, and 17th level.', 'phb 242', '120 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(141, 'Fire Shield', 'Thin and vaporous flame surround your body for the duration of the spell, radiating a bright light bright light in a 10-foot radius and dim light for an additional 10 feet. You can end the spell using an action to make it disappear.The flames are around you a heat shield or cold, your choice. The heat shield gives you cold damage resistance and the cold resistance to fire damage.In addition, whenever a creature within 5 feet of you hits you with a melee attack, flames spring from the shield. The attacker then suffers 2d8 points of fire damage or cold, depending on the model. ', '', 'phb 242', 'Self', 'V|S|M', 'A little phosphorus or a firefly.', 'no', '10 minutes', 'no', '1 action', '4th-level', 'Evocation', 'Warlock|Wizard', '', '', '', '', 'Fiend'),
(142, 'Fire Storm', 'A storm made up of sheets of roaring flame appears in a location you choose within range. The area of the storm consists of up to ten 10-foot cubes, which you can arrange as you wish. Each cube must have at least one face adjacent to the face of another cube. Each creature in the area must make a dexterity saving throw. It takes 7d10 fire damage on a failed save, or half as much damage on a successful one.The fire damages objects in the area and ignites flammable objects that aren’t being worn or carried. If you choose, plant life in the area is unaffected by this spell.', '', 'phb 242', '150 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '7th-level', 'Evocation', 'Cleric|Druid|Sorcerer', '', '', '', '', ''),
(143, 'Fireball', 'A bright streak flashes from your pointing finger to a point you choose within range and then blossoms with a low roar into an explosion of flame. Each creature in a 20-foot-radius sphere centered on that point must make a dexterity saving throw. A target takes 8d6 fire damage on a failed save, or half as much damage on a successful one.The fire spreads around corners. It ignites flammable objects in the area that aren’t being worn or carried.', 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.', 'phb 241', '150 feet', 'V|S|M', 'A tiny ball of bat guano and sulfur.', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Evocation', 'Cleric|Sorcerer|Warlock|Wizard', '', '', 'Light', '', 'Fiend'),
(144, 'Flame Blade', 'You evoke a fiery blade in your free hand. The blade is similar in size and shape to a scimitar, and it lasts for the duration. If you let go of the blade, it disappears, but you can evoke the blade again as a bonus action.You can use your action to make a melee spell attack with the fiery blade. On a hit, the target takes 3d6 fire damage.The flaming blade sheds bright light in a 10-foot radius and dim light for an additional 10 feet.', 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for every two slot levels above 2nd.', 'phb 242', 'Self', 'V|S|M', 'Leaf of sumac.', 'no', 'Up to 10 minutes', 'yes', '1 bonus action', '2nd-level', 'Evocation', 'Druid', '', '', '', '', ''),
(145, 'Flame Strike', 'A vertical column of divine fire roars down from the heavens in a location you specify. Each creature in a 10-foot-radius, 40-foot-high cylinder centered on a point within range must make a dexterity saving throw. A creature takes 4d6 fire damage and 4d6 radiant damage on a failed save, or half as much damage on a successful one.', 'When you cast this spell using a spell slot of 6th level or higher, the fire damage or the radiant damage (your choice) increases by 1d6 for each slot level above 5th.', 'phb 242', '60 feet', 'V|S|M', 'Pinch of sulfur.', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Evocation', 'Cleric|Paladin|Warlock', '', '', 'Light|War', 'Devotion', 'Fiend'),
(146, 'Flaming Sphere', 'A 5-foot-diameter sphere of fire appears in an unoccupied space of your choice within range and lasts for the duration. Any creature that ends its turn within 5 feet of the sphere must make a dexterity saving throw. The creature takes 2d6 fire damage on a failed save, or half as much damage on a successful one.As a bonus action, you can move the sphere up to 30 feet. If you ram the sphere into a creature, that creature must make the saving throw against the sphere’s damage, and the sphere stops moving this turn.When you move the sphere, you can direct it over barriers up to 5 feet tall and jump it across pits up to 10 feet wide. The sphere ignites flammable objects not being worn or carried, and it sheds bright light in a 20-foot radius and dim light for an additional 20 feet.', 'When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d6 for each slot level above 2nd.', 'phb 242', '60 feet', 'V|S|M', 'A bit of tallow, a pinch of brimstone, and a dusting of powdered iron.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Conjuration', 'Cleric|Druid|Wizard', '', '', 'Light', '', ''),
(147, 'Flesh to Stone', 'You attempt to turn one creature that you can see within range into stone. If the target’s body is made of flesh, the creature must make a constitution saving throw. On a failed save, it is restrained as its flesh begins to harden. On a successful save, the creature isn’t affected.A creature restrained by this spell must make another constitution saving throw at the end of each of its turns. If it successfully saves against this spell three times, the spell ends. If it fails its saves three times, it is turned to stone and subjected to the petrified condition for the duration. The successes and failures don’t need to be consecutive; keep track of both until the target collects three of a kind.If the creature is physically broken while petrified, it suffers from similar deformities if it reverts to its original state.If you maintain your concentration on this spell for the entire possible duration, the creature is turned to stone until the effect is removed.', '', 'phb 243', '60 feet', 'V|S|M', 'A pinch of lime, water, and earth.', 'no', 'Up to 1 minute', 'yes', '1 action', '6th-level', 'Transmutation', 'Warlock|Wizard', '', '', '', '', ''),
(148, 'Floating Disk', 'This spell creates a circular, horizontal plane of force, 3 feet in diameter and 1 inch thick, that floats 3 feet above the ground in an unoccupied space of your choice that you can see within range. The disk remains for the duration, and can hold up to 500 pounds. If more weight is placed on it, the spell ends, and everything on the disk falls to the ground.The disk is immobile while you are within 20 feet of it. If you move more than 20 feet away from it, the disk follows you so that it remains within 20 feet of you. If can move across uneven terrain, up or down stairs, slopes and the like, but it can’t cross an elevation change of 10 feet or more. For example, the disk can’t move across a 10-foot-deep pit, nor could it leave such a pit if it was created at the bottom.If you move more than 100 feet away from the disk (typically because it can’t move around an obstacle to follow you), the spell ends.', '', 'phb 282', '30 feet', 'V|S|M', 'A drop of mercury.', 'yes', '1 hour', 'no', '1 action', '1st-level', 'Conjuration', 'Ritual Caster|Wizard', '', '', '', '', ''),
(149, 'Fly', 'You touch a willing creature. The target gains a flying speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall.', 'When you cast this spell using a spell slot of 4th level or higher, you can target one additional creature for each slot level above 3rd.', 'phb 243', 'Touch', 'V|S|M', 'A wing feather from any bird.', 'no', 'Up to 10 minutes', 'yes', '1 action', '3rd-level', 'Transmutation', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(150, 'Fog Cloud', 'You create a 20-foot-radius sphere of fog centered on a point within range. The sphere spreads around corners, and its area is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it.', 'When you cast this spell using a spell slot of 2nd level or higher, the radius of the fog increases by 20 feet for each slot level above 1st.', 'phb 243', '120 feet', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '1st-level', 'Conjuration', 'Cleric|Druid|Ranger|Sorcerer|Wizard', '', '', 'Tempest', '', ''),
(151, 'Forbiddance', 'You create a ward against magical travel that protects up to 40,000 square feet of floor space to a height of 30 feet above the floor. For the duration, creatures can’t teleport into the area or use portals, such as those created by the gate spell, to enter the area. The spell proofs the area against planar travel, and therefore prevents creatures from accessing the area by way of the Astral Plane, Ethereal Plane, Feywild, Shadowfell, or the plane shift spell.In addition, the spell damages types of creatures that you choose when you cast it. Choose one or more of the following: celestials, elementals, fey, fiends, and undead. When a chosen creature enters the spell’s area for the first time on a turn or starts its turn there, the creature takes 5d10 radiant or necrotic damage (your choice when you cast this spell).When you cast this spell, you can designate a password. A creature that speaks the password as it enters the area takes no damage from the spell.The spell’s area can&lsquo;t overlap with the area of another forbiddance spell. If you cast forbiddance every day for 30 days in the same location, the spell lasts until it is dispelled, and the material components are consumed on the last casting.', '', 'phb 243', 'Touch', 'V|S|M', 'A sprinkling of holy water, rare incense, and powdered ruby worth at least 1,000 gp.', 'yes', '24 hours', 'no', '10 minutes', '6th-level', 'Abjuration', 'Cleric|Ritual Caster', '', '', '', '', ''),
(152, 'Forcecage', 'An immobile, invisible, cube-shaped prison composed of magical force springs into existence around an area you choose within range. The prison can be a cage or a solid box, as you choose.A prison in the shape of a cage can be up to 20 feet on a side and is made from 1/2-inch diameter bars spaced 1/2 inch apart. A prison in the shape of a box can be up to 10 feet on a side, creating a solid barrier that prevents any matter from passing through it and blocking any spells cast into or out from the area.When you cast the spell, any creature that is completely inside the cage&lsquo;s area is trapped. Creatures only partially within the area, or those too large to fit inside the area, are pushed away from the center of the area until they are completely outside the area.A creature inside the cage can’t leave it by nonmagical means. If the creature tries to use teleportation or interplanar travel to leave the cage, it must first make a charisma saving throw. On a success, the creature can use that magic to exit the cage. On a failure, the creature can&lsquo;t exit the cage and wastes the use of the spell or effect. The cage also extends into the Ethereal Plane, blocking ethereal travel.This spell can’t be dispelled by dispel magic.', '', 'phb 243', '100 feet', 'V|S|M', 'Ruby dust worth 1,500 gp.', 'no', '1 hour', 'no', '1 action', '7th-level', 'Evocation', 'Bard|Warlock|Wizard', '', '', '', '', ''),
(153, 'Foresight', 'You touch a willing creature and bestow a limited ability to see into the immediate future. For the duration, the target can’t be surprised and has advantage on attack rolls, ability checks, and saving throws. Additionally, other creatures have disadvantage on attack rolls against the target for the duration.This spell immediately ends if you cast it again before its duration ends.', '', 'phb 244', 'Touch', 'V|S|M', 'A hummingbird feather.', 'no', '8 hours', 'no', '1 minute', '9th-level', 'Divination', 'Bard|Druid|Warlock|Wizard', '', '', '', '', ''),
(154, 'Freedom of Movement', 'You touch a willing creature. For the duration, the target’s movement is unaffected by difficult terrain, and spells and other magical effects can neither reduce the target’s speed nor cause the target to be paralyzed or restrained.The target can also spend 5 feet of movement to automatically escape from nonmagical restraints, such as manacles or a creature that has it grappled. Finally, being underwater imposes no penalties on the target’s movement or attacks.', '', 'phb 244', 'Touch', 'V|S|M', 'A leather strap, bound around the arm or a similar appendage.', 'no', '1 hour', 'no', '1 action', '4th-level', 'Abjuration', 'Bard|Cleric|Druid|Paladin|Ranger', '', 'Arctic|Coast|Forest|Grassland|Swamp', 'War', 'Devotion', ''),
(155, 'Freezing Sphere', 'A frigid globe of cold energy streaks from your fingertips to a point of your choice within range, where it explodes in a 60-foot-radius sphere. Each creature within the area must make a constitution saving throw. On a failed save, a creature takes 10d6 cold damage. On a successful save, it takes half as much damage.If the globe strikes a body of water or a liquid that is principally water (not including water-based creatures), it freezes the liquid to a depth of 6 inches over an area 30 feet square. This ice lasts for 1 minute. Creatures that were swimming on the surface of frozen water are trapped in the ice. A trapped creature can use an action to make a Strength check against your spell save DC to break free.You can refrain from firing the globe after completing the spell, if you wish. A small globe about the size of a sling stone, cool to the touch, appears in your hand. At any time, you or a creature you give the globe to can throw the globe (to a range of 40 feet) or hurl it with a sling (to the sling’s normal range). It shatters on impact, with the same effect as the normal casting of the spell. You can also set the globe down without shattering it. After 1 minute, if the globe hasn’t already shattered, it explodes.', 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 1d6 for each slot level above 6th.', 'phb 263', '300 feet', 'V|S|M', 'A small crystal sphere.', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(156, 'Friends', '', '', 'phb 244', 'Self', 'S|M', 'makeup applied to face', 'no', '1 minute', 'yes', '1 action', 'cantrip', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(157, 'Gaseous Form', 'You transform a willing creature you touch, along with everything it’s wearing and carrying, into a misty cloud for the duration. The spell ends if the creature drops to 0 hit points. An incorporeal creature isn’t affected.While in this form, the target’s only method of movement is a flying speed of 10 feet. The target can enter and occupy the space of another creature. The target has resistance to nonmagical damage, and it has advantage on Strength, Dexterity, and constitution saving throws. The target can pass through small holes, narrow openings, and even mere cracks, though it treats liquids as though they were solid surfaces. The target can’t fall and remains hovering in the air even when stunned or otherwise incapacitated.While in the form of a misty cloud, the target can’t talk or manipulate objects, and any objects it was carrying or holding can’t be dropped, used, or otherwise interacted with. The target can’t attack or cast spells.', '', 'phb 244', 'Touch', 'V|S|M', 'A bit of gauze and a wisp of smoke.', 'no', 'Up to 1 hour', 'yes', '1 action', '3rd-level', 'Transmutation', 'Druid|Sorcerer|Warlock|Wizard', '', 'Underdark', '', '', ''),
(158, 'Gate', 'You conjure a portal linking an unoccupied space you can see within range to a precise location on a different plane of existence. The portal is a circular opening, which you can make 5 to 20 feet in diameter. You can orient the portal in any direction you choose. The portal lasts for the duration.The portal has a front and a back on each plane where it appears. Travel through the portal is possible only by moving through its front. Anything that does so is instantly transported to the other plane, appearing in the unoccupied space nearest to the portal.Deities and other planar rulers can prevent portals created by this spell from opening in their presence or anywhere within their domains.When you cast this spell, you can speak the name of a specific creature (a pseudonym, title, or nickname doesn’t work). If that creature is on a plane other than the one you are on, the portal opens in the named creature’s immediate vicinity and draws the creature through it to the nearest unoccupied space on your side of the portal. You gain no special power over the creature, and it is free to act as the DM deems appropriate. It might leave, attack you, or help you.', '', 'phb 244', '60 feet', 'V|S|M', 'A diamond worth at least 5,000gp.', 'no', 'Up to 1 minute', 'yes', '1 action', '9th-level', 'Conjuration', 'Cleric|Sorcerer|Wizard', '', '', '', '', ''),
(159, 'Geas', 'You place a magical command on a creature that you can see within range, forcing it to carry out some service or refrain from some action or course of activity as you decide. If the creature can understand you, it must succeed on a wisdom saving throw or become charmed by you for the duration. While the creature is charmed by you, it takes 5d10 psychic damage each time it acts in a manner directly counter to your instructions, but no more than once each day. A creature that can&lsquo;t understand you is unaffected by the spell.You can issue any command you choose, short of an activity that would result in certain death. Should you issue a suicidal command, the spell ends.You can end the spell early by using an action to dismiss it. A remove curse, greater restoration, or wish spell also ends it.', 'When you cast this spell using a spell slot of 7th or 8th level, the duration is 1 year. When you cast this spell using a spell slot of 9th level, the spell lasts until it is ended by one of the spells mentioned above.', 'phb 244', '60 feet', 'V', '', 'no', '30 days', 'no', '1 minute', '5th-level', 'Enchantment', 'Bard|Cleric|Druid|Paladin|Wizard', '', '', '', '', ''),
(160, 'Gentle Repose', 'You touch a corpse or other remains. For the duration, the target is protected from decay and can’t become undead.The spell also effectively extends the time limit on raising the target from the dead, since days spent under the influence of this spell don’t count against the time limit of spells such as raise dead.', '', 'phb 245', 'Touch', 'V|S|M', 'A pinch of salt and one copper piece placed on each of the corpse’s eyes, which must remain there for the duration.', 'yes', '10 days', 'no', '1 action', '2nd-level', 'Necromancy', 'Cleric|Ritual Caster|Wizard', '', '', '', '', ''),
(161, 'Giant Insect', 'You transform up to ten centipedes, three spiders, five wasps, or one scorpion within range into giant versions of their natural forms for the duration. A centipede becomes a giant centipede, a spider becomes a giant spider, a wasp becomes a giant wasp, and a scorpion becomes a giant scorpion.Each creature obeys your verbal commands, and in combat, they act on your turn each round. The DM has the statistics for these creatures and resolves their actions and movement.A creature remains in its giant size for the duration, until it drops to 0 hit points, or until you use an action to dismiss the effect on it.The DM might allow you to choose different targets. For example, if you transform a bee, its giant version might have the same statistics as a giant wasp.', '', 'phb 245', '30 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '4th-level', 'Transmutation', 'Druid', '', '', '', '', ''),
(162, 'Glibness', 'Until the spell ends, when you make a Charisma check, you can replace the number you roll with a 15. Additionally, no matter what you say, magic that would determine if you are telling the truth indicates that you are being truthful.', '', 'phb 245', 'Self', 'V', '', 'no', '1 hour', 'no', '1 action', '8th-level', 'Transmutation', 'Bard|Warlock', '', '', '', '', ''),
(163, 'Globe of Invulnerability', 'An immobile, faintly shimmering barrier springs into existence in a 10-foot radius around you and remains for the duration.Any spell of 5th level or lower cast from outside the barrier can’t affect creatures or objects within it, even if the spell is cast using a higher level spell slot. Such a spell can target creatures and objects within the barrier, but the spell has no effect on them. Similarly, the area within the barrier is excluded from the areas affected by such spells.', 'When you cast this spell using a spell slot of 7th level or higher, the barrier blocks spells of one level higher for each slot level above 6th.', 'phb 245', 'Self', 'V|S|M', 'A glass or crystal bead that shatters when the spell ends.', 'no', 'Up to 1 minute', 'yes', '1 action', '6th-level', 'Abjuration', 'Sorcerer|Wizard', '', '', '', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(164, 'Glyph of Warding', 'When you cast this spell, you enter a glyph that hurt other creatures, either on a surface (like a table or a portion of a floor or wall) or inside an object that can be closed (like a book a parchment or cabinet) to hide the glyph. If you opt for a surface, the glyph can cover an area of ??10 feet or less in diameter. If you select an object, it must remain in place. If the object is moved to over 10 feet from where the spell was spell casts, the glyph breeze and the spell expires without being triggered.The glyph is virtually invisible and roll Intelligence (Investigation) against the fate of your save DC is required to find out.You determine the shutter glyph while casting the spell. For the glyphs inscribed on a surface, the triggers are typically hit or stand on a glyph remove an object placed on the glyph, approach at a certain distance of the glyph or manipulate an object on which is inscribed the glyph. For the glyphs inscribed in an object, triggers are typically open the object, approaching at a distance from the object, seen or read the glyph. Once the glyph is triggered, the spell ends.You can refine the trigger conditions so that the spell will work only in certain circumstances or in physical attributes (height or weight), the creature type (eg, only aberrations or the Dark Elves trigger the glyph) or alignment. You can also determine the conditions for certain creatures do not trigger the glyph, using a password, for example.When you sign the glyph, make a choice between the explosive runes or glyph fate.<br /><strong>Explosive runes.</strong> When triggered, magical energy springs from the glyph in a 20-foot-radius sphere centered on the glyph. The sphere bypasses the corners. Each creature in the area must make a dexterity saving throw or it suffers 5d8 acid damage, lightning, fire, cold or thunder (to be determined during the creation of the glyph). If successful, the damage is halved.<br /><strong>Sort glyph.</strong> You can store a level of 3 or less prepared spell in the glyph to chant during the creation of the glyph. The spell must target one creature or area. The stored spell has no immediate effect when spell casts that way. When the glyph is activated, the stored spell spell casts. If the spell is a target, it will target the creature that triggered the glyph. If the spell affects an area, the area is centered on that creature. If the spell invokes hostile creatures or creates sharp objects or traps, they also appear close as possible to the intruder and attack. If the spell requires concentration, it persists for the duration of the spell.', 'When you cast this spell using a 4 or higher is level, the damage explosive runes increased by 1d8 for each level of top slot 3. If you create a glyph spell, you may store a spell whose level is equivalent or less to spell slot used for the custody of the glyph.', 'phb 245', 'Touch', 'V|S|M', 'Incense and powdered diamond worth at least 200 gp, the spell consumes.', 'no', 'Until dispelled', 'no', '1 hour', '3rd-level', 'Abjuration', 'Bard|Cleric|Wizard', '', '', '', '', ''),
(165, 'Grasping Vine', '', '', 'phb 246', '30 ft.', 'V|S', '', 'no', '1 minute', 'yes', '1 bonus action', '4th-level', 'Conjuration', 'Druid|Ranger', '', '', 'Nature', '', ''),
(166, 'Grease', 'Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration.When the grease appears, each creature standing in its area must succeed on a dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a dexterity saving throw or fall prone.', '', 'phb 246', '60 feet', 'V|S|M', 'A bit of pork rind or butter.', 'no', '1 minute', 'no', '1 action', '1st-level', 'Conjuration', 'Wizard', '', '', '', '', ''),
(167, 'Greater Invisibility', 'You or a creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target’s person.', '', 'phb 246', 'Touch', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Illusion', 'Bard|Druid|Sorcerer|Warlock|Wizard', '', 'Underdark', '', '', 'Archfey'),
(168, 'Greater Restoration', 'You imbue a creature you touch with positive energy to undo a debilitating effect. You can reduce the target’s exhaustion level by one, or end one of the following effects on the target:- One effect that charmed or petrified the target- One curse, including the target’s attunement to a cursed magic item- Any reduction to one of the target’s ability scores- One effect reducing the target’s hit point maximum', '', 'phb 246', 'Touch', 'V|S|M', 'Diamond dust worth at least 100gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Abjuration', 'Bard|Cleric|Druid', '', '', '', '', ''),
(169, 'Guards and Wards', 'You create a ward that protects up to 2,500 square feet of floor space (an area 50 feet square, or one hundred 5-foot squares or twenty-five 10-foot squares). The warded area can be up to 20 feet tall, and shaped as you desire. You can ward several stories of a stronghold by dividing the area among them, as long as you can walk into each contiguous area while you are casting the spell.When you cast this spell, you can specify individuals that are unaffected by any or all of the effects that you choose. You can also specify a password that, when spoken aloud, makes the speaker immune to these effects.Guards and wards creates the following effects within the warded area.<br /><strong>Corridors.</strong> Fog fills all the warded corridors, making them heavily obscured. In addition, at each intersection or branching passage offering a choice of direction, there is a 50 percent chance that a creature other than you will believe it is going in the opposite direction from the one it chooses.<br /><strong>Doors.</strong> All doors in the warded area are magically locked, as if sealed by an arcane lock spell. In addition, you can cover up to ten doors with an illusion (equivalent to the illusory object function of the minor illusion spell) to make them appear as plain sections of wall. <br /><strong>Stairs.</strong> Webs fill all stairs in the warded area from top to bottom, as the web spell. These strands regrow in 10 minutes if they are burned or torn away while guards and wards lasts.<br /><strong>Other Spell Effect.</strong> You can place your choice of one of the following magical effects within the warded area of the stronghold.- Place dancing lights in four corridors. You can design nate a simple program that the lights repeat as long as guards and wards lasts.- Place magic mouth in two locations.- Place stinking cloud in two locations. The vapors appear in the places you designate; they return within 10 minutes if dispersed by wind while guards and wards lasts.- Place a constant gust of wind in one corridor or room.- Place a suggestion in one location. You select an area of up to 5 feet square, and any creature that enters or passes through the area receives the suggestion mentally.The whole warded area radiates magic. A dispel magic cast on a specific effect, if successful, removes only that effect.You can create a permanently guarded and warded structure by casting this spell there every day for one year.', '', 'phb 248', 'Touch', 'V|S|M', 'Burning incense, a small measure of brimstone and oil, a knotted string, a small amount of umber hulk blood, and a small silver rod worth at least 10 gp.', 'no', '24 hours', 'no', '10 minutes', '6th-level', 'Abjuration', 'Bard|Wizard', '', '', '', '', ''),
(170, 'Guidance', 'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one ability check of its choice. It can roll the die before or after making the ability check. The spell then ends.', '', 'phb 248', 'Touch', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', 'Cantrip', 'Divination', 'Cleric|Druid', '', '', '', '', ''),
(171, 'Guiding Bolt', 'A flash of light streaks toward a creature of your choice within range. Make a ranged spell attack against the target. On a hit, the target takes 4d6 radiant damage, and the next attack roll made against this target before the end of your next turn has advantage, thanks to the mystical dim light glittering on the target until then.', 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.', 'phb 248', '120 feet', 'V|S', '', 'no', '1 round', 'no', '1 action', '1st-level', 'Evocation', 'Cleric', '', '', '', '', ''),
(172, 'Gust of Wind', 'A line of strong wind 60 feet long and 10 feet wide blasts from you in a direction you choose for the spell&lsquo;s duration. Each creature that starts its turn in the line must succeed on a strength saving throw or be pushed 15 feet away from you in a direction following the line.Any creature in the line must spend 2 feet of movement for every 1 foot it moves when moving closer to you.The gust disperses gas or vapor, and it extinguishes candles, torches, and similar unprotected flames in the area. It causes protected flames, such as those of lanterns, to dance wildly and has a 50 percent chance to extinguish them.As a bonus action on each of your turns before the spell ends, you can change the direction in which the line blasts from you.', '', 'phb 248', 'Self', 'V|S|M', 'A legume seed.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Evocation', 'Cleric|Druid|Sorcerer|Wizard', '', '', 'Tempest', '', ''),
(173, 'Hail of Thorns', '', 'Damage increases by 1d10 for each slot level above 1st to a maximum of 6d10.', 'phb 249', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Conjuration', 'Ranger', '', '', '', '', ''),
(174, 'Hallow', 'You touch a point and infuse an area around it with holy (or unholy) power. The area can have a radius up to 60 feet, and the spell fails if the radius includes an area already under the effect a hallow spell. The affected area is subject to the following effects.First, celestials, elementals, fey, fiends, and undead can’t enter the area, nor can such creatures charm, frighten, or possess creatures within it. Any creature charmed, frightened, or possessed by such a creature is no longer charmed, frightened, or possessed upon entering the area. You can exclude one or more of those types of creatures from this effect.Second, you can bind an extra effect to the area. Choose the effect from the following list, or choose an effect offered by the DM. Some of these effects apply to creatures in the area; you can designate whether the effect applies to all creatures, creatures that follow a specific deity or leader, or creatures of a specific sort, such as ores or trolls. When a creature that would be affected enters the spell’s area for the first time on a turn or starts its turn there, it can make a charisma saving throw. On a success, the creature ignores the extra effect until it leaves the area.<br /><strong>Courage.</strong> Affected creatures can’t be frightened while in the area.<br /><strong>Darkness.</strong> Darkness fills the area. Normal light, as well as magical light created by spells of a lower level than the slot you used to cast this spell, can’t illuminate the area.<br /><strong>Daylight.</strong> Bright light fills the area. Magical darkness created by spells of a lower level than the slot you used to cast this spell can’t extinguish the light.<br /><strong>Energy Protection.</strong> Affected creatures in the area have resistance to one damage type of your choice, except for bludgeoning, piercing, or slashing.<br /><strong>Energy Vulnerability.</strong> Affected creatures in the area have vulnerability to one damage type of your choice, except for bludgeoning, piercing, or slashing.<br /><strong>Everlasting Rest.</strong> Dead bodies interred in the area can’t be turned into undead.<br /><strong>Extradimensional Interference.</strong> Affected creatures can’t move or travel using teleportation or by extradimensional or interplanar means.<br /><strong>Fear.</strong> Affected creatures are frightened while in the area.<br /><strong>Silence.</strong> No sound can emanate from within the area, and no sound can reach into it.<br /><strong>Tongues.</strong> Affected creatures can communicate with any other creature in the area, even if they don’t share a common language.', '', 'phb 249', 'Touch', 'V|S|M', 'Herbs, oils, and incense worth at least 1,000 gp, which the spell consumes.', 'no', 'Until dispelled', 'no', '24 hours', '5th-level', 'Evocation', 'Cleric|Warlock', '', '', '', '', 'Fiend'),
(175, 'Hallucinatory Terrain', 'The tactile characteristics of the terrain are unchanged, so creatures entering the area are likely to see through the illusion. If the difference isn’t obvious by touch, a creature carefully examining the illusion can attempt an Intelligence (Investigation) check against your spell save DC to disbelieve it. A creature who discerns the illusion for what it is, sees it as a vague image superimposed on the terrain.', '', 'phb 249', '300 feet', 'V|S|M', 'A stone, a twig, and a bit of green plant.</p><p>You make natural terrain in a 150-foot cube in range look, sound, and smell like some other sort of natural terrain. Thus, open fields or a road can be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road. Manufactured structures, equipment, and creatures within the area aren’t changed in appearance.', 'no', '24 hours', 'no', '10 minutes', '4th-level', 'Illusion', 'Bard|Druid|Warlock|Wizard', '', 'Desert', '', '', ''),
(176, 'Harm', 'You unleash a virulent disease on a creature that you can see within range. The target must make a constitution saving throw. On a failed save, it takes 14d6 necrotic damage, or half as much damage on a successful save. The damage can’t reduce the target’s hit points below 1. If the target fails the saving throw, its hit point maximum is reduced for 1 hour by an amount equal to the necrotic damage it took. Any effect that removes a disease allows a creature’s hit point maximum to return to normal before that time passes.', '', 'phb 249', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Necromancy', 'Cleric', '', '', '', '', ''),
(177, 'Haste', 'Choose a willing creature that you can see within range. Until the spell ends, the target’s speed is doubled, it gains a +2 bonus to AC, it has advantage on dexterity saving throws, and it gains an additional action on each of its turns. That action can be used only to take the Attack (one weapon attack only), Dash, Disengage, Hide, or Use an Object action.When the spell ends, the target can’t move or take actions until after its next turn, as a wave of lethargy sweeps over it.', '', 'phb 250', '30 feet', 'V|S|M', 'A shaving of licorice root.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Transmutation', 'Druid|Paladin|Sorcerer|Wizard', '', 'Grassland', '', 'Vengeance', ''),
(178, 'Heal', 'Choose a creature that you can see within range. A surge of positive energy washes through the creature, causing it to regain 70 hit points. This spell also ends blindness, deafness, and any diseases affecting the target. This spell has no effect on constructs or undead.', 'When you cast this spell using a spell slot of 7th level or higher, the amount of healing increases by 10 for each slot level above 6th.', 'phb 250', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Evocation', 'Cleric|Druid', '', '', '', '', ''),
(179, 'Healing Word', 'A creature of your choice that you can see within range regains hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs.', 'When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d4 for each slot level above 1st.', 'phb 250', '60 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 bonus action', '1st-level', 'Evocation', 'Bard|Cleric|Druid', '', '', '', '', ''),
(180, 'Heat Metal', 'Choose a manufactured metal object, such as a metal weapon or a suit of heavy or medium metal armor, that you can see within range. You cause the object to glow red-hot. Any creature in physical contact with the object takes 2d8 fire damage when you cast the spell. Until the spell ends, you can use a bonus action on each of your subsequent turns to cause this damage again.If a creature is holding or wearing the object and takes the damage from it, the creature must succeed on a constitution saving throw or drop the object if it can. If it doesn’t drop the object, it has disadvantage on attack rolls and ability checks until the start of your next turn.', 'When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.', 'phb 250', '60 feet', 'V|S|M', 'A piece of iron and a flame.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Transmutation', 'Bard|Druid', '', '', '', '', ''),
(181, 'Hellish Rebuke', '', 'Damage increases by 1d10 for each slot level above 1st.', 'phb 250', '60 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 reaction (take damage)', '1st-level', 'Evocation', 'Warlock', '', '', '', 'Oathbreaker', ''),
(182, 'Heroes&lsquo; Feast', 'You bring forth a great feast, including magnificent food and drink. The feast takes 1 hour to consume and disappears at the end of that time, and the beneficial effects don’t set in until this hour is over. Up to twelve other creatures can partake of the feast.A creature that partakes of the feast gains several benefits. The creature is cured of all diseases and poison, becomes immune to poison and being frightened, and makes all wisdom saving throws with advantage. Its hit point maximum also increases by 2d10, and it gains the same number of hit points. These benefits last for 24 hours.', '', 'phb 250', '30 feet', 'V|S|M', 'A gem-encrusted bowl worth at least 1,000gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '10 minutes', '6th-level', 'Conjuration', 'Cleric|Druid', '', '', '', '', ''),
(183, 'Heroism', 'A willing creature you touch is imbued with bravery. Until the spell ends, the creature is immune to being frightened and gains temporary hit points equal to your spellcasting ability modifier at the start of each of its turns. When the spell ends, the target loses any remaining temporary hit points from this spell.', '', 'phb 250', 'Touch', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Enchantment', 'Bard|Paladin', '', '', '', '', ''),
(184, 'Hex', '', '3rd-4th level duration is 8 hours. 5th-level duration is 24 hours.', 'phb 251', '90 ft.', 'V|S', 'petrified eye of a newt', 'no', '1 hour', 'yes', '1 bonus action', '1st-level', 'Enchantment', 'Warlock', '', '', '', '', ''),
(185, 'Hideous Laughter', 'A creature of your choice that you can see within range perceives everything as hilariously funny and falls into fits of laughter if this spell affects it. The target must succeed on a wisdom saving throw or fall prone, becoming incapacitated and unable to stand up for the duration. A creature with an Intelligence score of 4 or less isn’t affected.At the end of each of its turns, and each time it takes damage, the target can make another wisdom saving throw. The target had advantage on the saving throw if it’s triggered by damage. On a success, the spell ends.', '', 'phb 280', '30 feet', 'V|S|M', 'Tiny tarts and a feather that is waved in the air.', 'no', 'Up to 1 minute', 'yes', '1 action', '1st-level', 'Enchantment', 'Bard|Warlock|Wizard', '', '', '', '', 'Great Old One'),
(186, 'Hold Monster', 'Choose a creature you can see and reach. The target must make a saving throw of Wisdom or be paralyzed for the duration of the spell. This spell has no effect against the undead. At the end of each round, the target can make a new saving throw of Wisdom. If successful, the spell ends for the creature.', 'When you cast this spell using a level 6 or higher location, you can target an additional creature for each level of location beyond the fifth. The creatures must be within 30 feet o f each other when you target them.', 'phb 251', '90 feet', 'V|S|M', 'A small piece of iron.', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Enchantment', 'Bard|Cleric|Paladin|Sorcerer|Warlock|Wizard', '', '', 'War', 'Vengeance', ''),
(187, 'Hold Person', 'Choose a humanoid that you can see within range. The target must succeed on a wisdom saving throw or be paralyzed for the duration. At the end of each of its turns, the target can make another wisdom saving throw. On a success, the spell ends on the target.', 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional humanoid for each slot level above 2nd. The humanoids must be within 30 feet of each other when you target them.', 'phb 251', '60 feet', 'V|S|M', 'A small, straight piece of iron.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Enchantment', 'Bard|Cleric|Druid|Paladin|Sorcerer|Warlock|Wizard', '', 'Arctic', '', 'Vengeance', ''),
(188, 'Holy Aura', 'Divine light washes out from you and coalesces in a soft radiance in a 30-foot radius around you. Creatures of your choice in that radius when you cast this spell shed dim light in a 5-foot radius and have advantage on all saving throws, and other creatures have disadvantage on attack rolls against them until the spell ends. In addition, when a fiend or an undead hits an affected creature with a melee attack, the aura flashes with brilliant light. The attacker must succeed on a constitution saving throw or be blinded until the spell ends.', '', 'phb 251', 'Self', 'V|S|M', 'A tiny reliquary worth at least 1,000gp containing a sacred relic, such as a scrap of cloth from a saint’s robe or a piece of parchment from a religious text.', 'no', 'Up to 1 minute', 'yes', '1 action', '8th-level', 'Abjuration', 'Cleric', '', '', '', '', ''),
(189, 'Hunger of Hadar', '', '', 'phb 251', '150 ft.', 'V|S|M', 'pickled octopus tentacle', 'no', '1 minute', 'yes', '1 action', '3rd-level', 'Conjuration', 'Warlock', '', '', '', '', ''),
(190, 'Hunter\'s Mark', '', '3rd-4th level duration is 8 hours. 5th-level duration is 24 hours.', 'phb 251', '90 ft.', 'V', '', 'no', '1 hour', 'yes', '1 bonus action', '1st-level', 'Divination', 'Sorcerer|Wizard', '', '', '', 'Vengence', ''),
(191, 'Hypnotic Pattern', 'You create a twisting pattern of colors that weaves through the air inside a 30-foot cube within range. The pattern appears for a moment and vanishes. Each creature in the area who sees the pattern must make a wisdom saving throw. On a failed save, the creature becomes charmed for the duration. While charmed by this spell, the creature is incapacitated and has a speed of 0.The spell ends for an affected creature if it takes any damage or if someone else uses an action to shake the creature out of its stupor.', '', 'phb 252', '120 feet', 'S|M', 'A glowing stick of incense or a crystal vial filled with phosphorescent material.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Illusion', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(192, 'Ice Storm', 'A hail of rock-hard ice pounds to the ground in a 20-foot-radius, 40-foot-high cylinder centered on a point within range. Each creature in the cylinder must make a dexterity saving throw. A creature takes 2d8 bludgeoning damage and 4d6 cold damage on a failed save, or half as much damage on a successful one.Hailstones turn the storm’s area of effect into difficult terrain until the end of your next turn.', 'When you cast this spell using a spell slot of 5th level or higher, the bludgeoning damage increases by 1d8 for each slot level above 4th.', 'phb 252', '300 feet', 'V|S|M', 'A pinch of dust and a few drops of water.', 'no', 'Instantaneous', 'no', '1 action', '4th-level', 'Evocation', 'Cleric|Druid|Paladin|Sorcerer|Wizard', '', 'Arctic', 'Tempest', 'Ancients', ''),
(193, 'Identify', 'You choose one object that you must touch throughout the casting of the spell. If it is a magic item or some other magic-imbued object, you learn its properties and how to use them, whether it requires attunement to use, and how many charges it has, if any. You learn whether any spells are affecting the item and what they are. If the item was created by a spell, you learn which spell created it.If you instead touch a creature throughout the casting, you learn what spells, if any, are currently affecting it.', '', 'phb 252', 'Touch', 'V|S|M', 'A pearl worth at least 100gp and an owl feather.', 'yes', 'Instantaneous', 'no', '1 minute', '1st-level', 'Divination', 'Bard|Cleric|Ritual Caster|Wizard', '', '', 'Knowledge', '', ''),
(194, 'Illusory Script', 'You write on parchment, paper, or some other suitable writing material and imbue it with a potent illusion that lasts for the duration.To you and any creatures you designate when you cast the spell, the writing appears normal, written in your hand, and conveys whatever meaning you intended when you wrote the text. To all others, the writing appears as if it were written in an unknown or magical script that is unintelligible. Alternatively, you can cause the writing to appear to be an entirely different message, written in a different hand and language, though the language must be one you know.Should the spell be dispelled, the original script and the illusion both disappear.A creature with truesight can read the hidden message.', '', 'phb 252', 'Touch', 'S|M', 'A lead-based ink worth at least 10gp, which this spell consumes.', 'yes', '10 days', 'no', '1 minute', '1st-level', 'Illusion', 'Bard|Ritual Caster|Warlock|Wizard', '', '', '', '', ''),
(195, 'Imprisonment', 'You create a magical restraint to hold a creature that you can see within range. The target must succeed on a wisdom saving throw or be bound by the spell; if it succeeds, it is immune to this spell if you cast it again. While affected by this spell, the creature doesn’t need to breathe, eat, or drink, and it doesn’t age. Divination spells can’t locate or perceive the target.When you cast the spell, you choose one of the following forms of imprisonment.Burial. The target is entombed far beneath the earth in a sphere of magical force that is just large enough to contain the target. Nothing can pass through the sphere, nor can any creature teleport or use planar travel to get into or out of it.The special component for this version of the spell is a small mithral orb.Chaining. Heavy chains, firmly rooted in the ground, hold the target in place. The target is restrained until the spell ends, and it can’t move or be moved by any means until then.The special component for this version of the spell is a fine chain of precious metal.Hedged Prison. The spell transports the target into a tiny demiplane that is warded against teleportation and planar travel. The demiplane can be a labyrinth, a cage, a tower, or any similar confined structure or area of your choice.The special component for this version of the spell is a miniature representation of the prison made from jade.Minimus Containment. The target shrinks to a height of 1 inch and is imprisoned inside a gemstone or similar object. Light can pass through the gemstone normally (allowing the target to see out and other creatures to see in), but nothing else can pass through, even by means of teleportation or planar travel. The gemstone can’t be cut or broken while the spell remains in effect.The special component for this version of the spell is a large, transparent gemstone, such as a corundum, diamond, or ruby.Slumber. The target falls asleep and can’t be awoken.The special component for this version of the spell consists of rare soporific herbs.Ending the Spell. During the casting of the spell, in any of its versions, you can specify a condition that will cause the spell to end and release the target. The condition can be as specific or as elaborate as you choose, but the DM must agree that the condition is reasonable and has a likelihood of coming to pass. The conditions can be based on a creature’s name, identity, or deity but otherwise must be based on observable actions or qualities and not based on intangibles such as level, class, or hit points.A dispel magic spell can end the spell only if it is cast as a 9th-level spell, targeting either the prison or the special component used to create it.You can use a particular special component to create only one prison at a time. If you cast the spell again using the same component, the target of the first casting is immediately freed from its binding.', '', 'phb 252', '30 feet', 'V|S|M', 'A vellum depiction or a carved statuette in the likeness of the target, and a special component that varies according to the version of the spell you choose, worth at least 500gp per Hit Die of the target.', 'no', 'Until dispelled', 'no', '1 minute', '9th-level', 'Abjuration', 'Warlock|Wizard', '', '', '', '', ''),
(196, 'Incendiary Cloud', 'A swirling cloud of smoke shot through with white-hot embers appears in a 20-foot-radius sphere centered on a point within range. The cloud spreads around corners and is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it.When the cloud appears, each creature in it must make a dexterity saving throw. A creature takes 10d8 fire damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell’s area for the first time on a turn or ends its turn there.The cloud moves 10 feet directly away from you in a direction that you choose at the start of each of your turns.', '', 'phb 253', '150 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '8th-level', 'Conjuration', 'Sorcerer|Wizard', '', '', '', '', ''),
(197, 'Inflict Wounds', 'Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage.', 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.', 'phb 253', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Necromancy', 'Cleric', '', '', '', '', ''),
(198, 'Insect Plague', 'Swarming, biting locusts fill a 20-foot-radius sphere centered on a point you choose within range. The sphere spreads around corners. The sphere remains for the duration, and its area is lightly obscured. The sphere&lsquo;s area is difficult terrain.When the area appears, each creature in it must make a constitution saving throw. A creature takes 4d10 piercing damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell&lsquo;s area for the first time on a turn or ends its turn there.', 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d10 for each slot level above 5th.', 'phb 254', '300 feet', 'V|S|M', 'A few grains of sugar, some kernels of grain, and a smear of fat.', 'no', 'Up to 10 minutes', 'yes', '1 action', '5th-level', 'Conjuration', 'Cleric|Druid|Sorcerer', '', 'Desert|Grassland|Swamp|Underdark', 'Nature|Tempest', '', ''),
(199, 'Instant Summons', 'You touch an object weighing 10 pounds or less whose longest dimension is 6 feet or less. The spell leaves an invisible mark on its surface and invisibly inscribes the name of the item on the sapphire you use as the material component. Each time you cast this spell, you must use a different sapphire.At any time thereafter, you can use your action to speak the item’s name and crush the sapphire. The item instantly appears in your hand regardless of physical or planar distances, and the spell ends.If another creature is holding or carrying the item, crushing the sapphire doesn’t transport the item to you, but instead you learn who the creature possessing the object is and roughly where that creature is located at that moment.Dispel magic or a similar effect successfully applied to the sapphire ends this spell’s effect.', '', 'phb 235', 'Touch', 'V|S|M', 'A sapphire worth 1,000 gp.', 'yes', 'Until dispelled', 'no', '1 minute', '6th-level', 'Conjuration', 'Ritual Caster|Wizard', '', '', '', '', ''),
(200, 'Invisibility', 'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target’s person. The spell ends for a target that attacks or casts a spell.', 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.', 'phb 254', 'Touch', 'V|S|M', 'An eyelash encased in gum arabic.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Illusion', 'Bard|Druid|Sorcerer|Warlock|Wizard', '', 'Grassland', '', '', ''),
(201, 'Irresistible Dance', 'Choose one creature that you can see within range. The target begins a comic dance in place: shuffling, tapping its feet, and capering for the duration. Creatures that can’t be charmed are immune to this spell.A dancing creature must use all its movement to dance without leaving its space and has disadvantage on dexterity saving throws and attack rolls. While the target is affected by this spell, other creatures have advantage on attack rolls against it. As an action, a dancing creature makes a wisdom saving throw to regain control of itself. On a successful save, the spell ends.', '', 'phb 264', '30 feet', 'V', '', 'no', 'Up to 1 minute', 'yes', '1 action', '6th-level', 'Enchantment', 'Bard|Wizard', '', '', '', '', ''),
(202, 'Jump', 'You touch a creature. The creature’s jump distance is tripled until the spell ends.', '', 'phb 254', 'Touch', 'V|S|M', 'A grasshopper’s hind leg.', 'no', '1 minute', 'no', '1 action', '1st-level', 'Transmutation', 'Druid|Ranger|Sorcerer|Wizard', '', '', '', '', ''),
(203, 'Knock', 'Choose an object that you can see within range. The object can be a door, a box, a chest, a set of manacles, a padlock, or another object that contains a mundane or magical means that prevents access.A target that is held shut by a mundane lock or that is stuck or barred becomes unlocked, unstuck, or unbarred. If the object has multiple locks, only one of them is unlocked.If you choose a target that is held shut with arcane lock, that spell is suppressed for 10 minutes, during which time the target can be opened and shut normally.When you cast the spell, a loud knock, audible from as far away as 300 feet, emanates from the target object.', '', 'phb 254', '60 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Transmutation', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(204, 'Legend Lore', 'Name or describe a person, place or object. The fate brings to mind a brief and summary information about the thing you named. Information can be presented as tales of forgotten history or even secret information that have never been revealed. If the thing you named is not legendary resonance, you get no information. More information you already have about the thing, more precise and detailed the information you will receive.What you learn is accurate but can be hidden in figurative language. For example, if you have a mysterious magical ax in your hand, the spell can reveal this information: \"Woe to the wicked that affects his hands the ax because the handle decide those of malignant Only a true child of the stone magnet. and loved Moradin could awaken the true power of this ax, and only with the sacred Rudnogg word on the lips.\"', '', 'phb 254', 'Self', 'V|S|M', 'Incense worth 250 inches that fate consumes and four sticks of ivory worth 50 gp each.', 'no', 'Instantaneous', 'no', '10 minutes', '5th-level', 'Divination', 'Bard|Cleric|Wizard', '', '', 'Knowledge', '', ''),
(205, 'Lesser Restoration', 'You touch a creature and can end either one disease or one condition afflicting it. The condition can be blinded, deafened, paralyzed, or poisoned.', '', 'phb 255', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Abjuration', 'Bard|Cleric|Druid|Paladin|Ranger', '', '', 'Life', 'Devotion', ''),
(206, 'Levitate', 'One creature or object of your choice that you can see within range rises vertically, up to 20 feet, and remains suspended there for the duration. The spell can levitate a target that weighs up to 500 pounds. An unwilling creature that succeeds on a constitution saving throw is unaffected.The target can move only by pushing or pulling against a fixed object or surface within reach (such as a wall or a ceiling), which allows it to move as if it were climbing. You can change the target’s altitude by up to 20 feet in either direction on your turn. If you are the target, you can move up or down as part of your move. Otherwise, you can use your action to move the target, which must remain within the spell’s range.When the spell ends, the target floats gently to the ground if it is still aloft.', '', 'phb 255', '60 feet', 'V|S|M', 'Either a small leather loop or a piece of golden wire bent into a cup shape with a long shank on one end.', 'no', 'Up to 10 minutes', 'yes', '1 action', '2nd-level', 'Transmutation', 'Sorcerer|Wizard', '', '', '', '', ''),
(207, 'Light', 'You touch one object that is no larger than 10 feet in any dimension. Until the spell ends, the object sheds bright light in a 20-foot radius and dim light for an additional 20 feet. The light can be colored as you like. Completely covering the object with something opaque blocks the light. The spell ends if you cast it again or dismiss it as an action.If you target an object held or worn by a hostile creature, that creature must succeed on a dexterity saving throw to avoid the spell.', '', 'phb 255', 'Touch', 'V|M', 'A firefly or phosphorescent moss.', 'no', '1 hour', 'no', '1 action', 'Cantrip', 'Evocation', 'Bard|Cleric|Sorcerer|Wizard', '', '', '', '', ''),
(208, 'Lightning Arrow', '', 'Damage increases by 1d8 for each slot above 3rd.', 'phb 255', 'Self', 'V|S', '', 'no', '1 minute', 'yes', '1 bonus action', '3rd-level', 'Transmutation', 'Ranger|Sorcerer', '', '', '', '', ''),
(209, 'Lightning Bolt', 'A stroke of lightning forming a line 100 feet long and 5 feet wide blasts out from you in a direction you choose. Each creature in the line must make a dexterity saving throw. A creature takes 8d6 lightning damage on a failed save, or half as much damage on a successful one.The lightning ignites flammable objects in the area that aren’t being worn or carried.', 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.', 'phb 255', 'Self', 'V|S|M', 'A bit of fur and a rod of amber, crystal, or glass.', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Evocation', 'Druid|Sorcerer|Wizard', '', 'Mountain', '', '', ''),
(210, 'Locate Animals or Plants', 'Describe or name a specific kind of beast or plant. Concentrating on the voice of nature in your surroundings, you learn the direction and distance to the closest creature or plant of that kind within 5 miles, if any are present.', '', 'phb 256', 'Self', 'V|S|M', 'A bit of fur from a bloodhound.', 'yes', 'Instantaneous', 'no', '1 action', '2nd-level', 'Divination', 'Bard|Druid|Ranger|Ritual Caster', '', '', '', '', ''),
(211, 'Locate Creature', 'Describe or name a creature that is familiar to you. You sense the direction to the creature’s location, as long as that creature is within 1,000 feet of you. If the creature is moving, you know the direction of its movement.The spell can locate a specific creature known to you, or the nearest creature of a specific kind (such as a human or a unicorn), so long as you have seen such a creature up close—within 30 feet—at least once. If the creature you described or named is in a different form, such as being under the effects of a polymorph spell, this spell doesn’t locate the creature.This spell can’t locate a creature if running water at least 10 feet wide blocks a direct path between you and the creature.', '', 'phb 256', 'Self', 'V|S|M', 'A bit of fur from a bloodhound.', 'no', 'Up to 1 hour', 'yes', '1 action', '4th-level', 'Divination', 'Bard|Cleric|Druid|Paladin|Ranger|Wizard', '', 'Swamp', '', '', ''),
(212, 'Locate Object', 'Describe or name an object that is familiar to you. You sense the direction to the object’s location, as long as that object is within 1,000 feet of you. If the object is in motion, you know the direction of its movement.The spell can locate a specific object known to you, as long as you have seen it up close—within 30 feet—at least once. Alternatively, the spell can locate the nearest object of a particular kind, such as a certain kind of apparel, jewelry, furniture, tool, or weapon.This spell can’t locate an object if any thickness of lead, even a thin sheet, blocks a direct path between you and the object.', '', 'phb 256', 'Self', 'V|S|M', 'A forked twig.', 'no', 'Up to 10 minutes', 'yes', '1 action', '2nd-level', 'Divination', 'Bard|Cleric|Druid|Paladin|Ranger|Wizard', '', '', '', '', ''),
(213, 'Longstrider', 'You touch a creature. The target’s speed increases by 10 feet until the spell ends.', 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each spell slot above 1st.', 'phb 256', 'Touch', 'V|S|M', 'A pinch of dirt.', 'no', '1 hour', 'no', '1 action', '1st-level', 'Transmutation', 'Bard|Druid|Ranger|Wizard', '', '', '', '', ''),
(214, 'Mage Armor', 'You touch a willing creature who isn’t wearing armor, and a protective magical force surrounds it until the spell ends. The target’s base AC becomes 13 + its Dexterity modifier. The spell ends if the target dons armor or if you dismiss the spell as an action.', '', 'phb 256', 'Touch', 'V|S|M', 'A piece of cured leather.', 'no', '8 hours', 'no', '1 action', '1st-level', 'Abjuration', 'Sorcerer|Wizard', '', '', '', '', ''),
(215, 'Mage Hand', 'A spectral, floating hand appears at a point you choose within range. The hand lasts for the duration or until you dismiss it as an action. The hand vanishes if it is ever more than 30 feet away from you or if you cast this spell again.You can use your action to control the hand. You can use the hand to manipulate an object, open an unlocked door or container, stow or retrieve an item from an open container, or pour the contents out of a vial. You can move the hand up to 30 feet each time you use it.The hand can’t attack, activate magic items, or carry more than 10 pounds.', '', 'phb 256', '30 feet', 'V|S', '', 'no', '1 minute', 'no', '1 action', 'Cantrip', 'Conjuration', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(216, 'Magic Circle', 'Choose one or more of the following types of creatures: celestials, elementals, fey, fiends, or undead. The circle affects a creature of the chosen type in the following ways:- The creature can’t willingly enter the cylinder by nonmagical means. If the creature tries to use teleportation or interplanar travel to do so, it must first succeed on a charisma saving throw.- The creature has disadvantage on attack rolls against targets within the cylinder.- Targets within the cylinder can’t be charmed, frightened, or possessed by the creature.When you cast this spell, you can elect to cause its magic to operate in the reverse direction, preventing a creature of the specified type from leaving the cylinder and protecting targets outside it.', 'When you cast this spell using a spell slot of 4th level or higher, the duration increases by 1 hour for each slot level above 3rd.', 'phb 256', '10 feet', 'V|S|M', 'Holy water or powdered silver and iron worth at least 100 gp, which the spell consumes.', 'no', '1 hour', 'no', '1 minute', '3rd-level', 'Abjuration', 'Cleric|Paladin|Warlock|Wizard', '', '', '', '', ''),
(217, 'Magic Jar', 'Your body falls into a catatonic state as your soul leaves it and enters the container you used for the spell&lsquo;s material component. While your soul inhabits the container, you are aware of your surroundings as if you were in the container&lsquo;s space. You can&lsquo;t move or use reactions. The only action you can take is to project your soul up to 100 feet out of the container, either returning to your living body (and ending the spell) or attempting to possess a humanoids body.You can attempt to possess any humanoid within 100 feet of you that you can see (creatures warded by a protection from evil and good or magic circle spell can&lsquo;t be possessed). The target must make a charisma saving throw. On a failure, your soul moves into the target&lsquo;s body, and the target&lsquo;s soul becomes trapped in the container. On a success, the target resists your efforts to possess it, and you can&lsquo;t attempt to possess it again for 24 hours.Once you possess a creature&lsquo;s body, you control it. Your game statistics are replaced by the statistics of the creature, though you retain your alignment and your Intelligence, Wisdom, and Charisma scores. You retain the benefit of your own class features. If the target has any class levels, you can&lsquo;t use any of its class features.Meanwhile, the possessed creature&lsquo;s soul can perceive from the container using its own senses, but it can&lsquo;t move or take actions at all.While possessing a body, you can use your action to return from the host body to the container if it is within 100 feet of you, returning the host creature&lsquo;s soul to its body. If the host body dies while you&lsquo;re in it, the creature dies, and you must make a charisma saving throw against your own spellcasting DC. On a success, you return to the container if it is within 100 feet of you. Otherwise, you die.If the container is destroyed or the spell ends, your soul immediately returns to your body. If your body is more than 100 feet away from you or if your body is dead when you attempt to return to it, you die. If another creature&lsquo;s soul is in the container when it is destroyed, the creature&lsquo;s soul returns to its body if the body is alive and within 100 feet. Otherwise, that creature dies.When the spell ends, the container is destroyed.', '', 'phb 257', 'Self', 'V|S|M', 'A gem, crystal, reliquary, or some other ornamental container worth at least 500 gp.', 'no', 'Until dispelled', 'no', '1 minute', '6th-level', 'Necromancy', 'Wizard', '', '', '', '', ''),
(218, 'Magic Missile', 'You create three glowing darts of magical force. Each dart hits a creature of your choice that you can see within range. A dart deals 1d4 + 1 force damage to its target. The darts all strike simultaneously, and you can direct them to hit one creature or several.', 'When you cast this spell using a spell slot of 2nd level or higher, the spell creates one more dart for each slot level above 1st.', 'phb 257', '120 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(219, 'Magic Mouth', 'You plant a message to an object in the range of the spell. The message is verbalized when the trigger conditions are met. Choose an object that you see, and that is not worn or carried by another creature. Then say the message, which should not exceed 25 words but listening can take up to 10 minutes. Finally, establish the circumstances that trigger the spell to deliver your message.When these conditions are satisfied, a magical mouth appears on the object and it articulates the message imitating your voice, the same tone used during implantation of the message. If the selected object has a mouth or something that approaches such as the mouth of a statue, the magic mouth come alive at this point, giving the illusion that the words come from the mouth of the object.When you cast this spell, you may decide that the spell ends when the message is delivered or it can persist and repeat the message whenever circumstances occur.The triggering circumstance can be as general or as detailed as you like, though it must be based on visual or audible conditions that occur within 30 feet of the object. For example, you could instruct the mouth to speak when any creature moves within 30 feet of the object or when a silver bell rings within 30 feet of it.', '', 'phb 257', '30 feet', 'V|S|M', 'A honeycomb and jade dust of at least 10 inches, the spell consumes.', 'yes', 'Until dispelled', 'no', '1 minute', '2nd-level', 'Illusion', 'Bard|Ritual Caster|Wizard', '', '', '', '', ''),
(220, 'Magic Weapon', 'You touch a nonmagical weapon. Until the spell ends, that weapon becomes a magic weapon with a +1 bonus to attack rolls and damage rolls.', 'When you cast this spell using a spell slot of 4th level or higher, the bonus increases to +2. When you use a spell slot of 6th level or higher, the bonus increases to +3.', 'phb 257', 'Touch', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 bonus action', '2nd-level', 'Transmutation', 'Cleric|Paladin|Wizard', '', '', 'War', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(221, 'Magnificent Mansion', 'You conjure an extradimensional dwelling in range that lasts for the duration. You choose where its one entrance is located. The entrance shimmers faintly and is 5 feet wide and 10 feet tall. You and any creature you designate when you cast the spell can enter the extradimensional dwelling as long as the portal remains open. You can open or close the portal if you are within 30 feet of it. While closed, the portal is invisible.Beyond the portal is a magnificent foyer with numerous chambers beyond. The atmosphere is clean, fresh, and warm.You can create any floor plan you like, but the space can’t exceed 50 cubes, each cube being 10 feet on each side. The place is furnished and decorated as you choose. It contains sufficient food to serve a nine course banquet for up to 100 people. A staff of 100 near-transparent servants attends all who enter. You decide the visual appearance of these servants and their attire. They are completely obedient to your orders. Each servant can perform any task a normal human servant could perform, but they can’t attack or take any action that would directly harm another creature. Thus the servants can fetch things, clean, mend, fold clothes, light fires, serve food, pour wine, and so on. The servants can go anywhere in the mansion but can’t leave it. Furnishings and other objects created by this spell dissipate into smoke if removed from the mansion. When the spell ends, any creatures inside the extradimensional space are expelled into the open spaces nearest to the entrance.', '', 'phb 261', '300 feet', 'V|S|M', 'A miniature portal carved from ivory, a small piece of polished marble, and a tiny silver spoon, each item worth at least 5 gp.', 'no', '24 hours', 'no', '1 minute', '7th-level', 'Conjuration', 'Bard|Wizard', '', '', '', '', ''),
(222, 'Major Image', 'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 20-foot cube. The image appears at a spot that you can see within range and lasts for the duration. It seems completely real, including sounds, smells, and temperature appropriate to the thing depicted. You can’t create sufficient heat or cold to cause damage, a sound loud enough to deal thunder damage or deafen a creature, or a smell that might sicken a creature (like a troglodyte’s stench).As long as you are within range of the illusion, you can use your action to cause the image to move to any other spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking. Similarly, you can cause the illusion to make different sounds at different times, even making it carry on a conversation, for example.Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and its other sensory qualities become faint to the creature.', 'When you cast this spell using a spell slot of 6th level or higher, the spell lasts until dispelled, without requiring your concentration.', 'phb 258', '120 feet', 'V|S|M', 'A bit of fleece.', 'no', 'Up to 10 minutes', 'yes', '1 action', '3rd-level', 'Illusion', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(223, 'Mass Cure Wounds', 'A wave of healing energy washes out from a point of your choice within range. Choose up to six creatures in a 30-foot-radius sphere centered on that point. Each target regains hit points equal to 3d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.', 'When you cast this spell using a spell slot of 6th level or higher, the healing increases by 1d8 for each slot level above 5th.', 'phb 258', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '5th-level', 'Conjuration', 'Bard|Cleric|Druid', '', '', 'Life', '', ''),
(224, 'Mass Heal', 'A flood of healing energy flows from you into injured creatures around you. You restore up to 700 hit points, divided as you choose among any number of creatures that you can see within range. Creatures healed by this spell are also cured of all diseases and any effect making them blinded or deafened. This spell has no effect on undead or constructs.', '', 'phb 258', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Conjuration', 'Cleric', '', '', '', '', ''),
(225, 'Mass Healing Word', 'As you call out words of restoration, up to six creatures of your choice that you can see within range regain hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs.', 'When you cast this spell using a spell slot of 4th level or higher, the healing increases by 1d4 for each slot level above 3rd.', 'phb 258', '60 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 bonus action', '3rd-level', 'Evocation', 'Cleric', '', '', '', '', ''),
(226, 'Mass Suggestion', 'You suggest a course of activity (limited to a sentence or two) and magically influence up to twelve creatures of your choice that you can see within range and that can hear and understand you. Creatures that can’t be charmed are immune to this effect. The suggestion must be worded in such a manner as to make the course of action sound reasonable. Asking the creature to stab itself, throw itself onto a spear, immolate itself, or do some other obviously harmful act automatically negates the effect of the spell.Each target must make a wisdom saving throw. On a failed save, it pursues the course of action you described to the best of its ability. The suggested course of action can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do.You can also specify conditions that will trigger a special activity during the duration. For example, you might suggest that a group of soldiers give all their money to the first beggar they meet. If the condition isn’t met before the spell ends, the activity isn’t performed.If you or any of your companions damage a creature affected by this spell, the spell ends for that creature.', 'When you cast this spell using a 7th-level spell slot, the duration is 10 days. When you use an 8th-level spell slot, the duration is 30 days. When you use a 9th-level spell slot, the duration is a year and a day.', 'phb 258', '60 feet', 'V|M', 'A snake’s tongue and either a bit of honeycomb or a drop of sweet oil.', 'no', '24 hours', 'no', '1 action', '6th-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(227, 'Maze', 'You banish a creature that you can see within range into a labyrinthine demiplane. The target remains there for the duration or until it escapes the maze.The target can use its action to attempt to escape. When it does so, it makes a DC 20 Intelligence check. If it succeeds, it escapes, and the spell ends (a minotaur or goristro demon automatically succeeds).When the spell ends, the target reappears in the space it left or, if that space is occupied, in the nearest unoccupied space.', '', 'phb 258', '60 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '8th-level', 'Conjuration', 'Wizard', '', '', '', '', ''),
(228, 'Meld into Stone', 'You step into a stone object or surface large enough to fully contain your body, melding yourself and all the equipment you carry with the stone for the duration. Using your movement, you step into the stone at a point you can touch. Nothing of your presence remains visible or otherwise detectable by nonmagical senses.While merged with the stone, you can’t see what occurs outside it, and any Wisdom (Perception) checks you make to hear sounds outside it are made with disadvantage. You remain aware of the passage of time and can cast spells on yourself while merged in the stone. You can use your movement to leave the stone where you entered it, which ends the spell. You otherwise can’t move.Minor physical damage to the stone doesn’t harm you, but its partial destruction or a change in its shape (to the extent that you no longer fit within it) expels you and deals 6d6 bludgeoning damage to you. The stone’s complete destruction (or transmutation into a different substance) expels you and deals 50 bludgeoning damage to you. If expelled, you fall prone in an unoccupied space closest to where you first entered.', '', 'phb 259', 'Touch', 'V|S', '', 'yes', '8 hours', 'no', '1 action', '3rd-level', 'Transmutation', 'Cleric|Druid|Ritual Caster', '', 'Mountain', '', '', ''),
(229, 'Mending', 'This spell repairs a single break or tear in an object you touch, such as a broken key, a torn cloak, or a leaking wineskin. As long as the break or tear is no longer than 1 foot in any dimension, you mend it, leaving no trace of the former damage.This spell can physically repair a magic item or construct, but the spell can’t restore magic to such an object.', '', 'phb 259', 'Touch', 'V|S|M', 'Two lodestones.', 'no', 'Instantaneous', 'no', '1 minute', 'Cantrip', 'Transmutation', 'Cleric|Bard|Druid|Sorcerer|Wizard', '', '', '', '', ''),
(230, 'Message', 'You point your finger toward a creature within range and whisper a message. The target (and only the target) hears the message and can reply in a whisper that only you can hear.You can cast this spell through solid objects if you are familiar with the target and know it is beyond the barrier. Magical silence, 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood blocks the spell. The spell doesn’t have to follow a straight line and can travel freely around corners or through openings.', '', 'phb 259', '120 feet', 'V|S|M', 'A short piece of copper wire.', 'no', '1 round', 'no', '1 action', 'Cantrip', 'Transmutation', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(231, 'Meteor Swarm', 'Blazing orbs of fire plummet to the ground at four different points you can see within range. Each creature in a 40-foot-radius sphere centered on each point you choose must make a dexterity saving throw. The sphere spreads around corners. A creature takes 20d6 fire damage and 20d6 bludgeoning damage on a failed save, or half as much damage on a successful one. A creature in the area of more than one fiery burst is affected only once.The spell damages objects in the area and ignites flammable objects that aren’t being worn or carried.', '', 'phb 259', '1 mile', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(232, 'Mind Blank', 'Until the spell ends, one willing creature you touch is immune to psychic damage, any effect that would sense its emotions or read its thoughts, divination spells, and the charmed condition. The spell even foils wish spells and spells or effects of similar power used to affect the target’s mind or to gain information about the target.', '', 'phb 259', 'Touch', 'V|S', '', 'no', '24 hours', 'no', '1 action', '8th-level', 'Abjuration', 'Bard|Wizard', '', '', '', '', ''),
(233, 'Minor Illusion', 'You create a sound or an image of an object within range that lasts for the duration. The illusion also ends if you dismiss it as an action or cast this spell again.If you create a sound, its volume can range from a whisper to a scream. It can be your voice, someone else’s voice, a lion’s roar, a beating of drums, or any other sound you choose. The sound continues unabated throughout the duration, or you can make discrete sounds at different times before the spell ends.If you create an image of an object—such as a chair, muddy footprints, or a small chest—it must be no larger than a 5-foot cube. The image can’t create sound, light, smell, or any other sensory effect. Physical interaction with the image reveals it to be an illusion, because things can pass through it.If a creature uses its action to examine the sound or image, the creature can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the illusion becomes faint to the creature.', '', 'phb 260', '30 feet', 'S|M', 'A bit of fleece.', 'no', '1 minute', 'no', '1 action', 'Cantrip', 'Illusion', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(234, 'Mirage Arcane', 'You make terrain in an area up to 1 mile square look, sound, smell, and even feel like some other sort of terrain. The terrain’s general shape remains the same, however. Open fields or a road could be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road.Similarly, you can alter the appearance of structures, or add them where none are present. The spell doesn’t disguise, conceal, or add creatures.The illusion includes audible, visual, tactile, and olfactory elements, so it can turn clear ground into difficult terrain (or vice versa) or otherwise impede movement through the area. Any piece of the illusory terrain (such as a rock or stick) that is removed from the spell’s area disappears immediately.Creatures with truesight can see through the illusion to the terrain’s true form; however, all other elements of the illusion remain, so while the creature is aware of the illusion’s presence, the creature can still physically interact with the illusion.', '', 'phb 260', 'Sight', 'V|S', '', 'no', '10 days', 'no', '10 minutes', '7th-level', 'Illusion', 'Bard|Druid|Wizard', '', '', '', '', ''),
(235, 'Mirror Image', 'Three illusionary duplicates of yourself appear in your space. Until the end of the spell, duplicates move with you and imitate your actions, swapping their position so that it is impossible to determine which image is real. You can use your action to dispel the illusory duplicates.Whenever a creature is targeting you with an attack during the duration of the spell, roll 1d20 to determine if the attack does not target rather one of your duplicates.If you have three duplicates, you need 6 or more on your throw to lead the target of the attack to a duplicate. With two duplicates, you need 8 or more. With one duplicate, you need 11 or more.The CA of a duplicate is 10 + your Dexterity modifier. If an attack hits a duplicate, it is destroyed. A duplicate may be destroyed not just an attack on key. It ignores other damage and effects. The spell ends if the three duplicates are destroyed.A creature is unaffected by this fate if she can not see if it relies on a different meaning as vision, such as blind vision, or if it can perceive illusions as false, as with clear vision.', '', 'phb 260', 'Self', 'V|S', '', 'no', '1 minute', 'no', '1 action', '2nd-level', 'Illusion', 'Cleric|Druid|Sorcerer|Warlock|Wizard', '', 'Coast', 'Trickery', '', ''),
(236, 'Mislead', 'You become invisible at the same time that an illusory double of you appears where you are standing. The double lasts for the duration, but the invisibility ends if you attack or cast a spell.You can use your action to move your illusory double up to twice your speed and make it gesture, speak, and behave in whatever way you choose.You can see through its eyes and hear through its ears as if you were located where it is. On each of your turns as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.', '', 'phb 260', 'Self', 'S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '5th-level', 'Illusion', 'Bard|Wizard', '', '', '', '', ''),
(237, 'Misty Step', 'Briefly surrounded by silvery mist, you teleport up to 30 feet to an unoccupied space that you can see.', '', 'phb 260', 'Self', 'V', '', 'no', 'Instantaneous', 'no', '1 bonus action', '2nd-level', 'Conjuration', 'Druid|Paladin|Sorcerer|Warlock|Wizard', '', 'Coast', '', 'Ancients|Vengeance', ''),
(238, 'Modify Memory', 'You attempt to reshape another creature’s memories. One creature that you can see must make a wisdom saving throw. If you are fighting the creature, it has advantage on the saving throw. On a failed save, the target becomes charmed by you for the duration. The charmed target is incapacitated and unaware of its surroundings, though it can still hear you. If it takes any damage or is targeted by another spell, this spell ends, and none of the target’s memories are modified.While this charm lasts, you can affect the target’s memory of an event that it experienced within the last 24 hours and that lasted no more than 10 minutes. You can permanently eliminate all memory of the event, allow the target to recall the event with perfect clarity and exacting detail, change its memory of the details of the event, or create a memory of some other event.You must speak to the target to describe how its memories are affected, and it must be able to understand your language for the modified memories to take root. Its mind fills in any gaps in the details of your description. If the spell ends before you have finished describing the modified memories, the creature’s memory isn’t altered. Otherwise, the modified memories take hold when the spell ends.A modified memory doesn’t necessarily affect how a creature behaves, particularly if the memory contradicts the creature’s natural inclinations, alignment, or beliefs. An illogical modified memory, such as implanting a memory of how much the creature enjoyed dousing itself in acid, is dismissed, perhaps as a bad dream. The DM might deem a modified memory too nonsensical to affect a creature in a significant manner.A remove curse or greater restoration spell cast on the target restores the creature’s true memory.', 'If you cast this spell using a spell slot of 6th level or higher, you can alter the target’s memories of an event that took place up to 7 days ago (6th level), 30 days ago (7th level), 1 year ago (8th level), or any time in the creature’s past (9th level).', 'phb 261', '30 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Enchantment', 'Bard|Cleric|Wizard', '', '', 'Trickery', '', ''),
(239, 'Moonbeam', 'A silvery beam of pale light shines down in a 5-footradius, 40-foot-high cylinder centered on a point within range. Until the spell ends, dim light fills the cylinder.When a creature enters the spell’s area for the first time on a turn or starts its turn there, it is engulfed in ghostly flames that cause searing pain, and it must make a constitution saving throw. It takes 2d10 radiant damage on a failed save, or half as much damage on a successful one.A shapechanger makes its saving throw with disadvantage. If it fails, it also instantly reverts to its original form and can’t assume a different form until it leaves the spell’s light.On each of your turns after you cast this spell, you can use an action to move the beam 60 feet in any direction.', 'When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1dlO for each slot level above 2nd.', 'phb 261', '120 feet', 'V|S|M', 'Several seeds of any moonseed plant and a piece of opalescent feldspar.', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Evocation', 'Druid|Paladin', '', '', '', 'Ancients', ''),
(240, 'Move Earth', 'Choose an area of terrain no larger than 40 feet on a side within range. You can reshape dirt, sand, or clay in the area in any manner you choose for the duration. You can raise or lower the area&lsquo;s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can&lsquo;t exceed half the area&lsquo;s largest dimension. So, if you affect a 40-foot square, you can create a pillar up to 20 feet high, raise or lower the square&lsquo;s elevation by up to 20 feet, dig a trench up to 20 feet deep, and so on. It takes 10 minutes for these changes to complete.At the end of every 10 minutes you spend concentrating on the spell, you can choose a new area of terrain to affect.Because the terrain&lsquo;s transformation occurs slowly, creatures in the area can&lsquo;t usually be trapped or injured by the ground&lsquo;s movement.This spell can&lsquo;t manipulate natural stone or stone construction. Rocks and structures shift to accommodate the new terrain. If the way you shape the terrain would make a structure unstable, it might collapse.Similarly, this spell doesn&lsquo;t directly affect plant growth. The moved earth carries any plants along with it.', '', 'phb 263', '120 feet', 'V|S|M', 'An iron blade and a small bag containing a mixture of soils—clay, loam, and sand.', 'no', 'Up to 2 hours', 'yes', '1 action', '6th-level', 'Transmutation', 'Druid|Sorcerer|Wizard', '', '', '', '', ''),
(241, 'Nondetection', 'For the duration, you hide a target that you touch from divination magic. The target can be a willing creature or a place or an object no larger than 10 feet in any dimension. The target can’t be targeted by any divination magic or perceived through magical scrying sensors.', '', 'phb 263', 'Touch', 'V|S|M', 'A pinch of diamond dust worth 25 gp sprinkled over the target, which the spell consumes.', 'no', '8 hours', 'no', '1 action', '3rd-level', 'Abjuration', 'Bard|Cleric|Ranger|Wizard', '', '', 'Knowledge', '', ''),
(242, 'Pass without Trace', 'A veil of shadows and silence radiates from you, masking you and your companions from detection. For the duration, each creature you choose within 30 feet of you (including you) has a +10 bonus to Dexterity (Stealth) checks and can’t be tracked except by magical means. A creature that receives this bonus leaves behind no tracks or other traces of its passage.', '', 'phb 264', 'Self', 'V|S|M', 'Ashes from a burned leaf of mistletoe and a sprig of spruce.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Abjuration', 'Cleric|Druid|Ranger', '', 'Grassland', 'Trickery', '', ''),
(243, 'Passwall', 'A passage appears at a point of your choice that you can see on a wooden, plaster, or stone surface (such as a wall, a ceiling, or a floor) within range, and lasts for the duration. You choose the opening’s dimensions: up to 5 feet wide, 8 feet tall, and 20 feet deep. The passage creates no instability in a structure surrounding it.When the opening disappears, any creatures or objects still in the passage created by the spell are safely ejected to an unoccupied space nearest to the surface on which you cast the spell.', '', 'phb 264', '30 feet', 'V|S|M', 'A pinch of sesame seeds.', 'no', '1 hour', 'no', '1 action', '5th-level', 'Transmutation', 'Druid|Wizard', '', 'Mountain', '', '', ''),
(244, 'Phantasmal Force', '', '', 'phb 264', '60 ft.', 'V|S|M', 'bit of fleece', 'no', '1 minute', 'yes', '1 action', '2nd-level', 'Illusion', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(245, 'Phantasmal Killer', 'You tap into the nightmares of a creature you can see within range and create an illusory manifestation of its deepest fears, visible only to that creature. The target must make a wisdom saving throw. On a failed save, the target becomes frightened for the duration. At the start of each of the target’s turns before the spell ends, the target must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends.', 'When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1dlO for each slot level above 4th.', 'phb 265', '120 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Illusion', 'Wizard', '', '', '', '', ''),
(246, 'Phantom Steed', 'A Large quasi-real, horselike creature appears on the ground in an unoccupied space of your choice within range. You decide the creature’s appearance, but it is equipped with a saddle, bit, and bridle. Any of the equipment created by the spell vanishes in a puff of smoke if it is carried more than 10 feet away from the steed.For the duration, you or a creature you choose can ride the steed. The creature uses the statistics for a riding horse, except it has a speed of 100 feet and can travel 10 miles in an hour, or 13 miles at a fast pace. When the spell ends, the steed gradually fades, giving the rider 1 minute to dismount. The spell ends if you use an action to dismiss it or if the steed takes any damage.', '', 'phb 265', '30 feet', 'V|S', '', 'yes', '1 hour', 'no', '1 minute', '3rd-level', 'Illusion', 'Ritual Caster|Wizard', '', '', '', '', ''),
(247, 'Planar Ally', 'You beseech an otherworldly entity for aid. The being must be known to you: a god, a primordial, a demon prince, or some other being of cosmic power. That entity sends a celestial, an elemental, or a fiend loyal to it to aid you, making the creature appear in an unoccupied space within range. If you know a specific creature’s name, you can speak that name when you cast this spell to request that creature, though you might get a different creature anyway (DM’s choice).When the creature appears, it is under no compulsion to behave in any particular way. You can ask the creature to perform a service in exchange for payment, but it isn’t obliged to do so. The requested task could range from simple (fly us across the chasm, or help us fight a battle) to complex (spy on our enemies, or protect us during our foray into the dungeon). You must be able to communicate with the creature to bargain for its services.Payment can take a variety of forms. A celestial might require a sizable donation of gold or magic items to an allied temple, while a fiend might demand a living sacrifice or a gift of treasure. Some creatures might exchange their service for a quest undertaken by you.As a rule of thumb, a task that can be measured in minutes requires a payment worth 100 gp per minute. A task measured in hours requires 1,000 gp per hour. And a task measured in days (up to 10 days) requires 10,000 gp per day. The DM can adjust these payments based on the circumstances under which you cast the spell. If the task is aligned with the creature’s ethos, the payment might be halved or even waived. Nonhazardous tasks typically require only half the suggested payment, while especially dangerous tasks might require a greater gift. Creatures rarely accept tasks that seem suicidal.After the creature completes the task, or when the agreed-upon duration of service expires, the creature returns to its home plane after reporting back to you, if appropriate to the task and if possible. If you are unable to agree on a price for the creature’s service, the creature immediately returns to its home plane.A creature enlisted to join your group counts as a member of it, receiving a full share of experience points awarded.', '', 'phb 265', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '10 minutes', '6th-level', 'Conjuration', 'Cleric', '', '', '', '', ''),
(248, 'Planar Binding', 'With this spell, you attempt to bind a celestial, an elemental, a fey, or a fiend to your service. The creature must be within range for the entire casting of the spell. (Typically, the creature is first summoned into the center of an inverted magic circle in order to keep it trapped while this spell is cast.) At the completion of the casting, the target must make a charisma saving throw. On a failed save, it is bound to serve you for the duration. If the creature was summoned or created by another spell, that spell’s duration is extended to match the duration of this spell.A bound creature must follow your instructions to the best of its ability. You might command the creature to accompany you on an adventure, to guard a location, or to deliver a message. The creature obeys the letter of your instructions, but if the creature is hostile to you, it strives to twist your words to achieve its own objectives. If the creature carries out your instructions completely before the spell ends, it travels to you to report this fact if you are on the same plane of existence. If you are on a different plane of existence, it returns to the place where you bound it and remains there until the spell ends.', 'When you cast this spell using a spell slot of a higher level, the duration increases to 10 days with a 6th-level slot, to 30 days with a 7th-level slot, to 180 days with an 8th-level slot, and to a year and a day with a 9th-level spell slot.', 'phb 265', '60 feet', 'V|S|M', 'A jewel worth at least 1,000 gp, which the spell consumes.', 'no', '24 hours', 'no', '1 hour', '5th-level', 'Abjuration', 'Bard|Cleric|Druid|Wizard', '', '', '', '', ''),
(249, 'Plane Shift', 'You and up to eight willing creatures who link hands in a circle are transported to a different plane of existence. You can specify a target destination in general terms, such as the City of Brass on the Elemental Plane of Fire or the palace of Dispater on the second level of the Nine Hells, and you appear in or near that destination. If you are trying to reach the City of Brass, for example, you might arrive in its Street of Steel, before its Gate of Ashes, or looking at the city from across the Sea of Fire, at the DM’s discretion.Alternatively, if you know the sigil sequence of a teleportation circle on another plane of existence, this spell can take you to that circle. If the teleportation circle is too small to hold all the creatures you transported, they appear in the closest unoccupied spaces next to the circle.You can use this spell to banish an unwilling creature to another plane. Choose a creature within your reach and make a melee spell attack against it. On a hit, the creature must make a charisma saving throw. If the creature fails this save, it is transported to a random location on the plane of existence you specify. A creature so transported must find its own way back to your current plane of existence.', '', 'phb 266', 'Touch', 'V|S|M', 'A forked, metal rod worth at least 250 gp, attuned to a particular plane of existence.', 'no', 'Instantaneous', 'no', '1 action', '7th-level', 'Conjuration', 'Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(250, 'Plant Growth', 'This spell channels vitality into plants within a specific area. There are two possible uses for the spell, granting either immediate or long-term benefits.If you cast this spell using 1 action, choose a point within range. All normal plants in a 100-foot radius centered on that point become thick and overgrown. A creature moving through the area must spend 4 feet of movement for every 1 foot it moves.You can exclude one or more areas of any size within the spell’s area from being affected.If you cast this spell over 8 hours, you enrich the land. All plants in a half-mile radius centered on a point within range become enriched for 1 year. The plants yield twice the normal amount of food when harvested.', '', 'phb 266', '150 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Transmutation', 'Bard|Cleric|Druid|Paladin|Ranger|Warlock', '', 'Forest', 'Nature', 'Ancients', 'Archfey'),
(251, 'Poison Spray', '', 'Damage increases by an additional 1d12 at 5th, 11th, and 17th level.', 'phb 266', '10 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Conjuration', 'Druid|Sorcerer|Warlock|Wizard', '', '', 'Nature', '', ''),
(252, 'Polymorph', 'This spell transforms a creature that you can see within range into a new form. An unwilling creature must make a wisdom saving throw to avoid the effect. A shapechanger automatically succeeds on this saving throw.The transformation lasts for the duration, or until the target drops to 0 hit points or dies. The new form can be any beast whose challenge rating is equal to or less than the target’s (or the target’s level, if it doesn&lsquo;t have a challenge rating). The target’s game statistics, including mental ability scores, are replaced by the statistics of the chosen beast. It retains its alignment and personality.The target assumes the hit points of its new form. When it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious.The creature is limited in the actions it can perform by the nature of its new form, and it can’t speak, cast spells, or take any other action that requires hands or speech.The target’s gear melds into the new form. The creature can’t activate, use, wield, or otherwise benefit from any of its equipment.', '', 'phb 266', '60 feet', 'V|S|M', 'A caterpillar cocoon.', 'no', 'Up to 1 hour', 'yes', '1 action', '4th-level', 'Transmutation', 'Bard|Cleric|Druid|Sorcerer|Wizard', '', '', 'Trickery', '', ''),
(253, 'Power Word Heal', '', '', 'phb 266', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Evocation', 'Bard', '', '', '', '', ''),
(254, 'Power Word Kill', 'You utter a word of power that can compel one creature you can see within range to die instantly. If the creature you choose has 100 hit points or fewer, it dies. Otherwise, the spell has no effect.', '', 'phb 266', '60 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(255, 'Power Word Stun', 'You speak a word of power that can overwhelm the mind of one creature you can see within range, leaving it dumbfounded. If the target has 150 hit points or fewer, it is stunned. Otherwise, the spell has no effect.The stunned target must make a constitution saving throw at the end of each of its turns. On a successful save, this stunning effect ends.', '', 'phb 267', '60 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '8th-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(256, 'Prayer of Healing', 'Up to six creatures of your choice that you can see within range each regain hit points equal to 2d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.', 'When you cast this spell using a spell slot of 3rd level or higher, the healing increases by 1d8 for each slot level above 2nd.', 'phb 267', '30 feet', 'V', '', 'no', 'Instantaneous', 'no', '10 minutes', '2nd-level', 'Evocation', 'Cleric', '', '', '', '', ''),
(257, 'Prestidigitation', 'This spell is a minor magical trick that novice spellcasters use for practice. You create one of the following magical effects within &lsquo;range&lsquo;:You create an instantaneous, harmless sensory effect, such as a shower of sparks, a puff of wind, faint musical notes, or an odd odor.You instantaneously light or snuff out a candle, a torch, or a small campfire.You instantaneously clean or soil an object no larger than 1 cubic foot.You chill, warm, or flavor up to 1 cubic foot of nonliving material for 1 hour.You make a color, a small mark, or a symbol appear on an object or a surface for 1 hour.You create a nonmagical trinket or an illusory image that can fit in your hand and that lasts until the end of your next turn.If you cast this spell multiple times, you can have up to three of its non-instantaneous effects active at a time, and you can dismiss such an effect as an action.', '', 'phb 267', '10 feet', 'V|S', '', 'no', '1 hour', 'no', '1 action', 'Cantrip', 'Transmutation', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(258, 'Prismatic Spray', 'Eight multicolored rays of light flash from your hand. Each ray is a different color and has a different power and purpose. Each creature in a 60-foot cone must make a dexterity saving throw. For each target, roll a d8 to determine which color ray affects it.<br /><strong>1. Red.</strong> The target takes 10d6 fire damage on a failed save, or half as much damage on a successful one.<br /><strong>2. Orange.</strong> The target takes 10d6 acid damage on a failed save, or half as much damage on a successful one.<br /><strong>3. Yellow.</strong> The target takes 10d6 lightning damage on a failed save, or half as much damage on a successful one.<br /><strong>4. Green.</strong> The target takes 10d6 poison damage on a failed save, or half as much damage on a successful one.<br /><strong>5. Blue.</strong> The target takes 10d6 cold damage on a failed save, or half as much damage on a successful one.<br /><strong>6. Indigo.</strong> On a failed save, the target is restrained. It must then make a constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don’t need to be consecutive; keep track of both until the target collects three of a kind.<br /><strong>7. Violet.</strong> On a failed save, the target is blinded. It must then make a wisdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of existence of the DM’s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn’t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.)<br /><strong>8. Special.</strong> The target is struck by two rays. Roll twice more, rerolling any 8.', '', 'phb 267', 'Self', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '7th-level', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(259, 'Prismatic Wall', 'A shimmering, multicolored plane of light forms a vertical opaque wall—up to 90 feet long, 30 feet high, and 1 inch thick—centered on a point you can see within range. Alternatively, you can shape the wall into a sphere up to 30 feet in diameter centered on a point you choose within range. The wall remains in place for the duration. If you position the wall so that it passes through a space occupied by a creature, the spell fails, and your action and the spell slot are wasted.The wall sheds bright light out to a range of 100 feet and dim light for an additional 100 feet. You and creatures you designate at the time you cast the spell can pass through and remain near the wall without harm. If another creature that can see the wall moves to within 20 feet of it or starts its turn there, the creature must succeed on a constitution saving throw or become blinded for 1 minute.The wall consists of seven layers, each with a different color. When a creature attempts to reach into or pass through the wall, it does so one layer at a time through all the wall’s layers. As it passes or reaches through each layer, the creature must make a dexterity saving throw or be affected by that layer’s properties as described below.The wall can be destroyed, also one layer at a time, in order from red to violet, by means specific to each layer. Once a layer is destroyed, it remains so for the duration of the spell. A rod of cancellation destroys a prismatic wall, but an antimagic field has no effect on it.<br /><strong>1. Red.</strong> The creature takes 10d6 fire damage on a failed save, or half as much damage on a successful one. While this layer is in place, nonmagical ranged attacks can’t pass through the wall. The layer can be destroyed by dealing at least 25 cold damage to it.<br /><strong>2. Orange.</strong> The creature takes 10d6 acid damage on a failed save, or half as much damage on a successful one. While this layer is in place, magical ranged attacks can’t pass through the wall. The layer is destroyed by a strong wind.<br /><strong>3. Yellow.</strong> The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 60 force damage to it.<br /><strong>4. Green.</strong> The creature takes 10d6 poison damage on a failed save, or half as much damage on a successful one. A passwall spell, or another spell of equal or greater level that can open a portal on a solid surface, destroys this layer.<br /><strong>5. Blue.</strong> The creature takes 10d6 cold damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 25 fire damage to it.<br /><strong>6. Indigo.</strong> On a failed save, the creature is restrained. It must then make a constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don’t need to be consecutive; keep track of both until the creature collects three of a kind.While this layer is in place, spells can’t be cast through the wall. The layer is destroyed by bright light shed by a daylight spell or a similar spell of equal or higher level.<br /><strong>7. Violet.</strong> On a failed save, the creature is blinded. It must then make a wisdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of the DM’s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn’t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.) This layer is destroyed by a dispel magic spell or a similar spell of equal or higher level that can end spells and magical effects.', '', 'phb 267', '60 feet', 'V|S', '', 'no', '10 minutes', 'no', '1 action', '9th-level', 'Abjuration', 'Wizard', '', '', '', '', ''),
(260, 'Private Sanctum', 'You make an area within range magically secure. The area is a cube that can be as small as 5 feet to as large as 100 feet on each side. The spell lasts for the duration or until you use an action to dismiss it.When you cast the spell, you decide what sort of security the spell provides, choosing any or all of the following properties:• Sound can’t pass through the barrier at the edge of the warded area.• The barrier of the warded area appears dark and foggy, preventing vision (including darkvision) through it.• Sensors created by divination spells can’t appear inside the protected area or pass through the barrier at its perimeter.• Creatures in the area can’t be targeted by divination spells.• Nothing can teleport into or out of the warded area.• Planar travel is blocked within the warded area.Casting this spell on the same spot every day for a year makes this effect permanent.', 'When you cast this spell using a spell slot of 5th level or higher, you can increase the size of the cube by 100 feet for each slot level beyond 4th. Thus you could protect a cube that can be up to 200 feet on one side by using a spell slot of 5th level.', 'phb 262', '120 feet', 'V|S|M', 'A thin sheet of lead, a piece of opaque glass, a wad of cotton or cloth, and powdered chrysolite.', 'no', '24 hours', 'no', '10 minutes', '4th-level', 'Abjuration', 'Wizard', '', '', '', '', ''),
(261, 'Produce Flame', 'A flickering flame appears in your hand. The flame remains there for the duration and harms neither you nor your equipment. The flame sheds bright light in a 10-foot radius and dim light for an additional 10 feet. The spell ends if you dismiss it as an action or if you cast it again.You can also attack with the flame, although doing so ends the spell. When you cast this spell, or as an action on a later turn, you can hurl the flame at a creature within 30 feet of you. Make a ranged spell attack. On a hit, the target takes 1d8 fire damage.This spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', '', 'phb 269', 'Self', 'V|S', '', 'no', '10 minutes', 'no', '1 action', 'Cantrip', 'Conjuration', 'Druid', '', '', '', '', ''),
(262, 'Programmed Illusion', 'You create an illusion of an object, a creature, or some other visible phenomenon within range that activates when a specific condition occurs. The illusion is imperceptible until then. It must be no larger than a 30-foot cube, and you decide when you cast the spell how the illusion behaves and what sounds it makes. This scripted performance can last up to 5 minutes.When the condition you specify occurs, the illusion springs into existence and performs in the manner you described. Once the illusion finishes performing, it disappears and remains dormant for 10 minutes. After this time, the illusion can be activated again.The triggering condition can be as general or as detailed as you like, though it must be based on visual or audible conditions that occur within 30 feet of the area. For example, you could create an illusion of yourself to appear and warn off others who attempt to open a trapped door, or you could set the illusion to trigger only when a creature says the correct word or phrase.Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.', '', 'phb 269', '120 feet', 'V|S|M', 'A bit of fleece and jade dust worth at least 25 gp.', 'no', 'Until dispelled', 'no', '1 action', '6th-level', 'Illusion', 'Bard|Wizard', '', '', '', '', ''),
(263, 'Project Image', 'You create an illusory copy of yourself that lasts for the duration. The copy can appear at any location within range that you have seen before, regardless of intervening obstacles. The illusion looks and sounds like you but is intangible. If the illusion takes any damage, it disappears, and the spell ends.You can use your action to move this illusion up to twice your speed, and make it gesture, speak, and behave in whatever way you choose. It mimics your mannerisms perfectly.You can see through its eyes and hear through its ears as if you were in its space. On your turn as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.', '', 'phb 270', '500 miles', 'V|S|M', 'A small replica of you made from materials worth at least 5 gp.', 'no', 'Up to 24 hours', 'yes', '1 action', '7th-level', 'Illusion', 'Bard|Wizard', '', '', '', '', ''),
(264, 'Protection from Energy', 'For the duration, the willing creature you touch has resistance to one damage type of your choice: acid, cold, fire, lightning, or thunder.', '', 'phb 270', 'Touch', 'V|S', '', 'no', 'Up to 1 hour', 'yes', '1 action', '3rd-level', 'Abjuration', 'Cleric|Druid|Paladin|Ranger|Sorcerer|Wizard', '', 'Desert', '', 'Ancients|Vengeance', ''),
(265, 'Protection from Evil and Good', 'Until the spell ends, one willing creature you touch is protected against certain types of creatures: aberrations, celestials, elementals, fey, fiends, and undead.The protection grants several benefits. Creatures of those types have disadvantage on attack rolls against the target. The target also can’t be charmed, frightened, or possessed by them. If the target is already charmed, frightened, or possessed by such a creature, the target has advantage on any new saving throw against the relevant effect.', '', 'phb 270', 'Touch', 'V|S|M', 'Holy water or powdered silver and iron, which the spell consumes.', 'no', 'Up to 10 minutes', 'yes', '1 action', '1st-level', 'Abjuration', 'Cleric|Paladin|Warlock|Wizard', '', '', '', 'Devotion', ''),
(266, 'Protection from Poison', 'You touch a creature. If it is poisoned, you neutralize the poison. If more than one poison afflicts the target, you neutralize one poison that you know is present, or you neutralize one at random.For the duration, the target has advantage on saving throws against being poisoned, and it has resistance to poison damage.', '', 'phb 270', 'Touch', 'V|S', '', 'no', '1 hour', 'no', '1 action', '2nd-level', 'Abjuration', 'Cleric|Druid|Paladin|Ranger', '', '', '', '', ''),
(267, 'Purify Food and Drink', 'All nonmagical food and drink within a 5-foot radius sphere centered on a point of your choice within range is purified and rendered free of poison and disease.', '', 'phb 270', '10 feet', 'V|S', '', 'yes', 'Instantaneous', 'no', '1 action', '1st-level', 'Transmutation', 'Cleric|Druid|Paladin|Ritual Caster', '', '', '', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(268, 'Raise Dead', 'You return a dead creature you touch to life, provided that it has been dead no longer than 10 days. If the creature’s soul is both willing and at liberty to rejoin the body, the creature returns to life with 1 hit point.This spell also neutralizes any poisons and cures nonmagical diseases that affected the creature at the time it died. This spell doesn’t, however, remove magical diseases, curses, or similar effects; if these aren’t first removed prior to casting the spell, they take effect when the creature returns to life. The spell can’t return an undead creature to life.This spell closes all mortal wounds, but it doesn’t restore missing body parts. If the creature is lacking body parts or organs integral for its survival—its head, for instance—the spell automatically fails.Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears.', '', 'phb 270', 'Touch', 'V|S|M', 'A diamond worth at least 500gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 hour', '5th-level', 'Necromancy', 'Bard|Cleric|Paladin', '', '', 'Life', '', ''),
(269, 'Ray of Enfeeblement', 'A black beam of enervating energy springs from your finger toward a creature within range. Make a ranged spell attack against the target. On a hit, the target deals only half damage with weapon attacks that use Strength until the spell ends.At the end of each of the target’s turns, it can make a constitution saving throw against the spell. On a success, the spell ends.', '', 'phb 271', '60 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '2nd-level', 'Necromancy', 'Warlock|Wizard', '', '', '', '', ''),
(270, 'Ray of Frost', 'A frigid beam of blue-white light streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, it takes 1d8 cold damage, and its speed is reduced by 10 feet until the start of your next turn.The spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', '', 'phb 271', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'Cantrip', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(271, 'Ray of Sickness', '', 'Damage increases by 1d8 for each slot level above 1st.', 'phb 271', '60 ft.', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Necromancy', 'Sorcerer|Warlock|Wizard', '', '', 'Death', '', ''),
(272, 'Regenerate', 'You touch a creature and stimulate its natural healing ability. The target regains 4d8 + 15 hit points. For the duration of the spell, the target regains 1 hit point at the start of each of its turns (10 hit points each minute).The target’s severed body members (fingers, legs, tails, and so on), if any, are restored after 2 minutes. If you have the severed part and hold it to the stump, the spell instantaneously causes the limb to knit to the stump.', '', 'phb 271', 'Touch', 'V|S|M', 'A prayer wheel and holy water.', 'no', '1 hour', 'no', '1 minute', '7th-level', 'Transmutation', 'Bard|Cleric|Druid', '', '', '', '', ''),
(273, 'Reincarnate', 'You touch a dead humanoid or a piece of a dead humanoid. Provided that the creature has been dead no longer than 10 days, the spell forms a new adult body for it and then calls the soul to enter that body. If the target’s soul isn’t free or willing to do so, the spell fails.The magic fashions a new body for the creature to inhabit, which likely causes the creature’s race to change. The DM rolls a d 100 and consults the following table to determine what form the creature takes when restored to life, or the DM chooses a form.<br /><strong>01-04</strong> Dragonborn<br /><strong>05-13</strong> Dwarf, hill<br /><strong>14-21</strong> Dwarf, mountain<br /><strong>22-25</strong> Elf, dark<br /><strong>26-34</strong> Elf, high<br /><strong>35-42</strong> Elf, wood<br /><strong>43-46</strong> Gnome, forest<br /><strong>47-52</strong> Gnome, rock<br /><strong>53-56</strong> Half-elf<br /><strong>57-60</strong> Half-orc<br /><strong>61-68</strong> Halfling, lightfoot<br /><strong>69-76</strong> Halfling, stout<br /><strong>77-96</strong> Human<br /><strong>97-00</strong> TieflingThe reincarnated creature recalls its former life and experiences. It retains the capabilities it had in its original form, except it exchanges its original race for the new one and changes its racial traits accordingly.', '', 'phb 271', 'Touch', 'V|S|M', 'Rare oils and unguents worth at least 1,000 gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 hour', '5th-level', 'Transmutation', 'Druid', '', '', '', '', ''),
(274, 'Remove Curse', 'At your touch, all curses affecting one creature or object end. If the object is a cursed magic item, its curse remains, but the spell breaks its owner’s attunement to the object so it can be removed or discarded.', '', 'phb 271', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Abjuration', 'Cleric|Paladin|Warlock|Wizard', '', '', '', '', ''),
(275, 'Resilient Sphere', 'A sphere of shimmering force encloses a creature or object of Large size or smaller within range. An unwilling creature must make a dexterity saving throw. On a failed save, the creature is enclosed for the duration.Nothing—not physical objects, energy, or other spell effects—can pass through the barrier, in or out, though a creature in the sphere can breathe there. The sphere is immune to all damage, and a creature or object inside can’t be damaged by attacks or effects originating from outside, nor can a creature inside the sphere damage anything outside it.The sphere is weightless and just large enough to contain the creature or object inside. An enclosed creature can use its action to push against the sphere’s walls and thus roll the sphere at up to half the creature’s speed. Similarly, the globe can be picked up and moved by other creatures.A disintegrate spell targeting the globe destroys it without harming anything inside it.', '', 'phb 264', '30 feet', 'V|S|M', 'A hemispherical piece of clear crystal and a matching hemispherical piece of gum arabic.', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(276, 'Resistance', 'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one saving throw of its choice. It can roll the die before or after making the saving throw. The spell then ends.', '', 'phb 272', 'Touch', 'V|S|M', 'A miniature cloak.', 'no', 'Up to 1 minute', 'yes', '1 action', 'Cantrip', 'Abjuration', 'Cleric|Druid', '', '', '', '', ''),
(277, 'Resurrection', 'You touch a dead creature that has been dead for no more than a century, that didn’t die of old age, and that isn’t undead. If its soul is free and willing, the target returns to life with all its hit points.This spell neutralizes any poisons and cures normal diseases afflicting the creature when it died. It doesn’t, however, remove magical diseases, curses, and the like; if such effects aren’t removed prior to casting the spell, they afflict the target on its return to life.This spell closes all mortal wounds and restores any missing body parts.Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears.Casting this spell to restore life to a creature that has been dead for one year or longer taxes you greatly. Until you finish a long rest, you can’t cast spells again, and you have disadvantage on all attack rolls, ability checks, and saving throws.', '', 'phb 272', 'Touch', 'V|S|M', 'A diamond worth at least 1,000gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 hour', '7th-level', 'Necromancy', 'Bard|Cleric', '', '', '', '', ''),
(278, 'Reverse Gravity', 'This spell reverses gravity in a 50-foot-radius, 100-foot high cylinder centered on a point within range. All creatures and objects that aren’t somehow anchored to the ground in the area fall upward and reach the top of the area when you cast this spell. A creature can make a dexterity saving throw to grab onto a fixed object it can reach, thus avoiding the fall.If some solid object (such as a ceiling) is encountered in this fall, falling objects and creatures strike it just as they would during a normal downward fall. If an object or creature reaches the top of the area without striking anything, it remains there, oscillating slightly, for the duration.At the end of the duration, affected objects and creatures fall back down.', '', 'phb 272', '100 feet', 'V|S|M', 'A lodestone and iron filings.', 'no', 'Up to 1 minute', 'yes', '1 action', '7th-level', 'Transmutation', 'Druid|Sorcerer|Wizard', '', '', '', '', ''),
(279, 'Revivify', 'You touch a creature that has died within the last minute. That creature returns to life with 1 hit point. This spell can’t return to life a creature that has died of old age, nor can it restore any missing body parts.', '', 'phb 272', 'Touch', 'V|S|M', 'Diamonds worth 300gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 action', '3rd-level', 'Conjuration', 'Cleric|Paladin', '', '', 'Life', '', ''),
(280, 'Rope Trick', 'You touch a length of rope that is up to 60 feet long. One end of the rope then rises into the air until the whole rope hangs perpendicular to the ground. At the upper end of the rope, an invisible entrance opens to an extradimensional space that lasts until the spell ends.The extradimensional space can be reached by climbing to the top of the rope. The space can hold as many as eight Medium or smaller creatures. The rope can be pulled into the space, making the rope disappear from view outside the space.Attacks and spells can’t cross through the entrance into or out of the extradimensional space, but those inside can see out of it as if through a 3-foot-by-5-foot window centered on the rope.Anything inside the extradimensional space drops out when the spell ends.', '', 'phb 272', 'Touch', 'V|S|M', 'Powdered corn extract and a twisted loop of parchment.', 'no', '1 hour', 'no', '1 action', '2nd-level', 'Transmutation', 'Wizard', '', '', '', '', ''),
(281, 'Sacred Flame', 'Flame-like radiance descends on a creature that you can see within range. The target must succeed on a dexterity saving throw or take 1d8 radiant damage. The target gains no benefit from cover for this saving throw.The spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', '', 'phb 272', '60 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'Cantrip', 'Evocation', 'Cleric', '', '', '', '', ''),
(282, 'Sanctuary', 'You ward a creature within range against attack. Until the spell ends, any creature who targets the warded creature with an attack or a harmful spell must first make a wisdom saving throw. On a failed save, the creature must choose a new target or lose the attack or spell. This spell doesn’t protect the warded creature from area effects, such as the explosion of a fireball.If the warded creature makes an attack or casts a spell that affects an enemy creature, this spell ends.', '', 'phb 272', '30 feet', 'V|S|M', 'A small silver mirror.', 'no', '1 minute', 'no', '1 bonus action', '1st-level', 'Abjuration', 'Cleric|Paladin', '', '', '', 'Devotion', ''),
(283, 'Scorching Ray', 'You generate three rays of fire and will throw to targets in the range of the spell. You can project them on one or more targets.Perform a remote attack spell for each department. If it hits, the target takes 2d6 fire damage.', 'When you cast this spell using a 3 or higher level spell slot, you generate an additional radius for each level of higher spell slot 2.', 'phb 273', '120 feet', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Evocation', 'Cleric|Sorcerer|Warlock|Wizard', '', '', 'Light', '', 'Fiend'),
(284, 'Scrying', 'You can see and hear a particular creature you choose that is on the same plane of existence as you. The target must make a wisdom saving throw, which is modified by how well you know the target and the sort of physical connection you have to it. If a target knows you&lsquo;re casting this spell, it can fail the saving throw voluntarily if it wants to be observed.<br /><strong>Knowledge &amp; Save Modifier</strong>Secondhand (you have heard of the target) +5Firsthand (you have met the target) +0Familiar (you know the target well) -5<br /><strong>Connection &amp; Save Modifier</strong>Likeness or picture -2Possession or garment -4Body part, lock of hair, bit of nail, or the like -10On a successful save, the target isn’t affected, and you can’t use this spell against it again for 24 hours.On a failed save, the spell creates an invisible sensor within 10 feet of the target. You can see and hear through the sensor as if you were there. The sensor moves with the target, remaining within 10 feet of it for the duration. A creature that can see invisible objects sees the sensor as a luminous orb about the size of your fist.Instead of targeting a creature, you can choose a location you have seen before as the target of this spell. When you do, the sensor appears at that location and doesn’t move.', '', 'phb 273', 'Self', 'V|S|M', 'A focus worth at least 1,000 gp, such as a crystal ball, a silver mirror, or a font filled with holy water.', 'no', 'Up to 10 minutes', 'yes', '10 minutes', '5th-level', 'Divination', 'Bard|Cleric|Druid|Paladin|Warlock|Wizard', '', 'Coast|Swamp', 'Knowledge|Light', 'Vengeance', ''),
(285, 'Searing Smite', '', 'Damage increases by 1d6 for each slot level above 1st.', 'phb 274', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(286, 'Secret Chest', 'You hide a chest, and all its contents, on the Ethereal Plane. You must touch the chest and the miniature replica that serves as a material component for the spell. The chest can contain up to 12 cubic feet of nonliving material (3 feet by 2 feet by 2 feet).While the chest remains on the Ethereal Plane, you can use an action and touch the replica to recall the chest. It appears in an unoccupied space on the ground within 5 feet of you. You can send the chest back to the Ethereal Plane by using an action and touching both the chest and the replica.After 60 days, there is a cumulative 5 percent chance per day that the spell&lsquo;s effect ends. This effect ends if you cast this spell again, if the smaller replica chest is destroyed, or if you choose to end the spell as an action. If the spell ends and the larger chest is on the Ethereal Plane, it is irretrievably lost.', '', 'phb 254', 'Touch', 'V|S|M', 'An exquisite chest, 3 feet by 2 feet by 2 feet, constructed from rare materials worth at least 5,000 gp, and a Tiny replica made from the same materials worth at least 50 gp.', 'no', 'Instantaneous', 'no', '1 action', '4th-level', 'Conjuration', 'Wizard', '', '', '', '', ''),
(287, 'See Invisibility', 'For the duration of the spell, you see invisible creatures and objects as if they were visible, and you can see through Ethereal. The ethereal objects and creatures appear ghostly translucent.', '', 'phb 274', 'Self', 'V|S|M', 'A dash of talc and a small amount of silver powder.', 'no', '1 hour', 'no', '1 action', '2nd-level', 'Divination', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(288, 'Seeming', 'This spell allows you to change the appearance of any number of creatures that you can see within range. You give each target you choose a new, illusory appearance. An unwilling target can make a charisma saving throw, and if it succeeds, it is unaffected by this spell.The spell disguises physical appearance as well as clothing, armor, weapons, and equipment. You can make each creature seem 1 foot shorter or taller and appear thin, fat, or in between. You can&lsquo;t change a target&lsquo;s body type, so you must choose a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you. The spell lasts for the duration, unless you use your action to dismiss it sooner.The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to a creature&lsquo;s outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel the creature&lsquo;s head and hair. If you use this spell to appear thinner than you are, the hand of someone who reaches out to touch you would bump into you while it was seemingly still in midair.A creature can use its action to inspect a target and make an Intelligence (Investigation) check against your spell save DC. If it succeeds, it becomes aware that the target is disguised.', '', 'phb 274', '30 feet', 'V|S', '', 'no', '8 hours', 'no', '1 action', '5th-level', 'Illusion', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', 'Archfey'),
(289, 'Sending', 'You send a short message of twenty-five words or less to a creature with which you are familiar. The creature hears the message in its mind, recognizes you as the sender if it knows you, and can answer in a like manner immediately. The spell enables creatures with Intelligence scores of at least 1 to understand the meaning of your message.You can send the message across any distance and even to other planes of existence, but if the target is on a different plane than you, there is a 5 percent chance that the message doesn’t arrive.', '', 'phb 274', 'Unlimited', 'V|S|M', 'A short piece of fine copper wire.', 'no', '1 round', 'no', '1 action', '3rd-level', 'Evocation', 'Bard|Cleric|Warlock|Wizard', '', '', '', '', 'Great Old One'),
(290, 'Sequester', 'By means of this spell, a willing creature or an object can be hidden away, safe from detection for the duration. When you cast the spell and touch the target, it becomes invisible and can’t be targeted by divination spells or perceived through scrying sensors created by divination spells.If the target is a creature, it falls into a state of suspended animation. Time ceases to flow for it, and it doesn’t grow older.You can set a condition for the spell to end early. The condition can be anything you choose, but it must occur or be visible within 1 mile of the target. Examples include “after 1,000 years” or “when the tarrasque awakens.” This spell also ends if the target takes any damage.', '', 'phb 274', 'Touch', 'V|S|M', 'A powder composed of diamond, emerald, ruby, and sapphire dust worth at least 5,000 gp, which the spell consumes.', 'no', 'Until dispelled', 'no', '1 action', '7th-level', 'Transmutation', 'Wizard', '', '', '', '', ''),
(291, 'Shapechange', 'You assume the form of a different creature for the duration. The new form can be of any creature with a challenge rating equal to your level or lower. The creature can’t be a construct or an undead, and you must have seen the sort of creature at least once. You transform into an average example of that creature, one without any class levels or the Spellcasting trait.Your game statistics are replaced by the statistics of the chosen creature, though you retain your alignment and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus listed in its statistics is higher than yours, use the creature’s bonus in place of yours. You can’t use any legendary actions or lair actions of the new form.You assume the hit points and Hit Dice of the new form. When you revert to your normal form, you return to the number of hit points you had before you transformed. If you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form. As long as the excess damage doesn’t reduce your normal form to 0 hit points, you aren’t knocked unconscious.You retain the benefit of any features from your class, race, or other source and can use them, provided that your new form is physically capable of doing so. You can’t use any special senses you have (for example, darkvision) unless your new form also has that sense. You can only speak if the creature can normally speak.When you transform, you choose whether your equipment falls to the ground, merges into the new form, or is worn by it. Worn equipment functions as normal. The DM determines whether it is practical for the new form to wear a piece of equipment, based on the creature’s shape and size. Your equipment doesn’t change shape or size to match the new form, and any equipment that the new form can’t wear must either fall to the ground or merge into your new form. Equipment that merges has no effect in that state.During this spell’s duration, you can use your action to assume a different form following the same restrictions and rules for the original form, with one exception: if your new form has more hit points than your current one, your hit points remain at their current value.', '', 'phb 274', 'Self', 'V|S|M', 'A jade circlet worth at least 1,500 gp, which you must place on your head before you cast the spell.', 'no', 'Up to 1 hour', 'yes', '1 action', '9th-level', 'Transmutation', 'Druid|Wizard', '', '', '', '', ''),
(292, 'Shatter', 'A strong resonant sound painfully intense sounds of a desired point in the range of the spell. Each creature has a sphere with a 10-foot-radius sphere centered on that point must make a constitution saving throw or it suffers 3d8 thunder damage. If successful, the damage is halved. A creature made of inorganic materials such as stone, crystal or metal, makes its saving throw with a disadvantage.A non-magical item that is not worn or carried also suffers damage if it is in the area of ??the spell.', 'When you cast this spell using a 3 or higher level spell slot, the damage of the spell increases by 1d8 for each level of higher spell slot 2.', 'phb 275', '60 feet', 'V|S|M', 'A burst of mica.', 'no', 'Instantaneous', 'no', '1 action', '2nd-level', 'Evocation', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', 'Tempest', '', ''),
(293, 'Shield', 'An invisible barrier of magical force appears and protects you. Until the start of your next turn, you have a +5 bonus to AC, including against the triggering attack, and you take no damage from magic missile.', '', 'phb 275', 'Self', 'V|S', '', 'no', '1 round', 'no', '1 reaction', '1st-level', 'Abjuration', 'Sorcerer|Wizard', '', '', '', '', ''),
(294, 'Shield of Faith', 'A shimmering field appears and surrounds a creature of your choice within range, granting it a +2 bonus to AC for the duration.', '', 'phb 275', '60 feet', 'V|S|M', 'A small parchment with a bit of holy text written on it.', 'no', 'Up to 10 minutes', 'yes', '1 bonus action', '1st-level', 'Abjuration', 'Cleric|Paladin', '', '', 'War', '', ''),
(295, 'Shillelagh', 'The wood of a club or a quarterstaff you are holding is imbued with nature’s power. For the duration, you can use your spellcasting ability instead of Strength for the attack and damage rolls of melee attacks using that weapon, and the weapon’s damage die becomes a d8. The weapon also becomes magical, if it isn’t already. The spell ends if you cast it again or if you let go of the weapon.', '', 'phb 275', 'Touch', 'V|S|M', 'Mistletoe, a shamrock leaf, and a club or quarterstaff.', 'no', '1 minute', 'no', '1 bonus action', 'Cantrip', 'Transmutation', 'Druid', '', '', '', '', ''),
(296, 'Shocking Grasp', 'Lightning springs from your hand to deliver a shock to a creature you try to touch. Make a melee spell attack against the target. You have advantage on the attack roll if the target is wearing armor made of metal. On a hit, the target takes 1d8 lightning damage, and it can’t take reactions until the start of its next turn.The spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', '', 'phb 275', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'Cantrip', 'Evocation', 'Sorcerer|Wizard', '', '', '', '', ''),
(297, 'Silence', 'For the duration, no sound can be created within or pass through a 20-foot-radius sphere centered on a point you choose within range. Any creature or object entirely inside the sphere is immune to thunder damage, and creatures are deafened while entirely inside it.Casting a spell that includes a verbal component is impossible there.', '', 'phb 275', '120 feet', 'V|S', '', 'yes', 'Up to 10 minutes', 'yes', '1 action', '2nd-level', 'Illusion', 'Bard|Cleric|Druid|Ranger|Ritual Caster', '', 'Desert', '', '', ''),
(298, 'Silent Image', 'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 15-foot cube. The image appears at a spot within range and lasts for the duration. The image is purely visual; it isn’t accompanied by sound, smell, or other sensory effects.You can use your action to cause the image to move to any spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking.Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image.', '', 'phb 276', '60 feet', 'V|S|M', 'A bit of fleece.', 'no', 'Up to 10 minutes', 'yes', '1 action', '1st-level', 'Illusion', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(299, 'Simulacrum', 'You shape an illusory duplicate of one beast or humanoid that is within range for the entire casting time of the spell. The duplicate is a creature, partially real and formed from ice or snow, and it can take actions and otherwise be affected as a normal creature. It appears to be the same as the original, but it has half the creature’s hit point maximum and is formed without any equipment. Otherwise, the illusion uses all the statistics of the creature it duplicates.The simulacrum is friendly to you and creatures you designate. It obeys your spoken commands, moving and acting in accordance with your wishes and acting on your turn in combat. The simulacrum lacks the ability to learn or become more powerful, so it never increases its level or other abilities, nor can it regain expended spell slots.If the simulacrum is damaged, you can repair it in an alchemical laboratory, using rare herbs and minerals worth 100 gp per hit point it regains. The simulacrum lasts until it drops to 0 hit points, at which point it reverts to snow and melts instantly.If you cast this spell again, any currently active duplicates you created with this spell are instantly destroyed.', '', 'phb 276', 'Touch', 'V|S|M', 'Snow or ice in quantities sufficient to made a life-size copy of the duplicated creature; some hair, fingernail clippings, or other piece of that creature’s body placed inside the snow or ice; and powdered ruby worth 1,500 gp, sprinkled over the duplicate and consumed by the spell.', 'no', 'Until dispelled', 'no', '12 hours', '7th-level', 'Illusion', 'Wizard', '', '', '', '', ''),
(300, 'Sleep', 'This spell sends creatures into a magical slumber. Roll 5d8; the total is how many hit points of creatures this spell can affect. Creatures within 20 feet of a point you choose within range are affected in ascending order of their current hit points (ignoring unconscious creatures).Starting with the creature that has the lowest current hit points, each creature affected by this spell falls unconscious until the spell ends, the sleeper takes damage, or someone uses an action to shake or slap the sleeper awake. Subtract each creature’s hit points from the total before moving on to the creature with the next lowest hit points. A creature’s hit points must be equal to or less than the remaining total for that creature to be affected.Undead and creatures immune to being charmed aren’t affected by this spell.', 'When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d8 for each slot level above 1st.', 'phb 276', '90 feet', 'V|S|M', 'A pinch of fine sand, rose petals, or a cricket.', 'no', '1 minute', 'no', '1 action', '1st-level', 'Enchantment', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', 'Archfey'),
(301, 'Sleet Storm', 'Until the spell ends, freezing rain and sleet fall in a 20-foot-tall cylinder with a 40-foot radius centered on a point you choose within range. The area is heavily obscured, and exposed flames in the area are doused.The ground in the area is covered with slick ice, making it difficult terrain. When a creature enters the spell’s area for the first time on a turn or starts its turn there, it must make a dexterity saving throw. On a failed save, it falls prone.If a creature is concentrating in the spell’s area, the creature must make a successful constitution saving throw against your spell save DC or lose concentration.', '', 'phb 276', '150 feet', 'V|S|M', 'A pinch of dust and a few drops of water.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Conjuration', 'Cleric|Druid|Sorcerer|Wizard', '', 'Arctic', 'Tempest', '', ''),
(302, 'Slow', 'You alter time around up to six creatures of your choice in a 40-foot cube within range. Each target must succeed on a wisdom saving throw or be affected by this spell for the duration.An affected target’s speed is halved, it takes a -2 penalty to AC and dexterity saving throws, and it can’t use reactions. On its turn, it can use either an action or a bonus action, not both. Regardless of the creature’s abilities or magic items, it can’t make more than one melee or ranged attack during its turn.If the creature attempts to cast a spell with a casting time of 1 action, roll a d20. On an 11 or higher, the spell doesn’t take effect until the creature’s next turn, and the creature must use its action on that turn to complete the spell. If it can’t, the spell is wasted.A creature affected by this spell makes another wisdom saving throw at the end of its turn. On a successful save, the effect ends for it.', '', 'phb 277', '120 feet', 'V|S|M', 'A drop of molasses.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Transmutation', 'Druid|Sorcerer|Wizard', '', 'Arctic', '', '', ''),
(303, 'Spare the Dying', '', '', 'phb 277', 'Touch', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Necromancy', 'Cleric', '', '', '', '', ''),
(304, 'Speak with Animals', 'You gain the ability to comprehend and verbally communicate with beasts for the duration. The knowledge and awareness of many beasts is limited by their intelligence, but at a minimum, beasts can give you information about nearby locations and monsters, including whatever they can perceive or have perceived within the past day. You might be able to persuade a beast to perform a small favor for you, at the DM’s discretion.', '', 'phb 277', 'Self', 'V|S', '', 'yes', '10 minutes', 'no', '1 action', '1st-level', 'Divination', 'Bard|Cleric|Druid|Paladin|Ranger|Ritual Caster', '', '', 'Nature', 'Ancients', ''),
(305, 'Speak with Dead', 'You grant the semblance of life and intelligence to a corpse of your choice within range, allowing it to answer the questions you pose. The corpse must still have a mouth and can’t be undead. The spell fails if the corpse was the target of this spell within the last 10 days.Until the spell ends, you can ask the corpse up to five questions. The corpse knows only what it knew in life, including the languages it knew. Answers are usually brief, cryptic, or repetitive, and the corpse is under no compulsion to offer a truthful answer if you are hostile to it or it recognizes you as an enemy. This spell doesn’t return the creature’s soul to its body, only its animating spirit. Thus, the corpse can’t learn new information, doesn’t comprehend anything that has happened since it died, and can’t speculate about future events.', '', 'phb 277', '10 feet', 'V|S|M', 'Burning incense.', 'no', '10 minutes', 'no', '1 action', '3rd-level', 'Necromancy', 'Bard|Cleric', '', '', 'Knowledge', '', ''),
(306, 'Speak with Plants', 'You imbue plants within 30 feet of you with limited sentience and animation, giving them the ability to communicate with you and follow your simple commands. You can question plants about events in the spell’s area within the past day, gaining information about creatures that have passed, weather, and other circumstances.You can also turn difficult terrain caused by plant growth (such as thickets and undergrowth) into ordinary terrain that lasts for the duration. Or you can turn ordinary terrain where plants are present into difficult terrain that lasts for the duration, causing vines and branches to hinder pursuers, for example.Plants might be able to perform other tasks on your behalf, at the DM’s discretion. The spell doesn’t enable plants to uproot themselves and move about, but they can freely move branches, tendrils, and stalks.If a plant creature is in the area, you can communicate with it as if you shared a common language, but you gain no magical ability to influence it.This spell can cause the plants created by the entangle spell to release a restrained creature.', '', 'phb 277', 'Self', 'V|S', '', 'no', '10 minutes', 'no', '1 action', '3rd-level', 'Transmutation', 'Bard|Druid|Ranger', '', '', '', '', ''),
(307, 'Spider Climb', 'Until the spell ends, one willing creature you touch gains the ability to move up, down, and across vertical surfaces and upside down along ceilings, while leaving its hands free. The target also gains a climbing speed equal to its walking speed.', '', 'phb 277', 'Touch', 'V|S|M', 'A drop of bitumen and a spider.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Transmutation', 'Druid|Sorcerer|Warlock|Wizard', '', 'Forest|Mountain|Underdark', '', '', ''),
(308, 'Spike Growth', 'The ground in a 20-foot radius centered on a point within range twists and sprouts hard spikes and thorns. The area becomes difficult terrain for the duration. When a creature moves into or within the area, it takes 2d4 piercing damage for every 5 feet it travels.The development of land is camouflaged to look natural. Any creature that does not see the area when the spell is spell casts must make a Wisdom (Perception) opposite the DD backup your fate or it does not recognize the dangerous nature of the ground before entering.', '', 'phb 277', '150 feet', 'V|S|M', 'Seven sharp spines or seven twigs cut peak.', 'no', 'Up to 10 minutes', 'yes', '1 action', '2nd-level', 'Transmutation', 'Cleric|Druid|Ranger', '', 'Arctic|Mountain', 'Nature', '', ''),
(309, 'Spirit Guardians', 'You call forth spirits to protect you. They flit around you to a distance of 15 feet for the duration. If you are good or neutral, their spectral form appears angelic or fey (your choice). If you are evil, they appear fiendish.When you cast this spell, you can designate any number of creatures you can see to be unaffected by it. An affected creature’s speed is halved in the area, and when the creature enters the area for the first time on a turn or starts its turn there, it must make a wisdom saving throw. On a failed save, the creature takes 3d8 radiant damage (if you are good or neutral) or 3d8 necrotic damage (if you are evil). On a successful save, the creature takes half as much damage.', 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d8 for each slot level above 3rd.', 'phb 278', 'Self', 'V|S|M', 'A holy symbol.', 'no', 'Up to 10 minutes', 'yes', '1 action', '3rd-level', 'Conjuration', 'Cleric', '', '', 'War', '', ''),
(310, 'Spiritual Weapon', 'You create a floating, spectral weapon within range that lasts for the duration or until you cast this spell again. When you cast the spell, you can make a melee spell attack against a creature within 5 feet of the weapon. On a hit, the target takes force damage equal to 1d8 + your spellcasting ability modifier.As a bonus action on your turn, you can move the weapon up to 20 feet and repeat the attack against a creature within 5 feet of it.The weapon can take whatever form you choose. Clerics of deities who are associated with a particular weapon (as St. Cuthbert is known for his mace and Thor for his hammer) make this spell’s effect resemble that weapon.', 'When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for every two slot levels above the 2nd.', 'phb 278', '60 feet', 'V|S', '', 'no', '1 minute', 'no', '1 bonus action', '2nd-level', 'Evocation', 'Cleric', '', '', 'Life|War', '', ''),
(311, 'Staggering Smite', '', '', 'phb 278', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '4th-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(312, 'Stinking Cloud', 'You create a 20-foot-radius sphere of yellow, nauseating gas centered on a point within range. The cloud spreads around corners, and its area is heavily obscured. The cloud lingers in the air for the duration.Each creature that is completely within the cloud at the start of its turn must make a constitution saving throw against poison. On a failed save, the creature spends its action that turn retching and reeling. Creatures that don’t need to breathe or are immune to poison automatically succeed on this saving throw.A moderate wind (at least 10 miles per hour) disperses the cloud after 4 rounds. A strong wind (at least 20 miles per hour) disperses it after 1 round.', '', 'phb 278', '90 feet', 'V|S|M', 'A rotten egg or several skunk cabbage leaves.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Conjuration', 'Bard|Druid|Sorcerer|Warlock|Wizard', '', 'Swamp|Underdark', '', '', 'Fiend'),
(313, 'Stone Shape', 'You touch a stone object of Medium size or smaller or a section of stone no more than 5 feet in any dimension and form it into any shape that suits your purpose. So, for example, you could shape a large rock into a weapon, idol, or coffer, or make a small passage through a wall, as long as the wall is less than 5 feet thick. You could also shape a stone door or its frame to seal the door shut. The object you create can have up to two hinges and a latch, but finer mechanical detail isn’t possible.', '', 'phb 278', 'Touch', 'V|S|M', 'Soft clay, to be crudely worked into the desired shape for the stone object.', 'no', 'Instantaneous', 'no', '1 action', '4th-level', 'Transmutation', 'Cleric|Druid|Wizard', '', 'Mountain|Underdark', '', '', ''),
(314, 'Stoneskin', 'This spell turns the flesh of a willing creature you touch as hard as stone. Until the spell ends, the target has resistance to nonmagical bludgeoning, piercing, and slashing damage.', '', 'phb 278', 'Touch', 'V|S|M', 'Diamond dust worth 100 gp, which the spell consumes.', 'no', 'Up to 1 hour', 'yes', '1 action', '4th-level', 'Abjuration', 'Cleric|Druid|Paladin|Ranger|Sorcerer|Wizard', '', 'Mountain', 'War', 'Ancients', ''),
(315, 'Storm of Vengeance', 'A churning storm cloud forms, centered on a point you can see and spreading to a radius of 360 feet. Lightning flashes in the area, thunder booms, and strong winds roar. Each creature under the cloud (no more than 5,000 feet beneath the cloud) when it appears must make a constitution saving throw. On a failed save, a creature takes 2d6 thunder damage and becomes deafened for 5 minutes.Each round you maintain concentration on this spell, the storm produces additional effects on your turn. <br /><strong>Round 2.</strong> Acidic rain falls from the cloud. Each creature and object under the cloud takes 1d6 acid damage.<br /><strong>Round 3.</strong> You call six bolts of lightning from the cloud to strike six creatures or objects of your choice beneath the cloud. A given creature or object can’t be struck by more than one bolt. A struck creature must make a dexterity saving throw. The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one.<br /><strong>Round 4.</strong> Hailstones rain down from the cloud. Each creature under the cloud takes 2d6 bludgeoning damage.<br /><strong>Round 5-10.</strong> Gusts and freezing rain assail the area under the cloud. The area becomes difficult terrain and is heavily obscured. Each creature there takes 1d6 cold damage. Ranged weapon attacks in the area are impossible. The wind and rain count as a severe distraction for the purposes of maintaining concentration on spells. Finally, gusts of strong wind (ranging from 20 to 50 miles per hour) automatically disperse fog, mists, and similar phenomena in the area, whether mundane or magical.', '', 'phb 279', 'Sight', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '9th-level', 'Conjuration', 'Druid', '', '', '', '', ''),
(316, 'Suggestion', 'You suggest a course of activity (limited to a sentence or two) and magically influence a creature you can see within range that can hear and understand you. Creatures that can’t be charmed are immune to this effect. The suggestion must be worded in such a manner as to make the course of action sound reasonable. Asking the creature to stab itself, throw itself onto a spear, immolate itself, or do some other obviously harmful act ends the spell.The target must make a wisdom saving throw. On a failed save, it pursues the course of action you described to the best of its ability. The suggested course of action can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do.You can also specify conditions that will trigger a special activity during the duration. For example, you might suggest that a knight give her warhorse to the first beggar she meets. If the condition isn’t met before the spell expires, the activity isn’t performed.If you or any of your companions damage the target, the spell ends.', '', 'phb 279', '30 feet', 'V|M', 'A snake’s tongue and either a bit of honeycomb or a drop of sweet oil.', 'no', 'Up to 8 hours', 'yes', '1 action', '2nd-level', 'Enchantment', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', 'Knowledge', '', ''),
(317, 'Sunbeam', 'A beam of brilliant light flashes out from your hand in a 5-foot-wide, 60-foot-long line. Each creature in the line must make a constitution saving throw. On a failed save, a creature takes 6d8 radiant damage and is blinded until your next turn. On a successful save, it takes half as much damage and isn’t blinded by this spell. Undead and oozes have disadvantage on this saving throw.You can create a new line of radiance as your action on any turn until the spell ends.For the duration, a mote of brilliant radiance shines in your hand. It sheds bright light in a 30-foot radius and dim light for an additional 30 feet. This light is sunlight.', '', 'phb 279', 'Self', 'V|S|M', 'A magnifying glass.', 'no', 'Up to 1 minute', 'yes', '1 action', '6th-level', 'Evocation', 'Druid|Sorcerer|Wizard', '', '', '', '', ''),
(318, 'Sunburst', 'Brilliant sunlight flashes in a 60-foot radius centered on a point you choose within range. Each creature in that light must make a constitution saving throw. On a failed save, a creature takes 12d6 radiant damage and is blinded for 1 minute. On a successful save, it takes half as much damage and isn’t blinded by this spell. Undead and oozes have disadvantage on this saving throw.A creature blinded by this spell makes another constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.This spell dispels any darkness in its area that was created by a spell.', '', 'phb 279', '150 feet', 'V|S|M', 'Fire and a piece of sunstone.', 'no', 'Instantaneous', 'no', '1 action', '8th-level', 'Evocation', 'Druid|Sorcerer|Wizard', '', '', '', '', ''),
(319, 'Swift Quiver', '', '', 'phb 279', 'Touch', 'V|S|M', 'quiver with at least 1 ammo', 'no', '1 minute', 'yes', '1 bonus action', '5th-level', 'Transmutation', 'Ranger', '', '', '', '', ''),
(320, 'Symbol', 'When you cast this spell, you inscribe a harmful glyph either on a surface (such as a section of floor, a wall, or a table) or within an object that can be closed to conceal the glyph (such as a book, a scroll, or a treasure chest). If you choose a surface, the glyph can cover an area of the surface no larger than 10 feet in diameter. If you choose an object, that object must remain in its place; if the object is moved more than 10 feet from where you cast this spell, the glyph is broken, and the spell ends without being triggered.The glyph is nearly invisible, requiring an Intelligence (Investigation) check against your spell save DC to find it.You decide what triggers the glyph when you cast the spell. For glyphs inscribed on a surface, the most typical triggers include touching or stepping on the glyph, removing another object covering it, approaching within a certain distance of it, or manipulating the object that holds it. For glyphs inscribed within an object, the most common triggers are opening the object, approaching within a certain distance of it, or seeing or reading the glyph.You can further refine the trigger so the spell is activated only under certain circumstances or according to a creature’s physical characteristics (such as height or weight), or physical kind (for example, the ward could be set to affect hags or shapechangers). You can also specify creatures that don’t trigger the glyph, such as those who say a certain password.When you inscribe the glyph, choose one of the options below for its effect. Once triggered, the glyph glows, filling a 60-foot-radius sphere with dim light for 10 minutes, after which time the spell ends. Each creature in the sphere when the glyph activates is targeted by its effect, as is a creature that enters the sphere for the first time on a turn or ends its turn there. <br /><strong>Death.</strong> Each target must make a constitution saving throw, taking 10d 10 necrotic damage on a failed save, or half as much damage on a successful save.<br /><strong>Discord.</strong> Each target must make a constitution saving throw. On a failed save, a target bickers and argues with other creatures for 1 minute. During this time, it is incapable of meaningful communication and has disadvantage on attack rolls and ability checks.<br /><strong>Fear.</strong> Each target must make a wisdom saving throw and becomes frightened for 1 minute on a failed save. While frightened, the target drops whatever it is holding and must move at least 30 feet away from the glyph on each of its turns, if able.<br /><strong>Hopelessness.</strong> Each target must make a charisma saving throw. On a failed save, the target is overwhelmed with despair for 1 minute. During this time, it can’t attack or target any creature with harmful abilities, spells, or other magical effects.<br /><strong>Insanity.</strong> Each target must make an intelligence saving throw. On a failed save, the target is driven insane for 1 minute. An insane creature can’t take actions, can&lsquo;t understand what other creatures say, can’t read, and speaks only in gibberish. The DM controls its movement, which is erratic.<br /><strong>Pain.</strong> Each target must make a constitution saving throw and becomes incapacitated with excruciating pain for 1 minute on a failed save.<br /><strong>Sleep.</strong> Each target must make a wisdom saving throw and falls unconscious for 10 minutes on a failed save. A creature awakens if it takes damage or if someone uses an action to shake or slap it awake.<br /><strong>Stunning.</strong> Each target must make a wisdom saving throw and becomes stunned for 1 minute on a failed save.', '', 'phb 280', 'Touch', 'V|S|M', 'Mercury, phosphorus, and powdered diamond and opal with a total value of at least 1,000 gp, which the spell consumes.', 'no', 'Until dispelled', 'no', '1 minute', '7th-level', 'Abjuration', 'Bard|Cleric|Wizard', '', '', '', '', '');
INSERT INTO `cms_dnd_spells` (`ID`, `Name`, `Description`, `HLvl`, `Source`, `CastRange`, `Components`, `Materials`, `Ritual`, `Duration`, `Concentration`, `CastTime`, `Level`, `School`, `Class`, `Archetype`, `Circles`, `Domains`, `Oaths`, `Patrons`) VALUES
(321, 'Telekinesis', 'You gain the ability to move or manipulate creatures or objects by thought. When you cast the spell, and as your action each round for the duration, you can exert your will on one creature or object that you can see within range, causing the appropriate effect below. You can affect the same target round after round, or choose a new one at any time. If you switch targets, the prior target is no longer affected by the spell.<br /><strong>Creature.</strong> You can try to move a Huge or smaller creature. Make an ability check with your spellcasting ability contested by the creature’s Strength check. If you win the contest, you move the creature up to 30 feet in any direction, including upward but not beyond the range of this spell. Until the end of your next turn, the creature is restrained in your telekinetic grip. A creature lifted upward is suspended in mid-air.On subsequent rounds, you can use your action to attempt to maintain your telekinetic grip on the creature by repeating the contest.<br /><strong>Object.</strong> You can try to move an object that weighs up to 1,000 pounds. If the object isn’t being worn or carried, you automatically move it up to 30 feet in any direction, but not beyond the range of this spell.If the object is worn or carried by a creature, you must make an ability check with your spellcasting ability contested by that creature’s Strength check. If you succeed, you pull the object away from that creature and can move it up to 30 feet in any direction but not beyond the range of this spell.You can exert fine control on objects with your telekinetic grip, such as manipulating a simple tool, opening a door or a container, stowing or retrieving an item from an open container, or pouring the contents from a vial.', '', 'phb 280', '60 feet', 'V|S', '', 'no', 'Up to 10 minutes', 'yes', '1 action', '5th-level', 'Transmutation', 'Sorcerer|Warlock|Wizard', '', '', '', '', 'Great Old One'),
(322, 'Telepathic Bond', 'You forge a telepathic link among up to eight willing creatures of your choice within range, psychically linking each creature to all the others for the duration. Creatures with Intelligence scores of 2 or less aren’t affected by this spell.Until the spell ends, the targets can communicate telepathically through the bond whether or not they have a common language. The communication is possible over any distance, though it can’t extend to other planes of existence.', '', 'srd 183', '30 feet', 'V|S|M', 'Pieces of eggshell from two different kinds of creatures', 'yes', '1 hour', 'no', '1 action', '5th-level', 'Divination', 'Wizard', '', '', '', '', ''),
(323, 'Telepathy', '', '', 'phb 281', 'Unlimited', 'V|S|M', 'pair of linked silver rings', 'no', '24 hours', 'no', '1 action', '8th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(324, 'Teleport', 'This spell instantly transports you and up to eight willing creatures of your choice that you can see within range, or a single object that you can see within range, to a destination you select. If you target an object, it must be able to fit entirely inside a 10-foot cube, and it can’t be held or carried by an unwilling creature.The destination you choose must be known to you, and it must be on the same plane of existence as you. Your familiarity with the destination determines whether you arrive there successfully. The DM rolls d100 and consults the table.', '', 'phb 281', '10 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '7th-level', 'Conjuration', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(325, 'Teleportation Circle', 'As you cast the spell, you draw a 10-foot-diameter circle on the ground inscribed with sigils that link your location to a permanent teleportation circle of your choice whose sigil sequence you know and that is on the same plane of existence as you. A shimmering portal opens within the circle you drew and remains open until the end of your next turn. Any creature that enters the portal instantly appears within 5 feet of the destination circle or in the nearest unoccupied space if that space is occupied.Many major temples, guilds, and other important places have permanent teleportation circles inscribed somewhere within their confines. Each such circle includes a unique sigil sequence—a string of magical runes arranged in a particular pattern. When you first gain the ability to cast this spell, you learn the sigil sequences for two destinations on the Material Plane, determined by the DM. You can learn additional sigil sequences during your adventures. You can commit a new sigil sequence to memory after studying it for 1 minute.You can create a permanent teleportation circle by casting this spell in the same location every day for one year. You need not use the circle to teleport when you cast the spell in this way.', '', 'phb 282', '10 feet', 'V|M', 'Rare chalks and inks infused with precious gems with 50 gp, which the spell consumes.', 'no', '1 round', 'no', '1 minute', '5th-level', 'Conjuration', 'Bard|Sorcerer|Wizard', '', '', '', '', ''),
(326, 'Thaumaturgy', 'You manifest a minor wonder, a sign of supernatural power, within range. You create one of the following magical effects within range.- Your voice booms up to three times as loud as normal for 1 minute.- You cause flames to flicker, brighten, dim, or change color for 1 minute.- You cause harmless tremors in the ground for 1 minute.- You create an instantaneous sound that originates from a point of your choice within range, such as a rumble of thunder, the cry of a raven, or ominous whispers.- You instantaneously cause an unlocked door or window to fly open or slam shut.- You alter the appearance of your eyes for 1 minute.If you cast this spell multiple times, you can have up to three of its 1-minute effects active at a time, and you can dismiss such an effect as an action.', '', 'phb 282', '30 feet', 'V', '', 'no', '1 minute', 'no', '1 action', 'Cantrip', 'Transmutation', 'Cleric', '', '', '', '', ''),
(327, 'Thorn Whip', '', 'Damage increases by an additional 1d12 at 5th, 11th, and 17th level.', 'phb 282', '30 ft.', 'V|S|M', 'stem of thorny plant', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Transmutation', 'Druid', '', '', 'Nature', '', ''),
(328, 'Thunderous Smite', '', '', 'phb 282', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(329, 'Thunderwave', 'A wave of thunderous force sweeps out from you. Each creature in a 15-foot cube originating from you must make a constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn’t pushed.In addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell’s effect, and the spell emits a thunderous boom audible out to 300 feet.', 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.', 'phb 282', 'Self', 'V|S', '', 'no', 'Instantaneous', 'no', '1 action', '1st-level', 'Evocation', 'Bard|Cleric|Druid|Sorcerer|Wizard', '', '', 'Tempest', '', ''),
(330, 'Time Stop', 'You briefly stop the flow of time for everyone but yourself. No time passes for other creatures, while you take 1d4 + 1 turns in a row, during which you can use actions and move as normal.This spell ends if one of the actions you use during this period, or any effects that you create during this period, affects a creature other than you or an object being worn or carried by someone other than you. In addition, the spell ends if you move to a place more than 1,000 feet from the location where you cast it.', '', 'phb 283', 'Self', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Transmutation', 'Sorcerer|Wizard', '', '', '', '', ''),
(331, 'Tiny Hut', 'A 10-foot-radius immobile dome of force springs into existence around and above you and remains stationary for the duration. The spell ends if you leave its area.Nine creatures of Medium size or smaller can fit inside the dome with you. The spell fails if its area includes a larger creature or more than nine creatures. Creatures and objects within the dome when you cast this spell can move through it freely. All other creatures and objects are barred from passing through it. Spells and other magical effects can’t extend through the dome or be cast through it. The atmosphere inside the space is comfortable and dry, regardless of the weather outside.Until the spell ends, you can command the interior to become dimly lit or dark. The dome is opaque from the outside, of any color you choose, but it is transparent from the inside.', '', 'phb 255', 'Self', 'V|S|M', 'A small crystal bead.', 'yes', '8 hours', 'no', '1 minute', '3rd-level', 'Evocation', 'Bard|Ritual Caster|Wizard', '', '', '', '', ''),
(332, 'Tongues', 'This spell grants the creature you touch the ability to understand any spoken language it hears. Moreover, when the target speaks, any creature that knows at least one language and can hear the target understands what it says.', '', 'phb 283', 'Touch', 'V|M', 'A small clay model of a ziggurat.', 'no', '1 hour', 'no', '1 action', '3rd-level', 'Divination', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(333, 'Transport via Plants', 'This spell creates a magical link between a Large or larger inanimate plant within range and another plant, at any distance, on the same plane of existence. You must have seen or touched the destination plant at least once before. For the duration, any creature can step into the target plant and exit from the destination plant by using 5 feet of movement.', '', 'phb 283', '10 feet', 'V|S', '', 'no', '1 round', 'no', '1 action', '6th-level', 'Conjuration', 'Druid', '', '', '', '', ''),
(334, 'Tree Stride', 'You gain the ability to enter a tree and move from inside it to inside another tree of the same kind within 500 feet. Both trees must be living and at least the same size as you. You must use 5 feet of movement to enter a tree. You instantly know the location of all other trees of the same kind within 500 feet and, as part of the move used to enter the tree, can either pass into one of those trees or step out of the tree you’re in. You appear in a spot of your choice within 5 feet of the destination tree, using another 5 feet of movement. If you have no movement left, you appear within 5 feet of the tree you entered.You can use this transportation ability once per round for the duration. You must end each turn outside a tree.', '', 'phb 283', 'Self', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '5th-level', 'Conjuration', 'Cleric|Druid|Paladin|Ranger', '', 'Forest', 'Nature', 'Ancients', ''),
(335, 'True Polymorph', 'Choose one creature or nonmagical object that you can see within range. You transform the creature into a different creature, the creature into an object, or the object into a creature (the object must be neither worn nor carried by another creature). The transformation lasts for the duration, or until the target drops to 0 hit points or dies. If you concentrate on this spell for the full duration, the transformation becomes permanent.Shapechangers aren’t affected by this spell. An unwilling creature can make a wisdom saving throw, and if it succeeds, it isn’t affected by this spell.<br /><strong>Creature into Creature.</strong> If you turn a creature into another kind of creature, the new form can be any kind you choose whose challenge rating is equal to or less than the target’s (or its level, if the target doesn’t have a challenge rating). The target’s game statistics, including mental ability scores, are replaced by the statistics of the new form. It retains its alignment and personality.The target assumes the hit points of its new form, and when it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious.The creature is limited in the actions it can perform by the nature of its new form, and it can’t speak, cast spells, or take any other action that requires hands or speech unless its new form is capable of such actions.The target’s gear melds into the new form. The creature can’t activate, use, wield, or otherwise benefit from any of its equipment.<br /><strong>Object into Creature.</strong> You can turn an object into any kind of creature, as long as the creature’s size is no larger than the object’s size and the creature’s challenge rating is 9 or lower. The creature is friendly to you and your companions. It acts on each of your turns. You decide what action it takes and how it moves. The DM has the creature’s statistics and resolves all of its actions and movement.If the spell becomes permanent, you no longer control the creature. It might remain friendly to you, depending on how you have treated it.<br /><strong>Creature into Object.</strong> If you turn a creature into an object, it transforms along with whatever it is wearing and carrying into that form. The creature’s statistics become those of the object, and the creature has no memory of time spent in this form, after the spell ends and it returns to its normal form.', '', 'phb 283', '30 feet', 'V|S|M', 'A drop of mercury, a dollop of gum arabic, and a wisp of smoke.', 'no', 'Up to 1 hour', 'yes', '1 action', '9th-level', 'Transmutation', 'Bard|Warlock|Wizard', '', '', '', '', ''),
(336, 'True Resurrection', 'You touch a creature that has been dead for no longer than 200 years and that died for any reason except old age. If the creature’s soul is free and willing, the creature is restored to life with all its hit points.This spell closes all wounds, neutralizes any poison, cures all diseases, and lifts any curses affecting the creature when it died. The spell replaces damaged or missing organs and limbs.The spell can even provide a new body if the original no longer exists, in which case you must speak the creature’s name. The creature then appears in an unoccupied space you choose within 10 feet of you.', '', 'phb 284', 'Touch', 'V|S|M', 'A sprinkle of holy water and diamonds worth at least 25,000gp, which the spell consumes.', 'no', 'Instantaneous', 'no', '1 hour', '9th-level', 'Necromancy', 'Cleric|Druid', '', '', '', '', ''),
(337, 'True Seeing', 'This spell gives the willing creature you touch the ability to see things as they actually are. For the duration, the creature has truesight, notices secret doors hidden by magic, and can see into the Ethereal Plane, all out to a range of 120 feet.', '', 'phb 284', 'Touch', 'V|S|M', 'An ointment for the eyes that costs 25gp; is made from mushroom powder, saffron, and fat; and is consumed by the spell.', 'no', '1 hour', 'no', '1 action', '6th-level', 'Divination', 'Bard|Cleric|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(338, 'True Strike', 'You extend your hand and point a finger at a target in range. Your magic grants you a brief insight into the target’s defenses. On your next turn, you gain advantage on your first attack roll against the target, provided that this spell hasn’t ended.', '', 'phb 284', '30 feet', 'S', '', 'no', 'Up to 1 round', 'yes', '1 action', 'Cantrip', 'Divination', 'Bard|Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(339, 'Tsunami', '', '', 'phb 284', 'Sight', 'V|S', '', 'no', '6 rounds', 'yes', '1 minute', '8th-level', 'Conjuration', 'Druid', '', '', '', '', ''),
(340, 'Unseen Servant', 'This spell creates an invisible, mindless, shapeless force that performs simple tasks at your command until the spell ends. The servant springs into existence in an unoccupied space on the ground within range. It has AC 10, 1 hit point, and a Strength of 2, and it can’t attack. If it drops to 0 hit points, the spell ends.Once on each of your turns as a bonus action, you can mentally command the servant to move up to 15 feet and interact with an object. The servant can perform simple tasks that a human servant could do, such as fetching things, cleaning, mending, folding clothes, lighting fires, serving food, and pouring wind. Once you give the command, the servant performs the task to the best of its ability until it completes the task, then waits for your next command.If you command the servant to perform a task that would move it more than 60 feet away from you, the spell ends.', '', 'phb 284', '60 feet', 'V|S|M', 'A piece of string and a bit of wood.', 'yes', '1 hour', 'no', '1 action', '1st-level', 'Conjuration', 'Bard|Ritual Caster|Warlock|Wizard', '', '', '', '', ''),
(341, 'Vampiric Touch', 'The touch of your shadow-wreathed hand can siphon life force from others to heal your wounds. Make a melee spell attack against a creature within your reach. On a hit, the target takes 3d6 necrotic damage, and you regain hit points equal to half the amount of necrotic damage dealt. Until the spell ends, you can make the attack again on each of your turns as an action.', 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.', 'phb 285', 'Self', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Necromancy', 'Warlock|Wizard', '', '', '', '', ''),
(342, 'Vicious Mockery', '', 'Damage increases by an additional 1d4 at 5th, 11th, and 17th level.', 'phb 285', '60 ft.', 'V', '', 'no', 'Instantaneous', 'no', '1 action', 'cantrip', 'Enchantment', 'Bard', '', '', '', '', ''),
(343, 'Wall of Fire', 'You create a wall of fire on a solid surface within range. You can make the wall up to 60 feet long, 20 feet high, and 1 foot thick, or a ringed wall up to 20 feet in diameter, 20 feet high, and 1 foot thick. The wall is opaque and lasts for the duration.When the wall appears, each creature within its area must make a Dexterity saving throw. On a failed save, a creature takes 5d8 fire damage, or half as much damage on a successful save.One side of the wall, selected by you when you cast this spell, deals 5d8 fire damage to each creature that ends its turn within 10 feet o f that side or inside the wall. A creature takes the same damage when it enters the wall for the first time on a turn or ends its turn there. The other side o f the wall deals no damage.The other side of the wall deals no damage.', 'When you cast this spell using a level spell slot 5 or more, the damage of the spell increases by 1d8 for each level of higher spell slot to 4.', 'phb 285', '120 feet', 'V|S|M', 'A small piece of phosphorus.', 'no', 'Up to 1 minute', 'yes', '1 action', '4th-level', 'Evocation', 'Cleric|Druid|Sorcerer|Warlock|Wizard', '', '', 'Light', '', 'Fiend'),
(344, 'Wall of Force', 'An invisible wall of force springs into existence at a point you choose within range. The wall appears in any orientation you choose, as a horizontal or vertical barrier or at an angle. It can be free floating or resting on a solid surface. You can form it into a hemispherical dome or a sphere with a radius of up to 10 feet, or you can shape a flat surface made up of ten 10-foot-by-10-foot panels. Each panel must be contiguous with another panel. In any form, the wall is 1/4 inch thick. It lasts for the duration. If the wall cuts through a creature’s space when it appears, the creature is pushed to one side of the wall (your choice which side).Nothing can physically pass through the wall. It is immune to all damage and can’t be dispelled by dispel magic. A disintegrate spell destroys the wall instantly, however. The wall also extends into the Ethereal Plane, blocking ethereal travel through the wall.', '', 'phb 285', '120 feet', 'V|S|M', 'A pinch of powder made by crushing a clear gemstone.', 'no', 'Up to 10 minutes', 'yes', '1 action', '5th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(345, 'Wall of Ice', 'You create a wall of ice on a solid surface within range. You can form it into a hemispherical dome or a sphere with a radius of up to 10 feet, or you can shape a flat surface made up of ten 10-foot-square panels. Each panel must be contiguous with another panel. In any form, the wall is 1 foot thick and lasts for the duration.If the wall cuts through a creature’s space when it appears, the creature within its area is pushed to one side of the wall and must make a dexterity saving throw. On a failed save, the creature takes 10d6 cold damage, or half as much damage on a successful save.The wall is an object that can be damaged and thus breached. It has AC 12 and 30 hit points per 10-foot section, and it is vulnerable to fire damage. Reducing a 10-foot section of wall to 0 hit points destroys it and leaves behind a sheet of frigid air in the space the wall occupied. A creature moving through the sheet of frigid air for the first time on a turn must make a constitution saving throw. That creature takes 5d6 cold damage on a failed save, or half as much damage on a successful one.', 'When you cast this spell using a spell slot of 7th level or higher, the damage the wall deals when it appears increases by 2d6, and the damage from passing through the sheet of frigid air increases by 1d6, for each slot level above 6th.', 'phb 285', '120 feet', 'V|S|M', 'A small piece of quartz.', 'no', 'Up to 10 minutes', 'yes', '1 action', '6th-level', 'Evocation', 'Wizard', '', '', '', '', ''),
(346, 'Wall of Stone', 'A nonmagical wall of solid stone springs into existence at a point you choose within range. The wall is 6 inches thick and is composed of ten 10-foot-by-10-foot panels. Each panel must be contiguous with at least one other panel. Alternatively, you can create 10-foot-by-20-foot panels that are only 3 inches thick.If the wall cuts through a creature’s space when it appears, the creature is pushed to one side of the wall (your choice). If a creature would be surrounded on all sides by the wall (or the wall and another solid surface), that creature can make a dexterity saving throw. On a success, it can use its reaction to move up to its speed so that it is no longer enclosed by the wall.The wall can have any shape you desire, though it can’t occupy the same space as a creature or object. The wall doesn’t need to be vertical or rest on any firm foundation. It must, however, merge with and be solidly supported by existing stone. Thus, you can use this spell to bridge a chasm or create a ramp.If you create a span greater than 20 feet in length, you must halve the size of each panel to create supports. You can crudely shape the wall to create crenellations, battlements, and so on.The wall is an object made of stone that can be damaged and thus breached. Each panel has AC 15 and 30 hit points per inch of thickness. Reducing a panel to 0 hit points destroys it and might cause connected panels to collapse at the DM’s discretion.If you maintain your concentration on this spell for its whole duration, the wall becomes permanent and can’t be dispelled. Otherwise, the wall disappears when the spell ends.', '', 'phb 287', '120 feet', 'V|S|M', 'A small block of granite.', 'no', 'Up to 10 minutes', 'yes', '1 action', '5th-level', 'Evocation', 'Druid|Sorcerer|Wizard', '', 'Desert|Mountain', '', '', ''),
(347, 'Wall of Thorns', 'You create a wall of tough, pliable, tangled brush bristling with needle-sharp thorns. The wall appears within range on a solid surface and lasts for the duration. You choose to make the wall up to 60 feet long, 10 feet high, and 5 feet thick or a circle that has a 20-foot diameter and is up to 20 feet high and 5 feet thick. The wall blocks line of sight.When the wall appears, each creature within its area must make a dexterity saving throw. On a failed save, a creature takes 7d8 piercing damage, or half as much damage on a successful save.A creature can move through the wall, albeit slowly and painfully. For every 1 foot a creature moves through the wall, it must spend 4 feet of movement. Furthermore, the first time a creature enters the wall on a turn or ends its turn there, the creature must make a dexterity saving throw. It takes 7d8 slashing damage on a failed save, or half as much damage on a successful one.', 'When you cast this spell using a spell slot of 7th level or higher, both types of damage increase by 1d8 for each slot level above 6th.', 'phb 287', '120 feet', 'V|S|M', 'A handful of thorns.', 'no', 'Up to 10 minutes', 'yes', '1 action', '6th-level', 'Conjuration', 'Druid', '', '', '', '', ''),
(348, 'Warding Bond', 'This spell wards a willing creature you touch and creates a mystic connection between you and the target until the spell ends. While the target is within 60 feet of you, it gains a +1 bonus to AC and saving throws, and it has resistance to all damage. Also, each time it takes damage, you take the same amount of damage.The spell ends if you drop to 0 hit points or if you and the target become separated by more than 60 feet.It also ends if the spell is cast again on either of the connected creatures. You can also dismiss the spell as an action.', '', 'phb 287', 'Touch', 'V|S|M', 'A pair of platinum rings worth at least 50gp each, which you and the target must wear for the duration.', 'no', '1 hour', 'no', '1 action', '2nd-level', 'Abjuration', 'Cleric', '', '', '', '', ''),
(349, 'Water Breathing', 'This spell gives a maximum of ten willing creatures within range and you can see, the ability to breathe underwater until the end of its term. Affected creatures also retain their normal breathing pattern.', '', 'phb 287', '30 feet', 'V|S|M', 'A short piece of reed or straw.', 'yes', '24 hours', 'no', '1 action', '3rd-level', 'Transmutation', 'Druid|Ranger|Ritual Caster|Sorcerer|Wizard', '', 'Coast', '', '', ''),
(350, 'Water Walk', 'This spell grants the ability to move across any liquid surface—such as water, acid, mud, snow, quicksand, or lava—as if it were harmless solid ground (creatures crossing molten lava can still take damage from the heat). Up to ten willing creatures you can see within range gain this ability for the duration.If you target a creature submerged in a liquid, the spell carries the target to the surface of the liquid at a rate of 60 feet per round.', '', 'phb 287', '30 feet', 'V|S|M', '', 'yes', '1 hour', 'no', '1 action', '3rd-level', 'Transmutation', 'Cleric|Druid|Ranger|Ritual Caster|Sorcerer', '', 'Coast|Swamp', '', '', ''),
(351, 'Web', 'You conjure a mass of thick, sticky webbing at a point of your choice within range. The webs fill a 20-foot cube from that point for the duration. The webs are difficult terrain and lightly obscure their area.If the webs aren’t anchored between two solid masses (such as walls or trees) or layered across a floor, wall, or ceiling, the conjured web collapses on itself, and the spell ends at the start of your next turn. Webs layered over a flat surface have a depth of 5 feet.Each creature that starts its turn in the webs or that enters them during its turn must make a dexterity saving throw. On a failed save, the creature is restrained as long as it remains in the webs or until it breaks free.A creature restrained by the webs can use its action to make a Strength check against your spell save DC. If it succeeds, it is no longer restrained.The webs are flammable. Any 5-foot cube of webs exposed to fire burns away in 1 round, dealing 2d4 fire damage to any creature that starts its turn in the fire.', '', 'phb 287', '60 feet', 'V|S|M', 'A bit of spiderweb.', 'no', 'Up to 1 hour', 'yes', '1 action', '2nd-level', 'Conjuration', 'Druid|Sorcerer|Wizard', '', 'Underdark', '', '', ''),
(352, 'Weird', 'Drawing on the deepest fears of a group of creatures, you create illusory creatures in their minds, visible only to them. Each creature in a 30-foot-radius sphere centered on a point of your choice within range must make a wisdom saving throw. On a failed save, a creature becomes frightened for the duration. The illusion calls on the creature’s deepest fears, manifesting its worst nightmares as an implacable threat. At the start of each of the frightened creature’s turns, it must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends for that creature.', '', 'phb 288', '120 feet', 'V|S', '', 'no', 'Up to 1 minute', 'yes', '1 action', '9th-level', 'Illusion', 'Wizard', '', '', '', '', ''),
(353, 'Wind Walk', 'You and up to ten willing creatures you can see within range assume a gaseous form for the duration, appearing as wisps of cloud. While in this cloud form, a creature has a flying speed of 300 feet and has resistance to damage from nonmagical weapons. The only actions a creature can take in this form are the Dash action or to revert to its normal form. Reverting takes 1 minute, during which time a creature is incapacitated and can’t move. Until the spell ends, a creature can revert to cloud form, which also requires the 1-minute transformation.If a creature is in cloud form and flying when the effect ends, the creature descends 60 feet per round for 1 minute until it lands, which it does safely. If it can’t land after 1 minute, the creature falls the remaining distance.', '', 'phb 288', '30 feet', 'V|S|M', 'Fire and holy water.', 'no', '8 hours', 'no', '1 minute', '6th-level', 'Transmutation', 'Druid', '', '', '', '', ''),
(354, 'Wind Wall', 'A wall of strong wind rises from the ground at a point you choose within range. You can make the wall up to 50 feet long, 15 feet high, and 1 foot thick. You can shape the wall in any way you choose so long as it makes one continuous path along the ground. The wall lasts for the duration.When the wall appears, each creature within its area must make a strength saving throw. A creature takes 3d8 bludgeoning damage on a failed save, or half as much damage on a successful one.The strong wind keeps fog, smoke, and other gases at bay. Small or smaller flying creatures or objects can’t pass through the wall. Loose, lightweight materials brought into the wall fly upward. Arrows, bolts, and other ordinary projectiles launched at targets behind the wall are deflected upward and automatically miss. (Boulders hurled by giants or siege engines, and similar projectiles, are unaffected.) Creatures in gaseous form can’t pass through it.', '', 'phb 288', '120 feet', 'V|S|M', 'A tiny fan and a feather of exotic origin.', 'no', 'Up to 1 minute', 'yes', '1 action', '3rd-level', 'Evocation', 'Cleric|Druid|Ranger', '', '', 'Nature', '', ''),
(355, 'Wish', 'Desire is the most powerful spell a deadly creature can throw. Simply by speaking aloud, you can alter the very foundations of reality as you wish.The most basic use of this spell is to duplicate any other out of 8th level or lower. You only need to fill out any conditions for that, not even the need for costly components. The fate simply takes effect. You can also create one of the following effects of your choice:- You create one object of up to 25,000 gp in value that isn’t a magic item. The object can be no more than 300 feet in any dimension, and it appears in an unoccupied space you can see on the ground.- You allow a maximum of twenty creatures you can see to get all their points and you dispel all effects affecting them, as described in greater restoration spell.- You grant to a maximum of ten creatures you can see resistance to a damage type you choose.- You grant to a maximum of ten creatures you can see immunity to a single spell or other magical effect for 8 hours. For example, you can immunize yourself and your companions against the attack of the Lich draining.- You cancel a recent event unique by requiring a new replacement jet diced any jet made during the last round (including your last turn). The reality is transformed to match the new launch. For example, a wish spell can cancel a successful saving throw enemy critical strike an opponent or ally saving throw missed. You can impose a jet with advantage or disadvantage, and you can choose to use the new result of the start or the old.You can also do other things than the above examples. Describe your wishes to your MD in the most accurate way possible. The DM is free to determine what happens in this case; more desire, the more likely it is that something goes wrong. This spell may simply fail, the effect you want might be only partially executed, or you may suffer from unpredictable consequences depending on your formulation wish. For example, want an enemy died could propel you to a future time when your enemy is no longer alive, you effectively eliminating the game. Similarly, desiring a legendary magical object or artifact could carry you instantaneously in the presence of the current owner of the object.Stress to cast this spell to produce an effect other than the reproduction of another spell weakens you. After undergoing this tension every time you cast a spell, and this until your next extended rest, you suffer 1d10 necrotic damage per spell level. This damage can not be reduced or avoided in any way. In addition, your Force falls to 3, if it is not already less than 3, for 2d4 days. For each day spent resting or practicing a minor activity, your recovery time decreases by 2 days. Finally, you have a 33% chance of never being able to cast the spell if you wish undergoes stress.', '', 'phb 288', 'Self', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '9th-level', 'Conjuration', 'Sorcerer|Wizard', '', '', '', '', ''),
(356, 'Witch Bolt', '', 'Damage increase by 1d12 for each slot level above 1st;', 'phb 289', '30 ft.', 'V|S|M', 'twig from tree struck by lightning', 'no', '1 minute', 'yes', '1 action', '1st-level', 'Evocation', 'Sorcerer|Warlock|Wizard', '', '', '', '', ''),
(357, 'Word of Recall', 'You and up to five willing creatures within 5 feet of you instantly teleport to a previously designated sanctuary. You and any creatures that teleport with you appear in the nearest unoccupied space to the spot you designated when you prepared your sanctuary (see below). If you cast this spell without first preparing a sanctuary, the spell has no effect.You must designate a sanctuary by casting this spell within a location, such as a temple, dedicated to or strongly linked to your deity. If you attempt to cast the spell in this manner in an area that isn’t dedicated to your deity, the spell has no effect.', '', 'phb 289', '5 feet', 'V', '', 'no', 'Instantaneous', 'no', '1 action', '6th-level', 'Conjuration', 'Cleric', '', '', '', '', ''),
(358, 'Wrathful Smite', '', '', 'phb 289', 'Self', 'V', '', 'no', '1 minute', 'yes', '1 bonus action', '1st-level', 'Evocation', 'Paladin', '', '', '', '', ''),
(359, 'Zone of Truth', 'You create a magical zone that guards against deception in a 15-foot-radius sphere centered on a point of your choice within range. Until the spell ends, a creature that enters the spell’s area for the first time on a turn or starts its turn there must make a Charisma saving throw. On a failed save, a creature can’t speak a deliberate lie while in the radius. You know whether each creature succeeds or fails on its saving throw.An affected creature is aware of the fate and can avoid answering questions she would normally have responded with a lie. Such a creature can remain evasive in his answers as they remain within the limits of truth.', '', 'phb 289', '60 feet', 'V|S', '', 'no', '10 minutes', 'no', '1 action', '2nd-level', 'Enchantment', 'Bard|Cleric|Paladin', '', '', '', 'Devotion', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_tools`
--

CREATE TABLE `cms_dnd_tools` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Value` int(100) DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_tools`
--

INSERT INTO `cms_dnd_tools` (`ID`, `Name`, `Category`, `Value`, `Weight`) VALUES
(1, 'Alchemist\'s supplies', 'Artisan\'s Tools', NULL, NULL),
(2, 'Brewer\'s supplies', 'Artisan\'s Tools', NULL, NULL),
(3, 'Calligrapher\'s supplies', 'Artisan\'s Tools', NULL, NULL),
(4, 'Carpenter\'s tools', 'Artisan\'s Tools', NULL, NULL),
(5, 'Cartographer\'s tools', 'Artisan\'s Tools', NULL, NULL),
(6, 'Cobbler\'s tools', 'Artisan\'s Tools', NULL, NULL),
(7, 'Cook\'s utensils', 'Artisan\'s Tools', NULL, NULL),
(8, 'Glassblower\'s tools', 'Artisan\'s Tools', NULL, NULL),
(9, 'Jeweler\'s tools', 'Artisan\'s Tools', NULL, NULL),
(10, 'Leatherworker\'s tools', 'Artisan\'s Tools', NULL, NULL),
(11, 'Mason\'s tools', 'Artisan\'s Tools', NULL, NULL),
(12, 'Painter\'s supplies', 'Artisan\'s Tools', NULL, NULL),
(13, 'Potter\'s tools', 'Artisan\'s Tools', NULL, NULL),
(14, 'Smith\'s tools', 'Artisan\'s Tools', NULL, NULL),
(15, 'Tinker\'s tools', 'Artisan\'s Tools', NULL, NULL),
(16, 'Weaver\'s tools', 'Artisan\'s Tools', NULL, NULL),
(17, 'Woodcarver\'s tools', 'Artisan\'s Tools', NULL, NULL),
(18, 'Disguise kit', NULL, NULL, NULL),
(19, 'Forgery kit', NULL, NULL, NULL),
(20, 'Dice set', 'Gaming Set', NULL, NULL),
(21, 'Dragonchess set', 'Gaming Set', NULL, NULL),
(22, 'Playing card set', 'Gaming Set', NULL, NULL),
(23, 'Three-Dragon Ante set', 'Gaming Set', NULL, NULL),
(24, 'Herbalism kit', 'Musical Instrument', NULL, NULL),
(25, 'Bagpipes', 'Musical Instrument', NULL, NULL),
(26, 'Drum', 'Musical Instrument', NULL, NULL),
(27, 'Dulcimer', 'Musical Instrument', NULL, NULL),
(28, 'Flute', 'Musical Instrument', NULL, NULL),
(29, 'Lute', 'Musical Instrument', NULL, NULL),
(30, 'Lyre', 'Musical Instrument', NULL, NULL),
(31, 'Horn', 'Musical Instrument', NULL, NULL),
(32, 'Pan flute', 'Musical Instrument', NULL, NULL),
(33, 'Shawm', 'Musical Instrument', NULL, NULL),
(34, 'Viol', 'Musical Instrument', NULL, NULL),
(35, 'Navigator\'s tools', NULL, NULL, NULL),
(36, 'Poisoner\'s kit', NULL, NULL, NULL),
(37, 'Thieves\' tools', NULL, NULL, NULL),
(38, 'Vehicles (land)', 'Vehicles', NULL, NULL),
(39, 'Vehicles (water)', 'Vehicles', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_trinkets`
--

CREATE TABLE `cms_dnd_trinkets` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(100) NOT NULL DEFAULT 'Trinket',
  `Description` text NOT NULL,
  `Value` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_trinkets`
--

INSERT INTO `cms_dnd_trinkets` (`ID`, `Name`, `Type`, `Description`, `Value`) VALUES
(1, 'A mummified goblin hand', 'Trinket', '', '0'),
(2, 'A piece of crystal that faintly glows in the moonlight', 'Trinket', '', '0'),
(3, 'A gold coin minted in an unknown land', 'Trinket', '', '0'),
(4, 'A diary written in a language you don\'t know', 'Trinket', '', '0'),
(5, 'A brass ring that never tarnishes', 'Trinket', '', '0'),
(6, 'An old chess piece made from glass', 'Trinket', '', '0'),
(7, 'A pair of knucklebone dice, each with a skull symbol on the side that would normally show six pips', 'Trinket', '', '0'),
(8, 'A small idol depicting a nightmarish creature that gives you unsettling dreams when you sleep near it', 'Trinket', '', '0'),
(9, 'A rope necklace from which dangles four mummified elf fingers', 'Trinket', '', '0'),
(10, 'The deed for a parcel of land in a realm unknown to you', 'Trinket', '', '0'),
(11, 'A 1-ounce block made from an unknown material', 'Trinket', '', '0'),
(12, 'A small cloth doll skewered with needles', 'Trinket', '', '0'),
(13, 'A tooth from an unknown beast', 'Trinket', '', '0'),
(14, 'An enormous scale, perhaps from a dragon', 'Trinket', '', '0'),
(15, 'A bright green feather', 'Trinket', '', '0'),
(16, 'An old divination card bearing your likeness', 'Trinket', '', '0'),
(17, 'A glass orb filled with moving smoke', 'Trinket', '', '0'),
(18, 'A 1-pound egg with a bright red shell', 'Trinket', '', '0'),
(19, 'A pipe that blows bubbles', 'Trinket', '', '0'),
(20, 'A glass jar containing a weird bit of flesh floating in pickling fluid', 'Trinket', '', '0'),
(21, 'A tiny gnome-crafted music box that plays a song you dimly remember from your childhood', 'Trinket', '', '0'),
(22, 'A small wooden statuette of a smug halfling', 'Trinket', '', '0'),
(23, 'A brass orb etched with strange runes', 'Trinket', '', '0'),
(24, 'A multicolored stone disk', 'Trinket', '', '0'),
(25, 'A tiny silver icon of a raven', 'Trinket', '', '0'),
(26, 'A bag containing forty-seven humanoid teeth, one of which is rotten', 'Trinket', '', '0'),
(27, 'A shard of obsidian that always feels warm to the touch', 'Trinket', '', '0'),
(28, 'A dragon\'s bony talon hanging from a plain leather necklace', 'Trinket', '', '0'),
(29, 'A pair of old socks', 'Trinket', '', '0'),
(30, 'A blank book whose pages refuse to hold ink, chalk, graphite, or any other substance or marking', 'Trinket', '', '0'),
(31, 'A silver badge in the shape of a five-pointed star', 'Trinket', '', '0'),
(32, 'A knife that belonged to a relative', 'Trinket', '', '0'),
(33, 'A glass vial filled with nail clippings', 'Trinket', '', '0'),
(34, 'A rectangular metal device with two tiny metal cups on one end that throws sparks when wet', 'Trinket', '', '0'),
(35, 'A white, sequined glove sized for a human', 'Trinket', '', '0'),
(36, 'A vest with one hundred tiny pockets', 'Trinket', '', '0'),
(37, 'A small, weightless stone block', 'Trinket', '', '0'),
(38, 'A tiny sketch portrait of a goblin', 'Trinket', '', '0'),
(39, 'An empty glass vial that smells of perfume when opened', 'Trinket', '', '0'),
(40, 'A gemstone that looks like a lump of coal when examined by anyone but you', 'Trinket', '', '0'),
(41, 'A scrap of cloth from an old banner', 'Trinket', '', '0'),
(42, 'A rank insignia from a lost legionnaire', 'Trinket', '', '0'),
(43, 'A tiny silver bell without a clapper', 'Trinket', '', '0'),
(44, 'A mechanical canary inside a gnomish lamp', 'Trinket', '', '0'),
(45, 'A tiny chest carved to look like it has numerous feet on the bottom', 'Trinket', '', '0'),
(46, 'A dead sprite inside a clear glass bottle', 'Trinket', '', '0'),
(47, 'A metal can that has no opening but sounds as if it is filled with liquid, sand, spiders, or broken glass (your choice)', 'Trinket', '', '0'),
(48, 'A glass orb filled with water, in which swims a clockwork goldfish', 'Trinket', '', '0'),
(49, 'A silver spoon with an M engraved on the handle', 'Trinket', '', '0'),
(50, 'A whistle made from gold-colored wood', 'Trinket', '', '0'),
(51, 'A dead scarab beetle the size of your hand', 'Trinket', '', '0'),
(52, 'Two toy soldiers, one with a missing head', 'Trinket', '', '0'),
(53, 'A small box filled with different-sized buttons', 'Trinket', '', '0'),
(54, 'A candle that can\'t be lit', 'Trinket', '', '0'),
(55, 'A tiny cage with no door', 'Trinket', '', '0'),
(56, 'An old key', 'Trinket', '', '0'),
(57, 'An indecipherable treasure map', 'Trinket', '', '0'),
(58, 'A hilt from a broken sword', 'Trinket', '', '0'),
(59, 'A rabbit\'s foot', 'Trinket', '', '0'),
(60, 'A glass eye', 'Trinket', '', '0'),
(61, 'A cameo carved in the likeness of a hideous person', 'Trinket', '', '0'),
(62, 'A silver skull the size of a coin', 'Trinket', '', '0'),
(63, 'An alabaster mask', 'Trinket', '', '0'),
(64, 'A pyramid of sticky black incense that smells very bad', 'Trinket', '', '0'),
(65, 'A nightcap that, when worn, gives you pleasant dreams', 'Trinket', '', '0'),
(66, 'A single caltrop made from bone', 'Trinket', '', '0'),
(67, 'A gold monocle frame without the lens', 'Trinket', '', '0'),
(68, 'A 1-inch cube, each side painted a different color', 'Trinket', '', '0'),
(69, 'A crystal knob from a door', 'Trinket', '', '0'),
(70, 'A small packet filled with pink dust', 'Trinket', '', '0'),
(71, 'A fragment of a beautiful song, written as musical notes on two pieces of parchment', 'Trinket', '', '0'),
(72, 'A silver teardrop earring made from a real teardrop', 'Trinket', '', '0'),
(73, 'The shell of an egg painted with scenes of human misery in disturbing detail', 'Trinket', '', '0'),
(74, 'A fan that, when unfolded, shows a sleeping cat', 'Trinket', '', '0'),
(75, 'A set of bone pipes', 'Trinket', '', '0'),
(76, 'A four-leaf clover pressed inside a book discussing manners and etiquette', 'Trinket', '', '0'),
(77, 'A sheet of parchment upon which is drawn a complex mechanical contraption', 'Trinket', '', '0'),
(78, 'An ornate scabbard that fits no blade you have found so far', 'Trinket', '', '0'),
(79, 'An invitation to a party where a murder happened', 'Trinket', '', '0'),
(80, 'A bronze pentacle with an etching of a rat\'s head in its center', 'Trinket', '', '0'),
(81, 'A purple handkerchief embroidered with the name of a powerful archmage', 'Trinket', '', '0'),
(82, 'Half of a floorplan for a temple, castle, or some other structure', 'Trinket', '', '0'),
(83, 'A bit of folded cloth that, when unfolded, turns into a stylish cap', 'Trinket', '', '0'),
(84, 'A receipt of deposit at a bank in a far-flung city', 'Trinket', '', '0'),
(85, 'A diary with seven missing pages', 'Trinket', '', '0'),
(86, 'An empty silver snuffbox bearing an inscription on the surface that says \'dreams\'', 'Trinket', '', '0'),
(87, 'An iron holy symbol devoted to an unknown god', 'Trinket', '', '0'),
(88, 'A book that tells the story of a legendary hero\'s rise and fall, with the last chapter missing', 'Trinket', '', '0'),
(89, 'A vial of dragon blood', 'Trinket', '', '0'),
(90, 'An ancient arrow of elven design', 'Trinket', '', '0'),
(91, 'A needle that never bends', 'Trinket', '', '0'),
(92, 'An ornate brooch of dwarven design', 'Trinket', '', '0'),
(93, 'An empty wine bottle bearing a pretty label that says, \'The Wizard of Wines Winery, Red Dragon Crush, 331422-W\'', 'Trinket', '', '0'),
(94, 'A mosaic tile with a multicolored, glazed surface', 'Trinket', '', '0'),
(95, 'A petrified mouse', 'Trinket', '', '0'),
(96, 'A black pirate flag adorned with a dragon\'s skull and crossbones', 'Trinket', '', '0'),
(97, 'A tiny mechanical crab or spider that moves about when it\'s not being observed', 'Trinket', '', '0'),
(98, 'A glass jar containing lard with a label that reads, \'Griffon Grease\'', 'Trinket', '', '0'),
(99, 'A wooden box with a ceramic bottom that holds a living worm with a head on each end of its body', 'Trinket', '', '0'),
(100, 'A metal urn containing the ashes of a hero', 'Trinket', '', '0'),
(101, 'Azurite', 'Gemstone', 'An opaque mottled deep blue gemstone.', '10'),
(102, 'Banded Agate', 'Gemstone', 'A translucent striped brown, blue, white, or red gemstone.', '10'),
(103, 'Blue Quartz', 'Gemstone', 'A transparent pale blue gemstone.', '10'),
(104, 'Eye Agate', 'Gemstone', 'A translucent circles of gray, white, brown, blue, or green gemstone.', '10'),
(105, 'Hematite', 'Gemstone', 'An opaque gray-black gemstone.', '10'),
(106, 'Lapis Lazuli', 'Gemstone', 'An opaque light and dark blue with yellow flecks gemstone.', '10'),
(107, 'Malachite', 'Gemstone', 'An opaque striated light and dark green gemstone.', '10'),
(108, 'Moss Agate', 'Gemstone', 'A translucent pink or yellow-white with mossy gray or green markings gemstone.', '10'),
(109, 'Obsidian', 'Gemstone', 'An opaque black gemstone.', '10'),
(110, 'Rhodochrosite', 'Gemstone', 'An opaque light pink gemstone.', '10'),
(111, 'Tiger Eye', 'Gemstone', 'A translucent brown with golden center gemstone.', '10'),
(112, 'Turquoise', 'Gemstone', 'An opaque light blue-green gemstone.', '10'),
(113, 'Amber', 'Gemstone', 'A transparent watery gold to rich gold gemstone.', '100'),
(114, 'Amethyst', 'Gemstone', 'A transparent deep purple gemstone.', '100'),
(115, 'Chrysoberyl', 'Gemstone', 'A transparent yellow-green to pale green gemstone.', '100'),
(116, 'Coral', 'Gemstone', 'An opaque crimson gemstone.', '100'),
(117, 'Garnet', 'Gemstone', 'A transparent red, brown-green, or violet gemstone.', '100'),
(118, 'Jade', 'Gemstone', 'A translucent light green, deep green, or white gemstone.', '100'),
(119, 'Jet', 'Gemstone', 'An opaque deep black gemstone.', '100'),
(120, 'Pearl', 'Gemstone', 'An opaque lustrous white, yellow, or pink gemstone.', '100'),
(121, 'Spinel', 'Gemstone', 'A transparent red, red-brown, or deep green gemstone.', '100'),
(122, 'Tourmaline', 'Gemstone', 'A transparent pale green, blue, brown, or red gemstone.', '100'),
(123, 'Black Opal', 'Gemstone', 'A translucent dark green with black mottling and golden flecks gemstone.', '1000'),
(124, 'Blue Sapphire', 'Gemstone', 'A transparent blue-white to medium blue gemstone.', '1000'),
(125, 'Emerald', 'Gemstone', 'A transparent deep bright green gemstone.', '1000'),
(126, 'Fire Opal', 'Gemstone', 'A translucent fiery red gemstone.', '1000'),
(127, 'Opal', 'Gemstone', 'A translucent pale blue with green and golden mottling gemstone.', '1000'),
(128, 'Star Ruby', 'Gemstone', 'A translucent ruby with white star-shaped center gemstone.', '1000'),
(129, 'Star Sapphire', 'Gemstone', 'A translucent blue sapphire with white star-shaped center gemstone.', '1000'),
(130, 'Yellow Sapphire', 'Gemstone', 'A transparent fiery yellow or yellow-green gemstone.', '1000'),
(131, 'Black velvet mask stitched with silver thread', 'Art Object', 'An art object.', '25'),
(132, 'Carved bone statuette', 'Art Object', 'An art object.', '25'),
(133, 'Cloth-of-gold vestments', 'Art Object', 'An art object.', '25'),
(134, 'Copper chalice with silver filigree', 'Art Object', 'An art object.', '25'),
(135, 'Embroidered silk handkerchief', 'Art Object', 'An art object.', '25'),
(136, 'Gold locket with a painted portrait inside', 'Art Object', 'An art object.', '25'),
(137, 'Pair of engraved bone dice', 'Art Object', 'An art object.', '25'),
(138, 'Silver ewer', 'Art Object', 'An art object.', '25'),
(139, 'Small gold bracelet', 'Art Object', 'An art object.', '25'),
(140, 'Small mirror set in a painted wooden frame', 'Art Object', 'An art object.', '25'),
(141, 'Box of turquoise animal figurines', 'Art Object', 'An art object.', '250'),
(142, 'Brass mug with jade inlay', 'Art Object', 'An art object.', '250'),
(143, 'Bronze crown', 'Art Object', 'An art object.', '250'),
(144, 'Carved ivory statuette', 'Art Object', 'An art object.', '250'),
(145, 'Gold bird cage with electrum filigree', 'Art Object', 'An art object.', '250'),
(146, 'Gold ring set with bloodstones', 'Art Object', 'An art object.', '250'),
(147, 'Large gold bracelet', 'Art Object', 'An art object.', '250'),
(148, 'Large well-made tapestry', 'Art Object', 'An art object.', '250'),
(149, 'Silk robe with gold embroidery', 'Art Object', 'An art object.', '250'),
(150, 'Silver necklace with a gemstone pendant', 'Art Object', 'An art object.', '250'),
(151, 'Embroidered glove set with jewel chips', 'Art Object', 'An art object.', '2500'),
(152, 'Embroidered silk and velvet mantle set with numerous moonstones', 'Art Object', 'An art object.', '2500'),
(153, 'Eye patch with a mock eye set in blue sapphire and moonstone', 'Art Object', 'An art object.', '2500'),
(154, 'Fine gold chain set with a fire opal', 'Art Object', 'An art object.', '2500'),
(155, 'Gold circlet set with four aquamarines', 'Art Object', 'An art object.', '2500'),
(156, 'Gold music box', 'Art Object', 'An art object.', '2500'),
(157, 'Jeweled anklet', 'Art Object', 'An art object.', '2500'),
(158, 'Old masterpiece painting', 'Art Object', 'An art object.', '2500'),
(159, 'Platinum bracelet set with a sapphire', 'Art Object', 'An art object.', '2500'),
(160, 'A necklace string of small pink pearls', 'Art Object', 'An art object.', '2500'),
(161, 'Bloodstone', 'Gemstone', 'An opaque dark gray with red flecks gemstone.', '50'),
(162, 'Carnelian', 'Gemstone', 'An opaque orange to red-brown gemstone.', '50'),
(163, 'Chalcedony', 'Gemstone', 'An opaque white gemstone.', '50'),
(164, 'Chrysoprase', 'Gemstone', 'A translucent green gemstone.', '50'),
(165, 'Citrine', 'Gemstone', 'A transparent pale yellow-brown gemstone.', '50'),
(166, 'Jasper', 'Gemstone', 'An opaque blue, black, or brown gemstone.', '50'),
(167, 'Moonstone', 'Gemstone', 'A translucent white with pale blue glow gemstone.', '50'),
(168, 'Onyx', 'Gemstone', 'An opaque bands of black and white, or pure black or white gemstone.', '50'),
(169, 'Quartz', 'Gemstone', 'A transparent white, smoky gray, or yellow gemstone.', '50'),
(170, 'Sardonyx', 'Gemstone', 'An opaque bands of red and white gemstone.', '50'),
(171, 'Star rose quartz', 'Gemstone', 'A translucent rosy stone with white star-shaped center gemstone.', '50'),
(172, 'Zircon', 'Gemstone', 'A transparent pale blue-green gemstone.', '50'),
(173, 'Alexandrite', 'Gemstone', 'A transparent dark green gemstone.', '500'),
(174, 'Aquamarine', 'Gemstone', 'A transparent pale blue-green gemstone.', '500'),
(175, 'Black Pearl', 'Gemstone', 'An opaque pure black gemstone.', '500'),
(176, 'Blue Spinel', 'Gemstone', 'A transparent deep blue gemstone.', '500'),
(177, 'Peridot', 'Gemstone', 'A transparent rich olive green gemstone.', '500'),
(178, 'Topaz', 'Gemstone', 'A transparent golden yellow gemstone.', '500'),
(179, 'Black Sapphire', 'Gemstone', 'A translucent lustrous black with glowing highlights gemstone.', '5000'),
(180, 'Diamond', 'Gemstone', 'A transparent blue-white, canary, pink, brown, or blue gemstone.', '5000'),
(181, 'Jacinth', 'Gemstone', 'A transparent fiery orange gemstone.', '5000'),
(182, 'Ruby', 'Gemstone', 'A transparent clear red to deep crimson gemstone.', '5000'),
(183, 'Bottle stopper cork embossed with gold leaf and set with amethysts', 'Art Object', 'An art object.', '750'),
(184, 'Carved harp of exotic wood with ivory inlay and zircon gems', 'Art Object', 'An art object.', '750'),
(185, 'Ceremonial electrum dagger with a black pearl in the pommel', 'Art Object', 'An art object.', '750'),
(186, 'Gold dragon comb set with red garnets as eyes', 'Art Object', 'An art object.', '750'),
(187, 'Obsidian statuette with gold fittings and inlay', 'Art Object', 'An art object.', '750'),
(188, 'Painted gold war mask', 'Art Object', 'An art object.', '750'),
(189, 'Silver and gold brooch', 'Art Object', 'An art object.', '750'),
(190, 'Silver chalice set with moonstones', 'Art Object', 'An art object.', '750'),
(191, 'Silver-plated steel longsword with jet set in hilt', 'Art Object', 'An art object.', '750'),
(192, 'Small gold idol', 'Art Object', 'An art object.', '750'),
(193, 'Bejeweled ivory drinking horn with gold filigree', 'Art Object', 'An art object.', '7500'),
(194, 'Gold cup set with emeralds', 'Art Object', 'An art object.', '7500'),
(195, 'Gold jewelry box with platinum filigree', 'Art Object', 'An art object.', '7500'),
(196, 'Jeweled gold crown', 'Art Object', 'An art object.', '7500'),
(197, 'Jeweled platinum ring', 'Art Object', 'An art object.', '7500'),
(198, 'Painted gold child\'s sarcophagus', 'Art Object', 'An art object.', '7500'),
(199, 'Small gold statuette set with rubies', 'Art Object', 'An art object.', '7500'),
(200, 'jade game board with solid gold playing pieces', 'Art Object', 'An art object.', '7500');

-- --------------------------------------------------------

--
-- Table structure for table `cms_dnd_weapons`
--

CREATE TABLE `cms_dnd_weapons` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Value` int(100) NOT NULL,
  `HD` varchar(25) NOT NULL,
  `DmgType` varchar(15) NOT NULL,
  `Weight` int(100) NOT NULL,
  `Material` varchar(100) NOT NULL DEFAULT 'Generic',
  `Properties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_dnd_weapons`
--

INSERT INTO `cms_dnd_weapons` (`ID`, `Name`, `Type`, `Value`, `HD`, `DmgType`, `Weight`, `Material`, `Properties`) VALUES
(1, 'Club', 'Simple Melee', 0, '1d4', 'B', 2, 'Generic', 'Light'),
(2, 'Dagger', 'Simple Melee', 2, '1d4', 'P', 1, 'Generic', 'Finesse, light, thrown (range 20/60)'),
(3, 'Greatclub', 'Simple Melee', 0, '1d8', 'B', 10, 'Generic', 'Two-handed'),
(4, 'Handaxe', 'Simple Melee', 5, '1d6', 'S', 2, 'Generic', 'Light, thrown (range 20/60)'),
(5, 'Javelin', 'Simple Melee', 1, '1d6', 'P', 2, 'Generic', 'Thrown (range 30/120)'),
(6, 'Light Hammer', 'Simple Melee', 2, '1d4', 'B', 2, 'Generic', 'Light, thrown (range 20/60)'),
(7, 'Mace', 'Simple Melee', 5, '1d6', 'B', 4, 'Generic', ''),
(8, 'Quarterstaff', 'Simple Melee', 0, '1d6', 'B', 4, 'Generic', 'Versatile (1d8)'),
(9, 'Sickle', 'Simple Melee', 1, '1d4', 'S', 2, 'Generic', 'Light'),
(10, 'Spear', 'Simple Melee', 1, '1d6', 'P', 3, 'Generic', 'Thrown (range 20/60), versatile (1d8)'),
(11, 'Unarmed Strike', 'Simple Melee', 0, '1', 'B', 0, 'Generic', ''),
(12, 'Crossbow, Light', 'Simple Ranged', 25, '1d8', 'P', 5, 'Generic', 'Ammunition (range 80/320), loading, two-handed'),
(13, 'Dart', 'Simple Ranged', 0, '1d4', 'P', 0, 'Generic', 'Finesse, thrown (range 20/60)'),
(14, 'Shortbow', 'Simple Ranged', 25, '1d6', 'P', 2, 'Generic', 'Ammunition (range 80/320), two-handed'),
(15, 'Sling', 'Simple Ranged', 0, '1d4', 'B', 0, 'Generic', 'Ammunition (range 30/120)'),
(16, 'Battleaxe', 'Martial Melee', 10, '1d8', 'S', 4, 'Generic', 'Versatile (1d10)'),
(17, 'Flail', 'Martial Melee', 10, '1d8', 'B', 2, 'Generic', ''),
(18, 'Glaive', 'Martial Melee', 20, '1d10', 'S', 6, 'Generic', 'Heavy, reach, two-handed'),
(19, 'Greataxe', 'Martial Melee', 30, '1d12', 'S', 7, 'Generic', 'Heavy, two-handed'),
(20, 'Greatsword', 'Martial Melee', 50, '2d6', 'S', 6, 'Generic', 'Heavy, two-handed'),
(21, 'Halberd', 'Martial Melee', 20, '1d10', 'S', 6, 'Generic', 'Heavy, reach, two-handed'),
(22, 'Lance', 'Martial Melee', 10, '1d12', 'P', 6, 'Generic', 'Reach, special'),
(23, 'Longsword', 'Martial Melee', 15, '1d8', 'S', 3, 'Generic', 'Versatile (1d10)'),
(24, 'Maul', 'Martial Melee', 10, '2d6', 'B', 10, 'Generic', 'Heavy, two-handed'),
(25, 'Morningstar', 'Martial Melee', 15, '1d8', 'P', 4, 'Generic', ''),
(26, 'Pike', 'Martial Melee', 5, '1d10', 'P', 18, 'Generic', 'Heavy, reach, two-handed'),
(27, 'Rapier', 'Martial Melee', 25, '1d8', 'P', 2, 'Generic', 'Finesse'),
(28, 'Scimitar', 'Martial Melee', 25, '1d6', 'S', 3, 'Generic', 'Finesse, light'),
(29, 'Shortsword', 'Martial Melee', 10, '1d6', 'P', 2, 'Generic', 'Finesse, light'),
(30, 'Trident', 'Martial Melee', 5, '1d6', 'P', 4, 'Generic', 'Thrown (range 20/60), versatile (1d8)'),
(31, 'War Pick', 'Martial Melee', 5, '1d8', 'P', 2, 'Generic', ''),
(32, 'Warhammer', 'Martial Melee', 15, '1d8', 'B', 2, 'Generic', 'Versatile (1d10)'),
(33, 'Whip', 'Martial Melee', 2, '1d4', 'S', 3, 'Generic', 'Finesse, reach'),
(34, 'Blowgun', 'Martial Ranged', 10, '1', 'P', 1, 'Generic', 'Ammunition (range 25/100), loading'),
(35, 'Crossbow, Hand', 'Martial Ranged', 75, '1d6', 'P', 3, 'Generic', 'Ammunition (range 30/120), light, loading'),
(36, 'Crossbow, Heavy', 'Martial Ranged', 50, '1d10', 'P', 18, 'Generic', 'Ammunition (range 100/400), heavy, loading, two-handed'),
(37, 'Longbow', 'Martial Ranged', 50, '1d8', 'P', 2, 'Generic', 'Ammunition (range 150/600), heavy, two-handed'),
(38, 'Net', 'Martial Ranged', 1, '0', '', 3, 'Generic', 'Special, thrown (range 5/15)');

-- --------------------------------------------------------

--
-- Table structure for table `cms_feats`
--

CREATE TABLE `cms_feats` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Ability_Score_Min` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0',
  `Req_Spell` varchar(50) DEFAULT NULL,
  `Req_Prof` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_feats`
--

INSERT INTO `cms_feats` (`ID`, `Name`, `Ability_Score_Min`, `Req_Spell`, `Req_Prof`) VALUES
(1, 'Alert', '0|0|0|0|0|0', NULL, NULL),
(2, 'Athlete', '0|0|0|0|0|0', NULL, NULL),
(3, 'Actor', '0|0|0|0|0|0', NULL, NULL),
(4, 'Charger', '0|0|0|0|0|0', NULL, NULL),
(5, 'Crossbow Expert', '0|0|0|0|0|0', NULL, NULL),
(6, 'Defensive Duelist', '0|0|0|0|0|0', NULL, NULL),
(7, 'Defensive Duelist', '0|13|0|0|0|0', NULL, NULL),
(8, 'Dual Wielder', '0|0|0|0|0|0', NULL, NULL),
(9, 'Dungeon Delver', '0|0|0|0|0|0', NULL, NULL),
(10, 'Durable', '0|0|0|0|0|0', NULL, NULL),
(11, 'Elemental Adept (Acid)', '0|0|0|0|0|0', 'Yes', NULL),
(12, 'Elemental Adept (Cold)', '0|0|0|0|0|0', 'Yes', NULL),
(13, 'Elemental Adept (Fire)', '0|0|0|0|0|0', 'Yes', NULL),
(14, 'Elemental Adept (Lightning)', '0|0|0|0|0|0', 'Yes', NULL),
(15, 'Elemental Adept (Thunder)', '0|0|0|0|0|0', 'Yes', NULL),
(16, 'Grappler', '13|0|0|0|0|0', NULL, NULL),
(17, 'Great Weapon Master', '0|0|0|0|0|0', NULL, NULL),
(18, 'Healer', '0|0|0|0|0|0', NULL, NULL),
(19, 'Heavily Armored', '0|0|0|0|0|0', NULL, 'Medium'),
(20, 'Heavy Armor Master', '0|0|0|0|0|0', NULL, 'Heavy'),
(21, 'Inspiring Leader', '0|0|0|0|0|13', NULL, NULL),
(22, 'Keen MInd', '0|0|0|0|0|0', NULL, NULL),
(23, 'Lightly Armored', '0|0|0|0|0|0', NULL, NULL),
(24, 'Linguist', '0|0|0|0|0|0', NULL, NULL),
(25, 'Lucky', '0|0|0|0|0|0', NULL, NULL),
(26, 'Mage Slayer', '0|0|0|0|0|0', NULL, NULL),
(27, 'Magic Initiatite', '0|0|0|0|0|0', NULL, NULL),
(28, 'Martial Adept', '0|0|0|0|0|0', NULL, NULL),
(29, 'Medium Armor Master', '0|0|0|0|0|0', NULL, 'Medium'),
(30, 'Mobile', '0|0|0|0|0|0', NULL, NULL),
(31, 'Moderately Armored', '0|0|0|0|0|0', NULL, 'Light'),
(32, 'Mounted Combat', '0|0|0|0|0|0', NULL, NULL),
(33, 'Observant', '0|0|0|0|0|0', NULL, NULL),
(34, 'Polearm Master', '0|0|0|0|0|0', NULL, NULL),
(35, 'Resilient', '0|0|0|0|0|0', NULL, NULL),
(36, 'Ritual Caster', '0|0|0|13/13|0', NULL, NULL),
(37, 'Savage Attacker', '0|0|0|0|0|0', NULL, NULL),
(38, 'Sentinel', '0|0|0|0|0|0', NULL, NULL),
(39, 'Sharpshooter', '0|0|0|0|0|0', NULL, NULL),
(40, 'Shield Master', '0|0|0|0|0|0', NULL, NULL),
(41, 'Skilled', '0|0|0|0|0|0', NULL, NULL),
(42, 'Skulker', '0|0|0|0|0|0', NULL, NULL),
(43, 'Spell Sniper', '0|0|0|0|0|0', 'Yes', NULL),
(44, 'Tavern Brawler', '0|0|0|0|0|0', NULL, NULL),
(45, 'Tough', '0|0|0|0|0|0', NULL, NULL),
(46, 'War Caster', '0|0|0|0|0|0', 'Yes', NULL),
(47, 'Weapon Master', '0|0|0|0|0|0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_forum_categories`
--

CREATE TABLE `cms_forum_categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_forum_posts`
--

CREATE TABLE `cms_forum_posts` (
  `ID` int(11) NOT NULL,
  `Content` text NOT NULL,
  `Date` datetime NOT NULL,
  `Topic` int(11) NOT NULL,
  `Author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_forum_topics`
--

CREATE TABLE `cms_forum_topics` (
  `ID` int(11) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Cat` int(11) NOT NULL,
  `Author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_main`
--

CREATE TABLE `cms_menu_main` (
  `ID` int(11) NOT NULL,
  `Children` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `File` varchar(255) NOT NULL,
  `Status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 for disabled menu or 1 for enabled menu',
  `Icon` varchar(50) NOT NULL,
  `Template` varchar(255) NOT NULL,
  `Protected` int(11) NOT NULL DEFAULT '0',
  `Access` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_menu_main`
--

INSERT INTO `cms_menu_main` (`ID`, `Children`, `Name`, `Link`, `File`, `Status`, `Icon`, `Template`, `Protected`, `Access`) VALUES
(1, 0, 'Home', 'index.php', '', '1', 'home', 'template', 1, 0),
(2, 3, 'Admin', 'Admin', 'admin.php', '1', 'cog', 'main', 1, 9),
(3, 1, 'Users', 'Users', 'users.php', '1', 'user', '', 1, 0),
(4, 0, 'Forums', 'Forums', 'forums.php', '1', 'heart', '', 1, 0),
(6, 0, 'Credits', 'Credits', '', '1', '', 'credits', 1, 0),
(7, 1, 'D&D', 'DandD', 'dnd.php', '1', 'star', 'dnd/index', 0, 0),
(9, 1, 'Characters', 'Characters', 'characters.php', '1', 'star', 'dnd/char', 0, 0),
(10, 0, 'Temp', 'Temp', 'test.php', '1', '', 'test', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_sub`
--

CREATE TABLE `cms_menu_sub` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Parent` int(11) NOT NULL DEFAULT '0' COMMENT '0 if menu is root level or menuid if this is child on any menu',
  `Link` varchar(255) NOT NULL,
  `File` varchar(255) NOT NULL,
  `Status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 for disabled menu or 1 for enabled menu',
  `Icon` varchar(50) NOT NULL,
  `Template` varchar(255) NOT NULL,
  `Protected` int(11) NOT NULL DEFAULT '0',
  `Access` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_menu_sub`
--

INSERT INTO `cms_menu_sub` (`ID`, `Name`, `Parent`, `Link`, `File`, `Status`, `Icon`, `Template`, `Protected`, `Access`) VALUES
(1, 'Dashboard', 3, 'Dashboard', '', '1', '', 'users/dashboard', 0, 0),
(2, 'Member List', 4, 'Member_List', '', '1', '', '', 0, 0),
(3, 'Main Menu', 2, 'Main_Menu', 'menu', '1', '', 'admin/menu', 0, 0),
(4, 'Settings', 2, 'Settings', 'settings', '1', '', 'admin/settings', 0, 0),
(5, 'Themes', 2, 'Themes', 'themes', '1', '', 'admin/themes', 0, 0),
(6, 'Tasks', 2, 'Tasks', 'tasks', '1', '', 'admin/tasks', 0, 0),
(7, 'Classes', 7, 'Classes', 'pg.classes', '1', '', 'dnd/classes', 0, 0),
(11, 'Races', 7, 'Races', '', '1', '', 'dnd/races', 0, 0),
(12, 'Create', 9, 'Create', 'char.create', '1', '', 'dnd/char.create', 0, 2),
(13, 'Armor', 7, 'Armor', '', '1', '', 'dnd/armor', 0, 0),
(14, 'Weapons', 7, 'Weapons', '', '1', '', 'dnd/weapons', 0, 0),
(15, 'View', 9, 'View', 'char.view', '0', '', 'dnd/char.view', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_races`
--

CREATE TABLE `cms_races` (
  `ID` int(11) NOT NULL,
  `rName` varchar(100) NOT NULL,
  `rFullName` varchar(200) NOT NULL,
  `rSubName` varchar(100) NOT NULL,
  `rSize` varchar(5) NOT NULL,
  `rSpeed` int(11) NOT NULL,
  `rAbilScore` varchar(150) NOT NULL,
  `rTraits` varchar(50) NOT NULL,
  `Darkvision` int(5) NOT NULL DEFAULT '0',
  `rLanguages` varchar(255) NOT NULL,
  `rSource` varchar(25) NOT NULL,
  `Active` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_races`
--

INSERT INTO `cms_races` (`ID`, `rName`, `rFullName`, `rSubName`, `rSize`, `rSpeed`, `rAbilScore`, `rTraits`, `Darkvision`, `rLanguages`, `rSource`, `Active`) VALUES
(1, 'Aarakocra', 'Aarakocra', '', 'M', 25, '0|2|0|0|1|0', '', 0, 'Common|Aarakocra|Auran', 'EE', '1'),
(2, 'Genasi', 'Genasi_Air', 'Air', 'M', 30, '0|1|2|0|0|0', '', 0, 'Common|Primordial', 'EE', '1'),
(3, 'Elf', 'Elf_Drow', 'Drow', 'M', 30, '0|2|0|0|0|1', '', 60, 'Common|Elvish', 'PHB', '1'),
(4, 'Gnome', 'Gnome_Deep', 'Deep', 'S', 25, '0|1|0|2|0|0', '', 0, 'Common|Gnomish|Undercommon', 'PHB', '1'),
(5, 'Dragonborn', 'Dragonborn', '', 'M', 30, '2|0|0|0|0|1', '', 0, 'Common|Draconic', 'PHB', '1'),
(6, 'Genasi', 'Genasi_Earth', 'Earth', 'M', 30, '1|0|2|0|0|0', '', 0, 'Common|Primordial', 'EE', '1'),
(7, 'Elf', 'Elf_Eladrin', 'Eladrin', 'M', 30, '0|2|0|1|0|0', '', 60, 'Common|Elvish', 'PHB', '1'),
(8, 'Genasi', 'Genasi_Fire', 'Fire', 'M', 30, '0|0|2|1|0|0', '', 0, 'Common|Primordial', 'EE', '1'),
(9, 'Gnome', 'Gnome_Forest', 'Forest', 'S', 25, '0|1|0|2|0|0', '', 0, 'Common|Gnomish', 'PHB', '1'),
(10, 'Goliath', 'Goliath', '', 'M', 30, '2|0|1|0|0|0', '', 0, 'Common|Giant', 'EE', '1'),
(11, 'Half-Elf', 'HalfElf', '', 'M', 30, '0|0|0|0|0|2', '', 0, 'Common|Elvish|Choice', 'PHB', '1'),
(12, 'Half-Orc', 'HalfOrc', '', 'M', 30, '2|0|1|0|0|0', '', 0, 'Common|Orc', 'PHB', '1'),
(13, 'Elf', 'Elf_High', 'High', 'M', 30, '0|2|0|1|0|0', '', 60, 'Common|Elvish|Choice', 'PHB', '1'),
(14, 'Dwarf', 'Dwarf_Hill', 'Hill', 'M', 25, '0|0|2|0|1|0', '', 60, 'Common|Dwarvish', 'PHB', '1'),
(15, 'Human', 'Human', '', 'M', 30, '1|1|1|1|1|1', '', 0, 'Common|Choice', 'PHB', '1'),
(16, 'Human', 'Human_Variant', 'Variant', 'M', 30, '0|0|0|0|0|0', '', 0, 'Common|Choice', 'PHB', '0'),
(17, 'Halfling', 'Halfling_Lightfoot', 'Lightfoot', 'S', 25, '0|2|0|0|0|1', '', 0, 'Common|Halfling', 'PHB', '1'),
(18, 'Dwarf', 'Dwarf_Mountain', 'Mountain', 'M', 25, '2|0|2|0|0|0', '', 60, 'Common|Dwarvish', 'PHB', '1'),
(19, 'Gnome', 'Gnome_Rock', 'Rock', 'S', 25, '0|0|1|2|0|0', '', 0, 'Common|Gnomish', 'PHB', '1'),
(20, 'Halfling', 'Halfling_Stout', 'Stout', 'S', 25, '0|2|1|0|0|0', '', 0, 'Common|Halfling', 'PHB', '1'),
(21, 'Tiefling', 'Tiefling_Infernal', 'Infernal', 'M', 30, '0|0|0|1|0|2', '', 0, 'Common|Infernal', 'PHB', '1'),
(22, 'Genasi', 'Genasi_Water', 'Water', 'M', 30, '0|0|2|0|1|0', '', 0, 'Common|Primordial', 'EE', '1'),
(23, 'Elf', 'Elf_Wood', 'Wood', 'M', 35, '0|2|0|0|1|0', '', 60, 'Common|Elvish', 'PHB', '1'),
(24, 'Dwarf', 'Dwarf_Duergar', 'Duergar', 'M', 25, '1|0|2|0|0|0', '', 60, 'Common|Dwarvish|Undercommon', 'PHB', '1'),
(25, 'Half-Elf', 'HalfElf_Wood', 'Wood', 'M', 30, '0|0|0|0|0|2', '', 0, 'Common|Elvish|Choice', 'PHB', '1'),
(26, 'Half-Elf', 'HalfElf_MoonSun', 'Moon or Sun', 'M', 30, '0|0|0|0|0|2', '', 0, 'Common|Elvish|Choice', 'PHB', '1'),
(27, 'Half-Elf', 'HalfElf_Drow', 'Drow', 'M', 30, '0|0|0|0|0|2', '', 0, 'Common|Elvish|Choice', 'PHB', '1'),
(28, 'Half-Elf', 'HalfElf_Aquatic', 'Aquatic', 'M', 30, '0|0|0|0|0|2', '', 0, 'Common|Elvish|Choice', 'PHB', '1'),
(29, 'Halfling', 'Halfling_Ghostwise', 'Ghostwise', 'S', 25, '0|2|0|0|1|0', '', 0, 'Common|Halfling|Silent Speech', 'PHB', '1'),
(30, 'Bugbear', 'Bugbear', '', 'M', 30, '2|1|0|0|0|0', '', 0, 'Common|Goblin', 'VgtM', '0'),
(31, 'Aasimar', 'Aasimar_Fallen', 'Fallen', 'M', 30, '1|0|0|0|0|2', '', 0, 'Common|Celestial', 'VgtM', '1'),
(32, 'Aasimar', 'Aasimar_Protector', 'Protector', 'M', 30, '0|0|0|0|1|2', '', 0, 'Common|Celestial', 'VgtM', '1'),
(33, 'Aasimar', 'Aasimar_Scourge', 'Scourge', 'M', 30, '0|0|1|0|0|2', '', 0, 'Common|Celestial', 'VgtM', '1'),
(34, 'Firbolg', 'Firbolg', '', 'M', 30, '1|0|0|0|2|0', '', 0, 'Common|Elvish|Giant', 'VgtM', '0'),
(35, 'Goblin', 'Goblin', '', 'S', 30, '0|2|1|0|0|0', '', 0, 'Common|Goblin', 'VgtM', '0'),
(36, 'Hobgoblin', 'Hobgoblin', '', 'M', 30, '0|0|2|1|0|0', '', 0, 'Common|Goblin', 'VgtM', '0'),
(37, 'Kenku', 'Kenku', '', 'M', 30, '0|2|0|0|1|0', '', 0, 'Common|Auran|Mimicry', 'VgtM', '0'),
(38, 'Kobold', 'Kobold', '', 'S', 30, '-2|2|0|0|0|0', '', 0, 'Common|Draconic', 'VgtM', '0'),
(39, 'Lizardfolk', 'Lizardfolk', '', 'M', 30, '0|0|2|0|1|0', '', 0, 'Common|Draconic', 'VgtM', '0'),
(40, 'Orc', 'Orc', '', 'M', 30, '2|0|0|0|0|0', '', 0, 'Common|Orc', 'VgtM', '0'),
(42, 'Tabaxi', 'Tabaxi', '', 'M', 30, '0|2|0|0|0|1', '', 0, 'Common|Choice', 'VgtM', '0'),
(43, 'Triton', 'Triton', '', 'M', 30, '1|0|0|0|0|0', '', 0, 'Common|Primordial', 'VgtM', '0'),
(44, 'Yuan-ti Pureblood', 'Yuanti_Pureblood', '', 'M', 30, '0|0|0|1|0|2', '', 0, 'Common|Abyssal|Draconic', 'VgtM', '0'),
(45, 'Tiefling', 'Tiefling_Abyssal', 'Abyssal', 'M', 30, '0|0|1|0|0|2', '', 60, 'Common|Abyssal', 'UA', '0'),
(46, 'Tiefling', 'Tiefling_Feral', 'Feral', 'M', 30, '0|2|0|1|0|0', '', 60, 'Common|Infernal', 'SCAG', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cms_race_skills`
--

CREATE TABLE `cms_race_skills` (
  `ID` int(11) NOT NULL,
  `rID` int(11) NOT NULL,
  `rFullName` varchar(200) NOT NULL,
  `rSkills` varchar(200) NOT NULL,
  `Choices` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_race_skills`
--

INSERT INTO `cms_race_skills` (`ID`, `rID`, `rFullName`, `rSkills`, `Choices`) VALUES
(1, 1, 'Aarakocra', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(2, 2, 'Genasi_Air', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(3, 3, 'Elf_Drow', '0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0', 0),
(4, 4, 'Gnome_Deep', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(5, 5, 'Dragonborn', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(6, 6, 'Genasi_Earth', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(7, 7, 'Elf_Eladrin', '0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0', 0),
(8, 8, 'Genasi_Fire', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(9, 9, 'Gnome_Forest', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(10, 10, 'Goliath', '0|0|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(11, 11, 'HalfElf', '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1', 2),
(12, 12, 'HalfOrc', '0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0', 0),
(13, 13, 'Elf_High', '0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0', 0),
(14, 14, 'Dwarf_Hill', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(15, 15, 'Human', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(16, 16, 'Human Variant', '1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1', 1),
(17, 17, 'Halfling_Lightfoot', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(18, 18, 'Dwarf_Mountain', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(19, 19, 'Gnome_Rock', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(20, 20, 'Halfling_Stout', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(21, 21, 'Tiefling_Infernal', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(22, 22, 'Genasi_Water', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(23, 23, 'Elf_Wood', '0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0', 0),
(24, 24, 'Dwarf_Duergar', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(25, 25, 'HalfElf_Wood', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(26, 26, 'HalfElf_MoonSun', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(27, 27, 'HalfElf_Drow', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(28, 28, 'HalfElf_Aquatic', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(29, 29, 'Halfling_Ghostwise', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(30, 30, 'Bugbear', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0', 0),
(31, 31, 'Aasimar_Fallen', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(32, 32, 'Aasimar_Protector', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(33, 33, 'Aasimar_Scourge', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(34, 34, 'Firbolg', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(35, 35, 'Goblin', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(36, 36, 'Hobgoblin', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(37, 37, 'Kenku', '1|0|0|0|1|0|0|0|0|0|0|0|0|0|0|1|1|0', 2),
(38, 38, 'Kobold', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(39, 39, 'Lizardfolk', '0|1|0|0|0|0|0|0|0|0|1|1|0|0|0|0|1|1', 2),
(40, 40, 'Orc', '0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0', 0),
(41, 41, 'Tabaxi', '0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|1|0', 0),
(42, 42, 'Triton', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(43, 43, 'Yuanti_Pureblood', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(44, 44, 'Tiefling_Abyssal', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(45, 45, 'Tiefling_Feral', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_race_tools`
--

CREATE TABLE `cms_race_tools` (
  `ID` int(11) NOT NULL,
  `rID` int(11) NOT NULL,
  `rFullName` varchar(200) NOT NULL,
  `rTools` varchar(200) NOT NULL,
  `Choices` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_race_tools`
--

INSERT INTO `cms_race_tools` (`ID`, `rID`, `rFullName`, `rTools`, `Choices`) VALUES
(1, 1, 'Aarakocra', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(2, 2, 'Genasi_Air', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(3, 3, 'Elf_Drow', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(4, 4, 'Gnome_Deep', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(5, 5, 'Dragonborn', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(6, 6, 'Genasi_Earth', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(7, 7, 'Elf_Eladrin', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(8, 8, 'Genasi_Fire', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(9, 9, 'Gnome_Forest', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(10, 10, 'Goliath', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(11, 11, 'HalfElf', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(12, 12, 'HalfOrc', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(13, 13, 'Elf_High', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(14, 14, 'Dwarf_Hill', '0|1|0|0|0|0|0|0|0|0|1|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(15, 15, 'Human', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(16, 16, 'Human Variant', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(17, 17, 'Halfling_Lightfoot', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(18, 18, 'Dwarf_Mountain', '0|1|0|0|0|0|0|0|0|0|1|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(19, 19, 'Gnome_Rock', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(20, 20, 'Halfling_Stout', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(21, 21, 'Tiefling_Infernal', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(22, 22, 'Genasi_Water', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(23, 23, 'Elf_Wood', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(24, 24, 'Dwarf_Duergar', '0|1|0|0|0|0|0|0|0|0|1|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(25, 25, 'HalfElf_Wood', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(26, 26, 'HalfElf_MoonSun', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(27, 27, 'HalfElf_Drow', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(28, 28, 'HalfElf_Aquatic', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(29, 29, 'Halfling_Ghostwise', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(30, 30, 'Bugbear', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(31, 31, 'Aasimar_Fallen', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(32, 32, 'Aasimar_Protector', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(33, 33, 'Aasimar_Scourge', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(34, 34, 'Firbolg', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(35, 35, 'Goblin', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(36, 36, 'Hobgoblin', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(37, 37, 'Kenku', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(38, 38, 'Kobold', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(39, 39, 'Lizardfolk', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(40, 40, 'Orc', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(41, 41, 'Tabaxi', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(42, 42, 'Triton', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(43, 43, 'Yuanti_Pureblood', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(44, 44, 'Tiefling_Abyssal', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(45, 45, 'Tiefling_Feral', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_spell_slots`
--

CREATE TABLE `cms_spell_slots` (
  `ID` int(11) NOT NULL,
  `Caster_Level` int(11) NOT NULL,
  `1st-Level` int(11) DEFAULT NULL,
  `2nd-Level` int(11) DEFAULT NULL,
  `3rd-Level` int(11) DEFAULT NULL,
  `4th-Level` int(11) DEFAULT NULL,
  `5th-Level` int(11) DEFAULT NULL,
  `6th-Level` int(11) DEFAULT NULL,
  `7th-Level` int(11) DEFAULT NULL,
  `8th-Level` int(11) DEFAULT NULL,
  `9th-Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_spell_slots`
--

INSERT INTO `cms_spell_slots` (`ID`, `Caster_Level`, `1st-Level`, `2nd-Level`, `3rd-Level`, `4th-Level`, `5th-Level`, `6th-Level`, `7th-Level`, `8th-Level`, `9th-Level`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 4, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 4, 3, 3, 1, NULL, NULL, NULL, NULL, NULL),
(8, 8, 4, 3, 3, 2, NULL, NULL, NULL, NULL, NULL),
(9, 9, 4, 3, 3, 3, 1, NULL, NULL, NULL, NULL),
(10, 10, 4, 3, 3, 3, 2, NULL, NULL, NULL, NULL),
(11, 11, 4, 3, 3, 3, 2, 1, NULL, NULL, NULL),
(12, 12, 4, 3, 3, 3, 2, 1, NULL, NULL, NULL),
(13, 13, 4, 3, 3, 3, 2, 1, 1, NULL, NULL),
(14, 14, 4, 3, 3, 3, 2, 1, 1, NULL, NULL),
(15, 15, 4, 3, 3, 3, 2, 1, 1, 1, NULL),
(16, 16, 4, 3, 3, 3, 2, 1, 1, 1, NULL),
(17, 17, 4, 3, 3, 3, 2, 1, 1, 1, 1),
(18, 18, 4, 3, 3, 3, 3, 1, 1, 1, 1),
(19, 19, 4, 3, 3, 3, 3, 2, 1, 1, 1),
(20, 20, 4, 3, 3, 3, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_tasks`
--

CREATE TABLE `cms_tasks` (
  `ID` int(11) NOT NULL,
  `children` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '0 if task is root level or menuid if this is child on any task',
  `status` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_tasks`
--

INSERT INTO `cms_tasks` (`ID`, `children`, `name`, `parent`, `status`, `description`) VALUES
(1, 0, 'Tasks System', 0, '20', 'Implement a task management system.'),
(2, 2, 'Menu System', 0, '50', 'Menu and submenu system.'),
(4, 4, 'Users System', 0, '0', 'Users registration, login, dashboard'),
(5, 0, 'Add Menu Items', 2, '-10', 'Admin page for adding menus.'),
(6, 0, 'Registration', 4, '75', 'User Registration'),
(7, 0, 'User Login', 4, '100', 'User login and sessions'),
(8, 0, 'User Settings', 4, '-5', 'Allow the user to change various settings.'),
(9, 0, 'Menu Styling', 2, '25', 'Finish styling the dropdowns.'),
(10, 0, 'User Logout', 4, '100', 'Logout cleanly.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_themes`
--

CREATE TABLE `cms_themes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Background` varchar(7) NOT NULL,
  `Font` varchar(7) NOT NULL,
  `Links` varchar(7) NOT NULL,
  `Accents` varchar(7) NOT NULL,
  `Medium` varchar(7) NOT NULL,
  `Enabled` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_themes`
--

INSERT INTO `cms_themes` (`ID`, `Name`, `Background`, `Font`, `Links`, `Accents`, `Medium`, `Enabled`) VALUES
(1, 'Default', '#333333', '#CCCCCC', '#00CED1', '#009999', '#555555', 1),
(2, 'Light', '#BDBCB7', '#111111', '#933C00', '#6B6C68', '#CCDBDF', 1),
(4, 'Purple', '#424242', '#C7C7C7', '#B95EA2', '#723A64', '#525252', 1),
(5, 'Pink', '#333333', '#CCCCCC', '#FF80FE', '#B83082', '#555555', 1),
(7, 'Blue', '#333333', '#CCCCCC', '#15C3ED', '#5476BA', '#555555', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_traits`
--

CREATE TABLE `cms_traits` (
  `ID` int(11) NOT NULL,
  `tName` varchar(150) NOT NULL,
  `tDescription` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `UserNick` varchar(50) NOT NULL,
  `UserEmail` varchar(150) NOT NULL,
  `UserPass` varchar(255) NOT NULL,
  `UserLevel` int(20) NOT NULL,
  `UserRank` int(11) NOT NULL DEFAULT '0',
  `UserTheme` varchar(50) NOT NULL,
  `UserAvatar` varchar(255) NOT NULL,
  `UserSignature` text NOT NULL,
  `UserWebpage` varchar(150) NOT NULL,
  `UserSteam` varchar(150) NOT NULL,
  `UserDiscord` varchar(150) NOT NULL,
  `UserFacebook` varchar(150) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastOnline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`ID`, `UserName`, `UserNick`, `UserEmail`, `UserPass`, `UserLevel`, `UserRank`, `UserTheme`, `UserAvatar`, `UserSignature`, `UserWebpage`, `UserSteam`, `UserDiscord`, `UserFacebook`, `RegDate`, `LastOnline`) VALUES
(1, 'Imri', 'Laoi', 'imrielle@gmail.com', '$2y$10$k3ClYjQfml7IKByNytdEeOmpJWG45BFIRMJCnl7eXVmEvxdD2h3be', 9, 0, 'red', '', '', 'www.something.com', 'imrielle', 'Imri#9041', 'imrielle', '2017-09-12 20:19:47', '2017-09-12 20:20:29'),
(2, 'Laoi', '', 'canielle@gmail.com', '$2y$10$9CtsJ8bkuEgmqMlwCDvqn.yL3IGhrsGyk7yf7QdHVM0mvyYzl34aq', 0, 0, '', '', '', '', '', '', '', '2017-10-20 20:12:25', '2017-10-20 20:12:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_bg_backgrounds`
--
ALTER TABLE `cms_bg_backgrounds`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_bonds`
--
ALTER TABLE `cms_bg_bonds`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_equip`
--
ALTER TABLE `cms_bg_equip`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_features`
--
ALTER TABLE `cms_bg_features`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_flaws`
--
ALTER TABLE `cms_bg_flaws`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_ideals`
--
ALTER TABLE `cms_bg_ideals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_skills`
--
ALTER TABLE `cms_bg_skills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_tools`
--
ALTER TABLE `cms_bg_tools`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_bg_traits`
--
ALTER TABLE `cms_bg_traits`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_classes`
--
ALTER TABLE `cms_classes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_archetype_spellsknown`
--
ALTER TABLE `cms_class_archetype_spellsknown`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_armor_prof`
--
ALTER TABLE `cms_class_armor_prof`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_barbarian_rage`
--
ALTER TABLE `cms_class_barbarian_rage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_barbarian_totems`
--
ALTER TABLE `cms_class_barbarian_totems`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_bard_spellsknown`
--
ALTER TABLE `cms_class_bard_spellsknown`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_cantrips`
--
ALTER TABLE `cms_class_cantrips`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_druid_circle_land`
--
ALTER TABLE `cms_class_druid_circle_land`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_equipment`
--
ALTER TABLE `cms_class_equipment`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_generic_spellslots`
--
ALTER TABLE `cms_class_generic_spellslots`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_monk_bonus`
--
ALTER TABLE `cms_class_monk_bonus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_monk_elemental_disciplines`
--
ALTER TABLE `cms_class_monk_elemental_disciplines`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_multiclass`
--
ALTER TABLE `cms_class_multiclass`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_paladin_sacred_oaths`
--
ALTER TABLE `cms_class_paladin_sacred_oaths`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_ranger_hunter`
--
ALTER TABLE `cms_class_ranger_hunter`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_ranger_spellsknown`
--
ALTER TABLE `cms_class_ranger_spellsknown`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_skills`
--
ALTER TABLE `cms_class_skills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_sorcerer_draconic`
--
ALTER TABLE `cms_class_sorcerer_draconic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_sorcerer_metamagic`
--
ALTER TABLE `cms_class_sorcerer_metamagic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_sorcerer_spellsknown`
--
ALTER TABLE `cms_class_sorcerer_spellsknown`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_class_tools`
--
ALTER TABLE `cms_class_tools`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_traits`
--
ALTER TABLE `cms_class_traits`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_warlock_invocations`
--
ALTER TABLE `cms_class_warlock_invocations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_warlock_pactmagic`
--
ALTER TABLE `cms_class_warlock_pactmagic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_class_wpn_prof`
--
ALTER TABLE `cms_class_wpn_prof`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_config`
--
ALTER TABLE `cms_config`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `cms_dnd_armor`
--
ALTER TABLE `cms_dnd_armor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_char`
--
ALTER TABLE `cms_dnd_char`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_epic_boons`
--
ALTER TABLE `cms_dnd_epic_boons`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_dnd_factions`
--
ALTER TABLE `cms_dnd_factions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_languages`
--
ALTER TABLE `cms_dnd_languages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_skills`
--
ALTER TABLE `cms_dnd_skills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_tools`
--
ALTER TABLE `cms_dnd_tools`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_trinkets`
--
ALTER TABLE `cms_dnd_trinkets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_dnd_weapons`
--
ALTER TABLE `cms_dnd_weapons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_feats`
--
ALTER TABLE `cms_feats`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `cms_forum_categories`
--
ALTER TABLE `cms_forum_categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `cms_forum_posts`
--
ALTER TABLE `cms_forum_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_forum_topics`
--
ALTER TABLE `cms_forum_topics`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cat` (`Cat`);

--
-- Indexes for table `cms_menu_main`
--
ALTER TABLE `cms_menu_main`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_menu_sub`
--
ALTER TABLE `cms_menu_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_races`
--
ALTER TABLE `cms_races`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `rFullName` (`rFullName`);

--
-- Indexes for table `cms_race_skills`
--
ALTER TABLE `cms_race_skills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_race_tools`
--
ALTER TABLE `cms_race_tools`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_spell_slots`
--
ALTER TABLE `cms_spell_slots`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_tasks`
--
ALTER TABLE `cms_tasks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_themes`
--
ALTER TABLE `cms_themes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_traits`
--
ALTER TABLE `cms_traits`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `tName` (`tName`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_bg_backgrounds`
--
ALTER TABLE `cms_bg_backgrounds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_bg_bonds`
--
ALTER TABLE `cms_bg_bonds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `cms_bg_equip`
--
ALTER TABLE `cms_bg_equip`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_bg_features`
--
ALTER TABLE `cms_bg_features`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_bg_flaws`
--
ALTER TABLE `cms_bg_flaws`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `cms_bg_ideals`
--
ALTER TABLE `cms_bg_ideals`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `cms_bg_skills`
--
ALTER TABLE `cms_bg_skills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_bg_tools`
--
ALTER TABLE `cms_bg_tools`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_bg_traits`
--
ALTER TABLE `cms_bg_traits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cms_classes`
--
ALTER TABLE `cms_classes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_class_archetype_spellsknown`
--
ALTER TABLE `cms_class_archetype_spellsknown`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_armor_prof`
--
ALTER TABLE `cms_class_armor_prof`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cms_class_barbarian_rage`
--
ALTER TABLE `cms_class_barbarian_rage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_barbarian_totems`
--
ALTER TABLE `cms_class_barbarian_totems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_class_bard_spellsknown`
--
ALTER TABLE `cms_class_bard_spellsknown`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_cantrips`
--
ALTER TABLE `cms_class_cantrips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_class_druid_circle_land`
--
ALTER TABLE `cms_class_druid_circle_land`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_class_equipment`
--
ALTER TABLE `cms_class_equipment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `cms_class_generic_spellslots`
--
ALTER TABLE `cms_class_generic_spellslots`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_monk_bonus`
--
ALTER TABLE `cms_class_monk_bonus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_monk_elemental_disciplines`
--
ALTER TABLE `cms_class_monk_elemental_disciplines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cms_class_multiclass`
--
ALTER TABLE `cms_class_multiclass`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms_class_paladin_sacred_oaths`
--
ALTER TABLE `cms_class_paladin_sacred_oaths`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_class_ranger_hunter`
--
ALTER TABLE `cms_class_ranger_hunter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_class_ranger_spellsknown`
--
ALTER TABLE `cms_class_ranger_spellsknown`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_sorcerer_draconic`
--
ALTER TABLE `cms_class_sorcerer_draconic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_class_sorcerer_metamagic`
--
ALTER TABLE `cms_class_sorcerer_metamagic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_class_sorcerer_spellsknown`
--
ALTER TABLE `cms_class_sorcerer_spellsknown`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_traits`
--
ALTER TABLE `cms_class_traits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `cms_class_warlock_invocations`
--
ALTER TABLE `cms_class_warlock_invocations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cms_class_warlock_pactmagic`
--
ALTER TABLE `cms_class_warlock_pactmagic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_class_wpn_prof`
--
ALTER TABLE `cms_class_wpn_prof`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cms_config`
--
ALTER TABLE `cms_config`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_dnd_armor`
--
ALTER TABLE `cms_dnd_armor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_dnd_char`
--
ALTER TABLE `cms_dnd_char`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_dnd_epic_boons`
--
ALTER TABLE `cms_dnd_epic_boons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_dnd_factions`
--
ALTER TABLE `cms_dnd_factions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_dnd_languages`
--
ALTER TABLE `cms_dnd_languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cms_dnd_skills`
--
ALTER TABLE `cms_dnd_skills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_dnd_tools`
--
ALTER TABLE `cms_dnd_tools`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cms_dnd_trinkets`
--
ALTER TABLE `cms_dnd_trinkets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `cms_dnd_weapons`
--
ALTER TABLE `cms_dnd_weapons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cms_feats`
--
ALTER TABLE `cms_feats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `cms_forum_categories`
--
ALTER TABLE `cms_forum_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_forum_posts`
--
ALTER TABLE `cms_forum_posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_forum_topics`
--
ALTER TABLE `cms_forum_topics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menu_main`
--
ALTER TABLE `cms_menu_main`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_menu_sub`
--
ALTER TABLE `cms_menu_sub`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_races`
--
ALTER TABLE `cms_races`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `cms_race_skills`
--
ALTER TABLE `cms_race_skills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cms_race_tools`
--
ALTER TABLE `cms_race_tools`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cms_spell_slots`
--
ALTER TABLE `cms_spell_slots`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_tasks`
--
ALTER TABLE `cms_tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_themes`
--
ALTER TABLE `cms_themes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_traits`
--
ALTER TABLE `cms_traits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cms_forum_topics`
--
ALTER TABLE `cms_forum_topics`
  ADD CONSTRAINT `cms_forum_topics_ibfk_1` FOREIGN KEY (`Cat`) REFERENCES `cms_forum_categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
