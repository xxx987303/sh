-- MySQL dump 10.13  Distrib 5.6.32, for osx10.8 (x86_64)
--
-- Host: localhost    Database: cms-pw-sh
-- ------------------------------------------------------
-- Server version	5.6.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caches` (
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caches`
--

LOCK TABLES `caches` WRITE;
/*!40000 ALTER TABLE `caches` DISABLE KEYS */;
INSERT INTO `caches` VALUES ('FileCompiler__d91eefb91665cfaca1e127b285b9a07b','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_possession.php\",\"hash\":\"4adfe4737663afbfa2fac3105510a781\",\"size\":455,\"time\":1600267512,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_possession.php\",\"hash\":\"4adfe4737663afbfa2fac3105510a781\",\"size\":455,\"time\":1600267512}}','2010-04-08 03:10:10'),('FileCompiler__64293fe93873a9217673fef4f5633c73','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/d_artwork.php\",\"hash\":\"77f5895ff9f7eafae2f2a3b01d3f6c6c\",\"size\":574,\"time\":1600003311,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/d_artwork.php\",\"hash\":\"77f5895ff9f7eafae2f2a3b01d3f6c6c\",\"size\":574,\"time\":1600003311}}','2010-04-08 03:10:10'),('FileCompiler__13fa09056fadb847ac11c8f1bce71065','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/d_artworks.php\",\"hash\":\"c8f71107b619295b3954d3e36a7295b6\",\"size\":278,\"time\":1600003311,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/d_artworks.php\",\"hash\":\"c8f71107b619295b3954d3e36a7295b6\",\"size\":278,\"time\":1600003311}}','2010-04-08 03:10:10'),('FileCompiler__1ebff1d4a2ac47939a3dd758141d0977','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/countries.php\",\"hash\":\"6d3b5a347f4cec0dc6cb6bf55a1bf0e3\",\"size\":216,\"time\":1598014032,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/countries.php\",\"hash\":\"6d3b5a347f4cec0dc6cb6bf55a1bf0e3\",\"size\":216,\"time\":1598014032}}','2010-04-08 03:10:10'),('FileCompiler__5cc3b47fd937f0f530628e39207cb400','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/country.php\",\"hash\":\"e7c904798dbdc2fda27c25e6ab377963\",\"size\":29,\"time\":1598014032,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/country.php\",\"hash\":\"e7c904798dbdc2fda27c25e6ab377963\",\"size\":29,\"time\":1598014032}}','2010-04-08 03:10:10'),('FileCompiler__6b723a61d33a1ec3f4ef04cede348e7a','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/a_spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1600003269,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/a_spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1600003269}}','2010-04-08 03:10:10'),('FileCompiler__5e4161fc7eeb4175d73dd455cc5aebbf','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_seller.php\",\"hash\":\"f67432d42cf4e0f703e1ebf529ae5470\",\"size\":608,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_seller.php\",\"hash\":\"f67432d42cf4e0f703e1ebf529ae5470\",\"size\":608,\"time\":1600003241}}','2010-04-08 03:10:10'),('FileCompiler__065866fe916331cf74e7a40203efa867','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/d_spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1600003311,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/d_spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1600003311}}','2010-04-08 03:10:10'),('FileCompiler__7168f57a8fa4d797f4ca7d88bd61f64f','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_possessions.php\",\"hash\":\"66b143220474ecde07248171fe00d87c\",\"size\":237,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_possessions.php\",\"hash\":\"66b143220474ecde07248171fe00d87c\",\"size\":237,\"time\":1600003241}}','2010-04-08 03:10:10'),('ModulesUninstalled.info','{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":106,\"versionStr\":\"1.0.6\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":106,\"versionStr\":\"1.0.6\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":13,\"versionStr\":\"0.1.3\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldToggle\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1591519302,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":8,\"versionStr\":\"0.0.8\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1591519302,\"installed\":false,\"searchable\":\"comments\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1591519302,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1591519302,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1591519302,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1591519302,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true}}','2010-04-08 03:10:01'),('ModulesVerbose.info','{\"159\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"175\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.0\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.0\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.6\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"core\":true,\"versionStr\":\"1.0.5\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.1\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"187\":{\"summary\":\"Field that stores single and multi select options.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.5\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.1\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.2\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.7\"},\"168\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.2\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.6\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.6\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.3\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"165\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.2\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.3\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.4\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.2\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.5\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"160\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"170\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.0.9\"},\"181\":{\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.0\"},\"182\":{\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"180\":{\"summary\":\"Field that stores a single line of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"176\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"179\":{\"summary\":\"Required to use multi-language fields.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.0\"},\"183\":{\"summary\":\"Required to use multi-language page names.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.1.0\"},\"184\":{\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"author\":\"adamspruijt, ryan\",\"core\":true,\"versionStr\":\"1.1.4\"},\"177\":{\"summary\":\"Manage system languages\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"}},\"178\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"169\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.5\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.3\",\"searchable\":\"fields\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"164\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.7\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.8\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.8\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.2\"},\"161\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.4\"},\"162\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"153\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.7\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"163\":{\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"core\":true,\"versionStr\":\"1.3.0\"}}','2010-04-08 03:10:01'),('Modules.info','{\"159\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1486245600,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"175\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":30,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.100\"]},\"autoload\":\"template=admin\",\"created\":1591856874,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":100,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":106,\"singular\":true,\"created\":1486245600,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":105,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":101,\"singular\":true,\"created\":1486245600,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"187\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":1,\"singular\":true,\"created\":1592312514,\"namespace\":\"ProcessWire\\\\\"},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":202,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":107,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"168\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":162,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1486348625,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":106,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":126,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":103,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"165\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":2,\"created\":1486348084,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":123,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":104,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"156\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":105,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"160\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"170\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1486348626,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":109,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"181\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"singular\":true,\"created\":1591857545,\"namespace\":\"ProcessWire\\\\\"},\"182\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1591857545,\"namespace\":\"ProcessWire\\\\\"},\"180\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1591857545,\"namespace\":\"ProcessWire\\\\\"},\"176\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1591857528,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"179\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1591857545,\"namespace\":\"ProcessWire\\\\\"},\"183\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":10,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1591857579,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"184\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":114,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1591857601,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"177\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1591857528,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"178\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1591857528,\"namespace\":\"ProcessWire\\\\\"},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"169\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":495,\"created\":1486348626,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":113,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"164\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1486348084,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":107,\"permission\":\"page-view\",\"created\":1486245600,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":118,\"permission\":\"module-admin\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":109,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":108,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":122,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"161\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1486245600,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":104,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"162\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1486348066,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1486245600,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"153\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":17,\"singular\":true,\"created\":1486245600,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1486245600,\"namespace\":\"ProcessWire\\\\\"},\"163\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":130,\"singular\":1,\"created\":1486348067,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"}}','2010-04-08 03:10:01'),('FileCompiler__b3954442be4b9a36072746b8ce4a8697','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_artwork.php\",\"hash\":\"45b61b63af1fbfdcca5bf8ddb9fcf66d\",\"size\":578,\"time\":1600492806,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_artwork.php\",\"hash\":\"45b61b63af1fbfdcca5bf8ddb9fcf66d\",\"size\":578,\"time\":1600492806}}','2010-04-08 03:10:10'),('FileCompiler__257d3d1ea3a550116af9c790f88ec77b','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_artworks.php\",\"hash\":\"c8f71107b619295b3954d3e36a7295b6\",\"size\":278,\"time\":1600003238,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_artworks.php\",\"hash\":\"c8f71107b619295b3954d3e36a7295b6\",\"size\":278,\"time\":1600003238}}','2010-04-08 03:10:10'),('FileCompiler__10e8e9a930eaba0faad8503aa55f93b1','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_brands.php\",\"hash\":\"95dbc2a00c3b1d284dd276f90dd58ec6\",\"size\":191,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_brands.php\",\"hash\":\"95dbc2a00c3b1d284dd276f90dd58ec6\",\"size\":191,\"time\":1600003241}}','2010-04-08 03:10:10'),('FileCompiler__dcc8d45b3a7c6f38e743a76ac113394e','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_sellers.php\",\"hash\":\"1ef69e8668349e9fb811e6501798e937\",\"size\":188,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_sellers.php\",\"hash\":\"1ef69e8668349e9fb811e6501798e937\",\"size\":188,\"time\":1600003241}}','2010-04-08 03:10:10'),('FileCompiler__ef759dc6c6cccd66294fb613eb269a5d','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_persons.php\",\"hash\":\"65c9e08b5c285911a4fbd53b3b9c4653\",\"size\":409,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_persons.php\",\"hash\":\"65c9e08b5c285911a4fbd53b3b9c4653\",\"size\":409,\"time\":1600003241}}','2010-04-08 03:10:10'),('FileCompiler__5ca50b840be8e75130dc90fc329f1b79','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_brand.php\",\"hash\":\"392b3c6573e4c57a19bdb85fae9887aa\",\"size\":604,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_brand.php\",\"hash\":\"392b3c6573e4c57a19bdb85fae9887aa\",\"size\":604,\"time\":1600003241}}','2010-04-08 03:10:10'),('FileCompiler__eb70eaf3c4e4055a9a38b7c00d042a03','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_search.php\",\"hash\":\"46d2e85c450b4cd8f9196ce9ea7c199c\",\"size\":4403,\"time\":1600069617,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_search.php\",\"hash\":\"46d2e85c450b4cd8f9196ce9ea7c199c\",\"size\":4403,\"time\":1600069617}}','2010-04-08 03:10:10'),('FileCompiler__136f6af9a65ab6efb902b07269dd06a9','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_person.php\",\"hash\":\"0e828db1680b98f2f6f7bc6b2ad38734\",\"size\":596,\"time\":1600003241,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_person.php\",\"hash\":\"0e828db1680b98f2f6f7bc6b2ad38734\",\"size\":596,\"time\":1600003241}}','2010-04-08 03:10:10'),('Modules.wire/modules/','AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module','2010-04-08 03:10:01'),('FileCompiler__b4ae00a4a3a0a4c2a7df068f6f6faf5e','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1599462459,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/spot.php\",\"hash\":\"39a36f6b5f723531e94316774f9a35c9\",\"size\":1438,\"time\":1599462459}}','2010-04-08 03:10:10'),('Permissions.names','{\"lang-edit\":5749,\"logs-edit\":5744,\"logs-view\":5743,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":5741,\"page-lister\":5738,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}','2010-04-08 03:10:10'),('FileCompiler__78f4502583c0867cafd3700b39911466','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/home.php\",\"hash\":\"2e51ee2ec9f7fdd32d9e2db9b2c8798a\",\"size\":1164,\"time\":1599462774,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"2e51ee2ec9f7fdd32d9e2db9b2c8798a\",\"size\":1164,\"time\":1599462774}}','2010-04-08 03:10:10'),('FileCompiler__ad208a9b748ac05503d7d53a32d3ea0e','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/basic-page.php\",\"hash\":\"ff5bc973b2de335bbccf614c23f23400\",\"size\":298,\"time\":1598014032,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"ff5bc973b2de335bbccf614c23f23400\",\"size\":298,\"time\":1598014032}}','2010-04-08 03:10:10'),('FileCompiler__34b1dbfeff65a5e8ec993ae07d662541','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/h_spot.php\",\"hash\":\"1036391f6d97ac78b9b968e68a351ec8\",\"size\":1098,\"time\":1602429590,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/h_spot.php\",\"hash\":\"1036391f6d97ac78b9b968e68a351ec8\",\"size\":1098,\"time\":1602429590}}','2010-04-08 03:10:10'),('FileCompiler__43cb73e614d7fab5f71379e78b54cd87','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/_main.php\",\"hash\":\"0b0a4156755526cb1f28c17b862b730c\",\"size\":6981,\"time\":1601708377,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_main.php\",\"hash\":\"0b0a4156755526cb1f28c17b862b730c\",\"size\":6981,\"time\":1601708377}}','2010-04-08 03:10:10'),('FileCompiler__49d9dafd3108f72ed596d48d565d32f4','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/_init.php\",\"hash\":\"d5782cdee15f363bc9e2dcd6f68fc33f\",\"size\":1004,\"time\":1598014032,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/_init.php\",\"hash\":\"d5782cdee15f363bc9e2dcd6f68fc33f\",\"size\":1004,\"time\":1598014032}}','2010-04-08 03:10:10'),('FileCompiler__94776b1e2556e229e4d9bbf6aa3af136','{\"source\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/templates\\/admin.php\",\"hash\":\"fc4ee0043841690c147a1dc323751cd1\",\"size\":371,\"time\":1598014032,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/yb\\/Sites\\/sh\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"fc4ee0043841690c147a1dc323751cd1\",\"size\":371,\"time\":1598014032}}','2010-04-08 03:10:10');
/*!40000 ALTER TABLE `caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_artworks_featured`
--

DROP TABLE IF EXISTS `field_a_artworks_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_artworks_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_artworks_featured`
--

LOCK TABLES `field_a_artworks_featured` WRITE;
/*!40000 ALTER TABLE `field_a_artworks_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_artworks_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_date`
--

DROP TABLE IF EXISTS `field_a_av_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_date`
--

LOCK TABLES `field_a_av_date` WRITE;
/*!40000 ALTER TABLE `field_a_av_date` DISABLE KEYS */;
INSERT INTO `field_a_av_date` VALUES (5868,'1875 - 1948','','',''),(5869,'','','',''),(5875,'','','',''),(5871,'','','',''),(5872,'End of 19th Century','Конец 1800 - начало 1900','Fin de 19ème siècle','1900-talet'),(5873,'20th century','1900е годы','20ème siècle','1900-talet'),(5874,'','','',''),(5877,'1816 - 1898','','',''),(5878,'','','',''),(5879,'','','',''),(5880,'1763‑1814','','',''),(5882,'','','',''),(5883,'','','',''),(5885,'','','',''),(5887,'1846‑1920','','',''),(5892,'1929 - 1993','','',''),(5889,'','','',''),(5891,'','','',''),(5930,'','','','');
/*!40000 ALTER TABLE `field_a_av_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_duty`
--

DROP TABLE IF EXISTS `field_a_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_duty`
--

LOCK TABLES `field_a_av_duty` WRITE;
/*!40000 ALTER TABLE `field_a_av_duty` DISABLE KEYS */;
INSERT INTO `field_a_av_duty` VALUES (5859,1,0),(5863,1,0),(5866,1,0),(5867,1,0),(5868,1,0),(5869,1,0),(5875,1,0),(5871,1,0),(5872,1,0),(5873,1,0),(5874,1,0),(5877,1,0),(5878,1,0),(5879,1,0),(5880,1,0),(5882,3,0),(5883,1,0),(5885,1,0),(5887,1,0),(5892,1,0),(5889,1,0),(5891,1,0);
/*!40000 ALTER TABLE `field_a_av_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_firstname`
--

DROP TABLE IF EXISTS `field_a_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_firstname`
--

LOCK TABLES `field_a_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_a_av_firstname` DISABLE KEYS */;
INSERT INTO `field_a_av_firstname` VALUES (5859,'Rembrandt','Рембрандт','Rembrandt','Rembrandt'),(5863,'Jan','Ян','Jan','Jan'),(5866,'Valentin','Валантен','Valentin','Valentin'),(5867,'Unknown','Неизвестный','Artiste Inconnu','Okänd'),(5868,'Raffaele','Раффаэль','Raffaele','Raffaele'),(5869,'Viacheslav','Вячеслав','Viacheslav','Viacheslav'),(5875,'Abraham','Абрахам','Abraham','Abraham'),(5871,'Christer','Кристер','Christer','Christer'),(5872,'A.','A.','A.','A.'),(5873,'L.','L.','L.','L.'),(5874,'Salomon','Саломон','Salomon','Salomon'),(5877,'Peter Joseph','Петер Иосиф','Peter Joseph','Peter Joseph'),(5878,'Robert','Роберт Рафаилович','Robert','Robert'),(5879,'Basil','Василий Васильевич','Vasily','Vasily'),(5880,'Andries','Андрис','Andries','Andries'),(5882,'Haik','Хайк','Haik','Haik'),(5883,'Abraham','Абрахам','Abraham','Abraham'),(5885,'David','Давид','David','David'),(5887,'Vladimir','Владимир Егорович','Vladimir','Vladimir'),(5892,'Marcel','','',''),(5930,'Flemish','Фламандская','Primitifs Flamands','Flamländsk'),(5889,'Unknown Dutch','Неизвестный Голландский','Artiste inconnu Hollande','Okänd holländsk'),(5891,'Unknown Flemish','Неизвестный Фламандский','','');
/*!40000 ALTER TABLE `field_a_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_lastname`
--

DROP TABLE IF EXISTS `field_a_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_lastname`
--

LOCK TABLES `field_a_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_a_av_lastname` DISABLE KEYS */;
INSERT INTO `field_a_av_lastname` VALUES (5859,'van Rijn','ван Рейн','van Rijn','van Rijn'),(5863,'van Eyck','ван Эйк','van Eyck','van Eyck'),(5866,'de Boulogne','де Булонь','de Boulogne','de Boulogne'),(5867,'Artist','Xудожник','','Konstnärer'),(5868,'Frigerio','Фриджерио','Frigerio','Frigerio'),(5869,'Kalinin','Калинин','Kalinin','Kalinin'),(5875,'Storck','Сторк','Storck','Storck'),(5871,'Edwardson (Schmiterlöw)','Эдвардсон (Шмитерлев)','Edwardson (Schmiterlöw)','Edwardson (Schmiterlöw)'),(5872,'Collomb','Колломб','Collomb','Collomb'),(5873,'Vilardi','Виларди','Vilardi','Vilardi'),(5874,'Koninck','Конинк','Koninck','Koninck'),(5877,'Minjon','Миньон','Minjon','Minjon'),(5878,'Falk','Фальк','Falk','Falk'),(5879,'Samoylov','Самойлов','Samoylov','Samoylov'),(5880,'Vermeulen','Вермейлен','Vermeulen','Vermeulen'),(5882,'Mhitaryan','Мхитарян','Mhitaryan','Mhitaryan'),(5883,'Teniers','Тенирс','Teniers','Teniers'),(5885,'Teniers II the Younger','Тенирс II мл.','Teniers II le Jeune','Teniers II den yngre'),(5887,'','Маковский','',''),(5892,'Genay','','',''),(5930,'Painting School','Школа живописи','','Skola'),(5889,'Artist','Художник','','Konstnär'),(5891,'Artist','Художник','','');
/*!40000 ALTER TABLE `field_a_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_school`
--

DROP TABLE IF EXISTS `field_a_av_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_school` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_school`
--

LOCK TABLES `field_a_av_school` WRITE;
/*!40000 ALTER TABLE `field_a_av_school` DISABLE KEYS */;
INSERT INTO `field_a_av_school` VALUES (5859,5862,0),(5874,5862,0),(5875,5862,0),(5880,5862,0),(5889,5862,0),(5863,5865,0),(5883,5865,0),(5885,5865,0),(5891,5865,0),(5930,5865,0);
/*!40000 ALTER TABLE `field_a_av_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_av_url`
--

DROP TABLE IF EXISTS `field_a_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_av_url`
--

LOCK TABLES `field_a_av_url` WRITE;
/*!40000 ALTER TABLE `field_a_av_url` DISABLE KEYS */;
INSERT INTO `field_a_av_url` VALUES (5859,'https://nl.wikipedia.org/wiki/Rembrandt_van_Rijn'),(5869,'http://lebed.com/2006/art4785.htm'),(5879,'http://www.biografija.ru/biography/samojlov-vasilij-vasilevich.htm'),(5882,'https://my.mail.ru/mail/albertohaik/');
/*!40000 ALTER TABLE `field_a_av_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_base`
--

DROP TABLE IF EXISTS `field_a_aw_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_base` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_base`
--

LOCK TABLES `field_a_aw_base` WRITE;
/*!40000 ALTER TABLE `field_a_aw_base` DISABLE KEYS */;
INSERT INTO `field_a_aw_base` VALUES (5907,1,0),(5908,1,0),(5909,1,0),(5910,1,0),(5911,1,0),(5912,1,0),(5913,1,0),(5914,3,0),(5915,3,0),(5916,4,0),(5917,1,0),(5918,1,0),(5919,3,0),(5920,1,0),(5921,4,0),(5924,1,0),(5925,3,0),(5926,3,0),(5927,1,0),(5928,1,0),(5929,3,0),(5931,4,0),(5932,4,0),(5933,1,0),(5934,1,0),(5935,1,0),(5936,3,0),(5937,3,0),(5938,3,0),(5939,4,0),(5940,3,0);
/*!40000 ALTER TABLE `field_a_aw_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_collection`
--

DROP TABLE IF EXISTS `field_a_aw_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_collection` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_collection`
--

LOCK TABLES `field_a_aw_collection` WRITE;
/*!40000 ALTER TABLE `field_a_aw_collection` DISABLE KEYS */;
INSERT INTO `field_a_aw_collection` VALUES (5907,5900,0),(5908,5901,0),(5915,5901,0),(5940,5901,0),(5909,5902,0),(5910,5902,0),(5911,5902,0),(5912,5902,0),(5914,5902,0),(5916,5902,0),(5917,5902,0),(5918,5902,0),(5920,5902,0),(5921,5902,0),(5924,5902,0),(5925,5902,0),(5932,5902,0),(5935,5902,0),(5937,5902,0),(5939,5902,0),(5913,5903,0),(5922,5904,0),(5923,5904,0),(5919,5905,0),(5926,5905,0),(5927,5905,0),(5928,5905,0),(5929,5905,0),(5933,5905,0),(5936,5905,0);
/*!40000 ALTER TABLE `field_a_aw_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_condition`
--

DROP TABLE IF EXISTS `field_a_aw_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_condition` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_condition`
--

LOCK TABLES `field_a_aw_condition` WRITE;
/*!40000 ALTER TABLE `field_a_aw_condition` DISABLE KEYS */;
INSERT INTO `field_a_aw_condition` VALUES (5910,'Craquelure, Laying, Minor damage','Кракелюры, Натяжка холста, Небольшие повреждения','Craquelure, Couché, Petits dégâts','Krackelyr, Lagning, Mindre skador'),(5911,'','','',''),(5912,'','','',''),(5913,'','','',''),(5914,'','','',''),(5915,'','','',''),(5916,'','','',''),(5917,'','','',''),(5918,'','','',''),(5919,'','','',''),(5920,'','','',''),(5921,'','','',''),(5922,'','','',''),(5923,'','','',''),(5924,'','','',''),(5925,'Förstärkt pannå, retuscher, sprickor, krackelerad.','','',''),(5926,'Retuscher','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'Wear due to age','Возрастной износ','Usure liée à l\'âge','Åldersrelaterat slitage'),(5931,'','','',''),(5932,'','','',''),(5933,'','','',''),(5934,'shit....','Краска поплыла в нескольких местах...','',''),(5935,'','','',''),(5936,'','','',''),(5937,'','','',''),(5938,'','','',''),(5939,'','','',''),(5940,'','','','');
/*!40000 ALTER TABLE `field_a_aw_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_copy_artwork`
--

DROP TABLE IF EXISTS `field_a_aw_copy_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_copy_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_copy_artwork`
--

LOCK TABLES `field_a_aw_copy_artwork` WRITE;
/*!40000 ALTER TABLE `field_a_aw_copy_artwork` DISABLE KEYS */;
INSERT INTO `field_a_aw_copy_artwork` VALUES (5910,5907,0),(5909,5908,0),(5914,5915,0),(5924,5923,0),(5937,5938,0);
/*!40000 ALTER TABLE `field_a_aw_copy_artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_featured`
--

DROP TABLE IF EXISTS `field_a_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_featured`
--

LOCK TABLES `field_a_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_a_aw_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_link`
--

DROP TABLE IF EXISTS `field_a_aw_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_link`
--

LOCK TABLES `field_a_aw_link` WRITE;
/*!40000 ALTER TABLE `field_a_aw_link` DISABLE KEYS */;
INSERT INTO `field_a_aw_link` VALUES (5915,4,0),(5924,6,0),(5926,4,0),(5927,3,0),(5928,3,0),(5931,5,0),(5933,4,0),(5936,4,0),(5937,4,0),(5940,4,0);
/*!40000 ALTER TABLE `field_a_aw_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_more`
--

DROP TABLE IF EXISTS `field_a_aw_more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_more` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_more`
--

LOCK TABLES `field_a_aw_more` WRITE;
/*!40000 ALTER TABLE `field_a_aw_more` DISABLE KEYS */;
INSERT INTO `field_a_aw_more` VALUES (5909,'','Копия довольно известной работы итальянца Raffaele Frigerio','',''),(5910,'','','',''),(5911,'','','',''),(5912,'','','',''),(5913,'Haik Mhitaryan','Хаик Мхитарян','Haik Mhitaryan','Haik Mhitaryan'),(5914,'','','',''),(5915,'','','',''),(5916,'','','',''),(5917,'','','',''),(5918,'','','',''),(5919,'The pair was sold for 2,200 SEK','Пара ушла за 2,200 SEK','Vendu pour 2,200 SEK',''),(5920,'','','',''),(5921,'','','',''),(5922,'','','',''),(5923,'','','',''),(5924,'','','',''),(5925,'','','',''),(5926,'','','',''),(5927,'Sold for 6,200 SEK (the pair Winter/Summer)','Пара \"Город зимой\"/\"Город летом\" ушла за 6,200 SEK','Sold for 6,200 SEK (the pair Winter/Summer)','Sold for 6,200 SEK (the pair Winter/Summer)'),(5928,'Sold for 6,200 SEK (the pair Winter/Summer)','Пара \"Город зимой\"/\"Город летом\" ушла за 6,200 SEK','Sold for 6,200 SEK (the pair Winter/Summer)','Sold for 6,200 SEK (the pair Winter/Summer)'),(5929,'Sold for 1700EUR','Ушло за 1700 евро','Sold for 1700EUR','Sold for 1700EUR'),(5931,'','','',''),(5932,'','','',''),(5933,'','','',''),(5934,'','','',''),(5935,'','','',''),(5936,'Sold for 58 KSEK, estimate 20 KSEK','','',''),(5937,'','','',''),(5938,'','','',''),(5939,'','','',''),(5940,'','','','');
/*!40000 ALTER TABLE `field_a_aw_more` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_person`
--

DROP TABLE IF EXISTS `field_a_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_person`
--

LOCK TABLES `field_a_aw_person` WRITE;
/*!40000 ALTER TABLE `field_a_aw_person` DISABLE KEYS */;
INSERT INTO `field_a_aw_person` VALUES (5922,5859,0),(5907,5866,0),(5910,5867,0),(5912,5867,0),(5934,5867,0),(5935,5867,0),(5908,5868,0),(5913,5869,0),(5916,5869,0),(5921,5869,0),(5917,5871,0),(5918,5871,0),(5920,5871,0),(5911,5872,0),(5909,5873,0),(5923,5874,0),(5924,5874,0),(5926,5875,0),(5927,5877,0),(5928,5877,0),(5931,5878,0),(5932,5879,0),(5939,5879,0),(5933,5880,0),(5936,5883,0),(5915,5885,0),(5937,5885,0),(5938,5885,0),(5940,5885,0),(5919,5889,0),(5925,5889,0),(5914,5891,0),(5929,5930,0);
/*!40000 ALTER TABLE `field_a_aw_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_possession`
--

DROP TABLE IF EXISTS `field_a_aw_possession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_possession` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_possession`
--

LOCK TABLES `field_a_aw_possession` WRITE;
/*!40000 ALTER TABLE `field_a_aw_possession` DISABLE KEYS */;
INSERT INTO `field_a_aw_possession` VALUES (5909,5942,0),(5910,5943,0),(5911,5944,0),(5912,5945,0),(5935,5945,0),(5913,5946,0),(5914,5947,0),(5916,5948,0),(5917,5949,0),(5918,5950,0),(5920,5951,0),(5921,5952,0),(5924,5953,0),(5925,5954,0),(5932,5955,0),(5939,5955,0),(5937,5956,0);
/*!40000 ALTER TABLE `field_a_aw_possession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_provenance`
--

DROP TABLE IF EXISTS `field_a_aw_provenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_provenance` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_provenance`
--

LOCK TABLES `field_a_aw_provenance` WRITE;
/*!40000 ALTER TABLE `field_a_aw_provenance` DISABLE KEYS */;
INSERT INTO `field_a_aw_provenance` VALUES (5913,'2010-10-26/28, Hösten moderna auktion, lot 730','2010-10-26/28, Hösten moderna auktion, lot 730','2010-10-26/28, Hösten moderna auktion, lot 730','2010-10-26/28, Hösten moderna auktion, lot 730'),(5914,'','','',''),(5915,'','','',''),(5916,'','','',''),(5917,'','','',''),(5918,'','','',''),(5919,'','','',''),(5920,'','','',''),(5921,'','','',''),(5922,'','','',''),(5923,'','','',''),(5924,'','','',''),(5925,'','','',''),(5926,'','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'','','',''),(5931,'','','',''),(5932,'','','',''),(5933,'','','',''),(5934,'','','',''),(5935,'','','',''),(5936,'','','',''),(5937,'Hans Erik Börjesons collection _AO_ https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1; (see more) _AC_','Коллекция Hans Erik Börjesons _AO_ https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1;(описание) _AC_','Hans Erik Börjesons Samling _AO_ https://weekend.di.se/nyheter/konstsamlaren-saljer-livsverk-1;(se mer) _AC_',''),(5938,'','','',''),(5939,'','','',''),(5940,'','','','');
/*!40000 ALTER TABLE `field_a_aw_provenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_signature`
--

DROP TABLE IF EXISTS `field_a_aw_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_signature` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_signature`
--

LOCK TABLES `field_a_aw_signature` WRITE;
/*!40000 ALTER TABLE `field_a_aw_signature` DISABLE KEYS */;
INSERT INTO `field_a_aw_signature` VALUES (5909,'L. Vilardi','L. Vilardi','L. Vilardi','L. Vilardi'),(5910,'','','',''),(5911,'A.Collomb,1901','A.Collomb,1901','A.Collomb,1901','A.Collomb,1901'),(5912,'C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)','C.Moppiy (C.Moppix ?)'),(5913,'В.Калинин','В.Калинин','В.Калинин','В.Калинин'),(5914,'','','',''),(5915,'','','',''),(5916,'','','',''),(5917,'','','',''),(5918,'','','',''),(5919,'','','',''),(5920,'Edwardson-82','Edwardson-82','Edwardson-82','Edwardson-82'),(5921,'','','',''),(5922,'','','',''),(5923,'','','',''),(5924,'','','',''),(5925,'not signed','без подписи','non signé','osignerad'),(5926,'','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'','','',''),(5931,'Falk,1914','Falk,1914','Falk,1914','Falk,1914'),(5932,'В.Самойлов','','',''),(5933,'Avercamp','','',''),(5934,'','','',''),(5935,'C.Moppiy (C.Moppix ?)','','',''),(5936,'','','',''),(5937,'Bears signature','','',''),(5938,'','','',''),(5939,'В.Самойлов','','',''),(5940,'','','','');
/*!40000 ALTER TABLE `field_a_aw_signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_size`
--

DROP TABLE IF EXISTS `field_a_aw_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_size`
--

LOCK TABLES `field_a_aw_size` WRITE;
/*!40000 ALTER TABLE `field_a_aw_size` DISABLE KEYS */;
INSERT INTO `field_a_aw_size` VALUES (5907,'94,5 x 137','','',''),(5908,'','','',''),(5909,'','','',''),(5910,'30x36','','',''),(5911,'45x60','','',''),(5912,'13x17','','',''),(5913,'53 x 52,5','','',''),(5914,'23x27','','',''),(5915,'23.5х33','','',''),(5916,'71.5x53','','',''),(5917,'72x92','','',''),(5918,'81x105','','',''),(5919,'20 x 25','','',''),(5920,'72x57','','',''),(5921,'62x46,5','','',''),(5922,'','','',''),(5923,'','','',''),(5924,'20x25','','',''),(5925,'53 x 70','','',''),(5926,'46x62','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'34.5x33','','',''),(5931,'16x22','','',''),(5932,'18x12.5','','',''),(5933,'61x79','','',''),(5934,'','','',''),(5935,'13x17','','',''),(5936,'','','',''),(5937,'38.5x48','','',''),(5938,'46 x 66','','',''),(5939,'','','',''),(5940,'23.5х33','','','');
/*!40000 ALTER TABLE `field_a_aw_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_technique`
--

DROP TABLE IF EXISTS `field_a_aw_technique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_technique` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_technique`
--

LOCK TABLES `field_a_aw_technique` WRITE;
/*!40000 ALTER TABLE `field_a_aw_technique` DISABLE KEYS */;
INSERT INTO `field_a_aw_technique` VALUES (5907,2,0),(5908,2,0),(5909,2,0),(5910,2,0),(5911,2,0),(5912,2,0),(5913,2,0),(5914,2,0),(5915,2,0),(5916,1,0),(5917,2,0),(5918,2,0),(5919,2,0),(5920,2,0),(5921,1,0),(5922,2,0),(5923,2,0),(5924,2,0),(5925,2,0),(5926,2,0),(5927,2,0),(5928,2,0),(5929,2,0),(5931,1,0),(5932,3,0),(5933,2,0),(5934,2,0),(5935,2,0),(5936,2,0),(5937,2,0),(5938,2,0),(5939,3,0),(5940,2,0);
/*!40000 ALTER TABLE `field_a_aw_technique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_url`
--

DROP TABLE IF EXISTS `field_a_aw_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_url`
--

LOCK TABLES `field_a_aw_url` WRITE;
/*!40000 ALTER TABLE `field_a_aw_url` DISABLE KEYS */;
INSERT INTO `field_a_aw_url` VALUES (5907,'https://skd-online-collection.skd.museum/Details/Index/415366'),(5910,'https://www.bukowskis.com/sv/lots/1006514-okand-konstnar-1800-tal-olja-pa-duk'),(5911,'https://www.metropol.se/auctions/detail.asp?og={95DC4588-F7C3-42E1-9EA0-7725687D7862}'),(5913,'https://www.bukowskis.com/sv/lots/208919-viatcheslav-kalinin-olja-pa-duk-sign'),(5914,'https://www.bukowskis.com/sv/lots/146905-okand-konstnar-olja-pa-panna-flamlandsk-skola-1700-tal'),(5915,'https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx'),(5916,'https://www.bukowskis.com/sv/lots/193037-viatcheslav-kalinin-akvarell-sign-o-dat'),(5919,'https://www.bukowskis.com/sv/lots/1027379-hollandsk-skola-1800-tal-ett-par-olja-pa-panna-osignerade'),(5920,'https://www.metropol.se/auctions/detail.asp?OG={0485555F-7D85-4A8A-A21D-A3010E79AA1A}'),(5925,'https://www.bukowskis.com/sv/lots/1038896-hollandsk-skola-1700-tal-olja-pa-panna-osignerad'),(5926,'https://www.bukowskis.com/sv/lots/1029682-abraham-storck-hans-krets-olja-pa-panna'),(5928,'https://www.bukowskis.com/sv/lots/831414-peter-joseph-minjon-tillskrivna-olja-pa-uppfodrad-duk-ett-par-bar-signatur-p-j-minjon-samt-datering-1864-resp-186'),(5929,'https://www.bukowskis.com/sv/lots/1047244-okand-konstnar-flamlandsk-skola-kroginterior-1600-1700-tal'),(5933,'https://www.uppsalaauktion.se/auktioner/?auction_name=20180612&catalog_nr=761;https://nl.wikipedia.org/wiki/De_Stomme_van_Kampen'),(5935,'https://www.metropol.se/auctions/detail.asp?og={2973E330-F30A-41F4-9A14-BFB9FA05ADD0}'),(5936,'https://www.uppsalaauktion.se/auktioner/?auction_name=20180612&catalog_nr=759'),(5937,'https://www.bukowskis.com/sv/auctions/E255/lots/1009015-david-teniers-d-y-efter-olja-pa-panna-1800-tal-bar-signatur'),(5938,'https://commons.wikimedia.org/wiki/File:David_Teniers_the_Younger_-_Puffspieler_in_einem_Wirtshaus.jpg'),(5940,'https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx');
/*!40000 ALTER TABLE `field_a_aw_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_aw_year`
--

DROP TABLE IF EXISTS `field_a_aw_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_aw_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_aw_year`
--

LOCK TABLES `field_a_aw_year` WRITE;
/*!40000 ALTER TABLE `field_a_aw_year` DISABLE KEYS */;
INSERT INTO `field_a_aw_year` VALUES (5907,'1620','','',''),(5908,'','','',''),(5909,'20th Century','1900е годы','20ème siècle','1900-talet'),(5910,'19th Century','1800е годы','19ème siècle','1800-talet'),(5911,'1901','','',''),(5912,'','','',''),(5913,'','','',''),(5914,'18th Century','1700е годы','18ème siècle','1700-talet'),(5915,'','','',''),(5916,'','','',''),(5917,'1979','','',''),(5918,'1973','','',''),(5919,'19th Century','1800е годы','19ème siècle','1800-talet'),(5920,'1982','','',''),(5921,'','','',''),(5922,'','','',''),(5923,'1640 - 1650','','',''),(5924,'19th Century','1800е годы','19ème siècle','1800-talet'),(5925,'18th Century','1700е годы','18ème siècle','1700-talet'),(5926,'','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'17th/18th Century','1600/1700 годы','17ème/18ème siècle','1600/1700 talet'),(5931,'','','',''),(5932,'1870-1885','','',''),(5933,'','','',''),(5934,'','','',''),(5935,'','','',''),(5936,'','','',''),(5937,'19th Century','1800е годы','19ème siècle','1800 talet'),(5938,'1640','','',''),(5939,'1870-1885','','',''),(5940,'','','','');
/*!40000 ALTER TABLE `field_a_aw_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_c_address`
--

DROP TABLE IF EXISTS `field_a_c_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_c_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_address`
--

LOCK TABLES `field_a_c_address` WRITE;
/*!40000 ALTER TABLE `field_a_c_address` DISABLE KEYS */;
INSERT INTO `field_a_c_address` VALUES (5900,'Dresden','Дрезден','Dresden','Dresden'),(5901,'','','',''),(5902,'','','',''),(5903,'Europe','Европа','L\'Europe','Europa'),(5904,'Paris','Париж','Paris','Paris'),(5905,'','','','');
/*!40000 ALTER TABLE `field_a_c_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_c_duty`
--

DROP TABLE IF EXISTS `field_a_c_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_c_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_duty`
--

LOCK TABLES `field_a_c_duty` WRITE;
/*!40000 ALTER TABLE `field_a_c_duty` DISABLE KEYS */;
INSERT INTO `field_a_c_duty` VALUES (5900,2,0),(5901,3,0),(5902,3,0),(5903,3,0),(5904,2,0),(5905,4,0);
/*!40000 ALTER TABLE `field_a_c_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_c_person`
--

DROP TABLE IF EXISTS `field_a_c_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_c_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_person`
--

LOCK TABLES `field_a_c_person` WRITE;
/*!40000 ALTER TABLE `field_a_c_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_c_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_c_url`
--

DROP TABLE IF EXISTS `field_a_c_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_c_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_c_url`
--

LOCK TABLES `field_a_c_url` WRITE;
/*!40000 ALTER TABLE `field_a_c_url` DISABLE KEYS */;
INSERT INTO `field_a_c_url` VALUES (5900,'https://skd-online-collection.skd.museum/');
/*!40000 ALTER TABLE `field_a_c_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_artwork`
--

DROP TABLE IF EXISTS `field_a_p_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_artwork`
--

LOCK TABLES `field_a_p_artwork` WRITE;
/*!40000 ALTER TABLE `field_a_p_artwork` DISABLE KEYS */;
INSERT INTO `field_a_p_artwork` VALUES (5942,5909,0),(5943,5910,0),(5944,5911,0),(5945,5912,0),(5946,5913,0),(5947,5914,0),(5948,5916,0),(5949,5917,0),(5950,5918,0),(5951,5920,0),(5952,5921,0),(5953,5924,0),(5954,5925,0),(5955,5932,0),(5945,5935,1),(5956,5937,0),(5955,5939,1);
/*!40000 ALTER TABLE `field_a_p_artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_currency`
--

DROP TABLE IF EXISTS `field_a_p_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_currency` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_currency`
--

LOCK TABLES `field_a_p_currency` WRITE;
/*!40000 ALTER TABLE `field_a_p_currency` DISABLE KEYS */;
INSERT INTO `field_a_p_currency` VALUES (5942,1,0),(5943,1,0),(5944,1,0),(5945,1,0),(5946,1,0),(5947,1,0),(5948,1,0),(5949,1,0),(5950,1,0),(5951,1,0),(5952,1,0),(5953,1,0),(5954,1,0),(5955,1,0),(5956,1,0);
/*!40000 ALTER TABLE `field_a_p_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_date`
--

DROP TABLE IF EXISTS `field_a_p_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_date`
--

LOCK TABLES `field_a_p_date` WRITE;
/*!40000 ALTER TABLE `field_a_p_date` DISABLE KEYS */;
INSERT INTO `field_a_p_date` VALUES (5942,'0000-00-00 00:00:00'),(5943,'0000-00-00 00:00:00'),(5944,'0000-00-00 00:00:00'),(5945,'0000-00-00 00:00:00'),(5946,'0000-00-00 00:00:00'),(5947,'0000-00-00 00:00:00'),(5948,'0000-00-00 00:00:00'),(5949,'0000-00-00 00:00:00'),(5950,'0000-00-00 00:00:00'),(5951,'0000-00-00 00:00:00'),(5952,'0000-00-00 00:00:00'),(5953,'0000-00-00 00:00:00'),(5954,'0000-00-00 00:00:00'),(5955,'0000-00-00 00:00:00'),(5956,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `field_a_p_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_object_number`
--

DROP TABLE IF EXISTS `field_a_p_object_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_object_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_object_number`
--

LOCK TABLES `field_a_p_object_number` WRITE;
/*!40000 ALTER TABLE `field_a_p_object_number` DISABLE KEYS */;
INSERT INTO `field_a_p_object_number` VALUES (5944,1146),(5945,1052),(5946,208919),(5948,193037),(5949,7683),(5950,7683),(5951,1120),(5952,193022),(5953,1164),(5954,1038896),(5955,131043),(5956,1009015);
/*!40000 ALTER TABLE `field_a_p_object_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_person`
--

DROP TABLE IF EXISTS `field_a_p_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_person`
--

LOCK TABLES `field_a_p_person` WRITE;
/*!40000 ALTER TABLE `field_a_p_person` DISABLE KEYS */;
INSERT INTO `field_a_p_person` VALUES (5946,5882,0),(5948,5882,0),(5952,5882,0);
/*!40000 ALTER TABLE `field_a_p_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_price_final`
--

DROP TABLE IF EXISTS `field_a_p_price_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_price_final` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_price_final`
--

LOCK TABLES `field_a_p_price_final` WRITE;
/*!40000 ALTER TABLE `field_a_p_price_final` DISABLE KEYS */;
INSERT INTO `field_a_p_price_final` VALUES (5942,150),(5943,2222),(5944,150),(5945,700),(5946,15000),(5947,3650),(5948,5000),(5949,468),(5950,732),(5951,450),(5952,5000),(5953,1200),(5954,3000),(5955,750),(5956,4855);
/*!40000 ALTER TABLE `field_a_p_price_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_price_start`
--

DROP TABLE IF EXISTS `field_a_p_price_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_price_start` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_price_start`
--

LOCK TABLES `field_a_p_price_start` WRITE;
/*!40000 ALTER TABLE `field_a_p_price_start` DISABLE KEYS */;
INSERT INTO `field_a_p_price_start` VALUES (5942,600),(5943,2500),(5944,800),(5945,900),(5946,18000),(5947,3000),(5948,8000),(5949,734),(5950,866),(5951,800),(5952,8000),(5953,2000),(5954,5000),(5955,1500),(5956,4000);
/*!40000 ALTER TABLE `field_a_p_price_start` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_p_seller`
--

DROP TABLE IF EXISTS `field_a_p_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_p_seller` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_p_seller`
--

LOCK TABLES `field_a_p_seller` WRITE;
/*!40000 ALTER TABLE `field_a_p_seller` DISABLE KEYS */;
INSERT INTO `field_a_p_seller` VALUES (5943,5894,0),(5946,5894,0),(5947,5894,0),(5948,5894,0),(5952,5894,0),(5954,5894,0),(5955,5894,0),(5956,5894,0),(5942,5895,0),(5944,5895,0),(5945,5895,0),(5951,5895,0),(5953,5895,0),(5949,5896,0),(5950,5896,0);
/*!40000 ALTER TABLE `field_a_p_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_s_address`
--

DROP TABLE IF EXISTS `field_a_s_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_s_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_s_address`
--

LOCK TABLES `field_a_s_address` WRITE;
/*!40000 ALTER TABLE `field_a_s_address` DISABLE KEYS */;
INSERT INTO `field_a_s_address` VALUES (5894,'Stockholm','Стокгольм','Stockholm','Stockholm'),(5895,'Stockholm','Стокгольм','Stockholm','Stockholm'),(5896,'Stockholm, Sveaplan','Стокгольм, Свеаплан','Stockholm, Sveaplan','Stockholm, Sveaplan'),(5897,'','','',''),(5898,'','','','');
/*!40000 ALTER TABLE `field_a_s_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_s_artwork`
--

DROP TABLE IF EXISTS `field_a_s_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_s_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_s_artwork`
--

LOCK TABLES `field_a_s_artwork` WRITE;
/*!40000 ALTER TABLE `field_a_s_artwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_a_s_artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_a_s_duty`
--

DROP TABLE IF EXISTS `field_a_s_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_a_s_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_a_s_duty`
--

LOCK TABLES `field_a_s_duty` WRITE;
/*!40000 ALTER TABLE `field_a_s_duty` DISABLE KEYS */;
INSERT INTO `field_a_s_duty` VALUES (5894,1,0),(5895,1,0),(5896,1,0),(5897,1,0),(5898,1,0);
/*!40000 ALTER TABLE `field_a_s_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_admin_theme`
--

DROP TABLE IF EXISTS `field_admin_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_admin_theme`
--

LOCK TABLES `field_admin_theme` WRITE;
/*!40000 ALTER TABLE `field_admin_theme` DISABLE KEYS */;
INSERT INTO `field_admin_theme` VALUES (41,175);
/*!40000 ALTER TABLE `field_admin_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_artworks_featured`
--

DROP TABLE IF EXISTS `field_artworks_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_artworks_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_artworks_featured`
--

LOCK TABLES `field_artworks_featured` WRITE;
/*!40000 ALTER TABLE `field_artworks_featured` DISABLE KEYS */;
INSERT INTO `field_artworks_featured` VALUES (1,5759,0),(1,5762,1);
/*!40000 ALTER TABLE `field_artworks_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_av_duty`
--

DROP TABLE IF EXISTS `field_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_av_duty`
--

LOCK TABLES `field_av_duty` WRITE;
/*!40000 ALTER TABLE `field_av_duty` DISABLE KEYS */;
INSERT INTO `field_av_duty` VALUES (5784,1,0),(5781,1,0),(5776,2,0),(5782,3,0),(5780,1,0),(5777,2,0),(5778,2,0),(5779,1,0),(5764,1,0),(5783,1,0),(5785,2,0);
/*!40000 ALTER TABLE `field_av_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_av_url`
--

DROP TABLE IF EXISTS `field_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_av_url`
--

LOCK TABLES `field_av_url` WRITE;
/*!40000 ALTER TABLE `field_av_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_av_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_aw_brand`
--

DROP TABLE IF EXISTS `field_aw_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_aw_brand` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_aw_brand`
--

LOCK TABLES `field_aw_brand` WRITE;
/*!40000 ALTER TABLE `field_aw_brand` DISABLE KEYS */;
INSERT INTO `field_aw_brand` VALUES (5759,5769,0),(5762,5769,1),(5763,5769,0),(5762,5770,0);
/*!40000 ALTER TABLE `field_aw_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_aw_featured`
--

DROP TABLE IF EXISTS `field_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_aw_featured`
--

LOCK TABLES `field_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_aw_featured` DISABLE KEYS */;
INSERT INTO `field_aw_featured` VALUES (5762,1);
/*!40000 ALTER TABLE `field_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_aw_person`
--

DROP TABLE IF EXISTS `field_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_aw_person`
--

LOCK TABLES `field_aw_person` WRITE;
/*!40000 ALTER TABLE `field_aw_person` DISABLE KEYS */;
INSERT INTO `field_aw_person` VALUES (5759,5764,0),(5762,5764,0);
/*!40000 ALTER TABLE `field_aw_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_awx_base`
--

DROP TABLE IF EXISTS `field_awx_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_awx_base` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_awx_base`
--

LOCK TABLES `field_awx_base` WRITE;
/*!40000 ALTER TABLE `field_awx_base` DISABLE KEYS */;
INSERT INTO `field_awx_base` VALUES (5762,1,0),(5759,1,0),(5763,1,0);
/*!40000 ALTER TABLE `field_awx_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_awx_popularity`
--

DROP TABLE IF EXISTS `field_awx_popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_awx_popularity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_awx_popularity`
--

LOCK TABLES `field_awx_popularity` WRITE;
/*!40000 ALTER TABLE `field_awx_popularity` DISABLE KEYS */;
INSERT INTO `field_awx_popularity` VALUES (5762,7,0),(5759,5,0);
/*!40000 ALTER TABLE `field_awx_popularity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_awx_rarity`
--

DROP TABLE IF EXISTS `field_awx_rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_awx_rarity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_awx_rarity`
--

LOCK TABLES `field_awx_rarity` WRITE;
/*!40000 ALTER TABLE `field_awx_rarity` DISABLE KEYS */;
INSERT INTO `field_awx_rarity` VALUES (5762,2,0),(5759,1,0);
/*!40000 ALTER TABLE `field_awx_rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_awx_size`
--

DROP TABLE IF EXISTS `field_awx_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_awx_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_awx_size`
--

LOCK TABLES `field_awx_size` WRITE;
/*!40000 ALTER TABLE `field_awx_size` DISABLE KEYS */;
INSERT INTO `field_awx_size` VALUES (5759,'90x90');
/*!40000 ALTER TABLE `field_awx_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_awx_year`
--

DROP TABLE IF EXISTS `field_awx_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_awx_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_awx_year`
--

LOCK TABLES `field_awx_year` WRITE;
/*!40000 ALTER TABLE `field_awx_year` DISABLE KEYS */;
INSERT INTO `field_awx_year` VALUES (5762,'1984');
/*!40000 ALTER TABLE `field_awx_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_body`
--

DROP TABLE IF EXISTS `field_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data5753` mediumtext,
  `data5754` mediumtext,
  `data5755` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_body`
--

LOCK TABLES `field_body` WRITE;
/*!40000 ALTER TABLE `field_body` DISABLE KEYS */;
INSERT INTO `field_body` VALUES (5762,'<p>History of the scarf....</p>','<p>Описание</p>','',''),(1,'','','',''),(5774,'','','',''),(5775,'','','',''),(5781,'<p>Евгения Мирошниченко закончила художественное училище в Харькове, изучала символы и орнаменты народов мира в Петербурге, в Лондоне постигала законы моды в школе Дэвида Джонса, в Париже работала  для дома Hermès.</p>\n\n<p>В коллекциях текстиля и фарфора для Pierre Frey, J. Seignolles, в фаянсе для Emaux de Longwy, в 60-ти декорах для Hermès, она открыла миру уникальные русские народные игрушки, отразила захватывающее вдохновение Дягилевских балетных сезонов, показала магнетизм красочной палитры и стремительную графику русского конструктивизма. В 2013 году на выставке французского дизайна и декора Référence Moskva 2013 Евгения Миро провела премьеру новой коллекции сантехники класса люкс и аксессуаров для ванной комнаты Vassilissa для французского бренда Serdanelli.</p>\n\n<p>Декоратор работает над созданием современного русского стиля в дизайне, придумывает коллекцию авторских шелковых каре и планирует возможно открыть галерею своих арт-объектов в Москве. </p>','<p>Евгения Мирошниченко закончила художественное училище в Харькове, изучала символы и орнаменты народов мира в Петербурге, в Лондоне постигала законы моды в школе Дэвида Джонса, в Париже работала  для дома Hermès.</p>\n\n<p>В коллекциях текстиля и фарфора для Pierre Frey, J. Seignolles, в фаянсе для Emaux de Longwy, в 60-ти декорах для Hermès, она открыла миру уникальные русские народные игрушки, отразила захватывающее вдохновение Дягилевских балетных сезонов, показала магнетизм красочной палитры и стремительную графику русского конструктивизма. В 2013 году на выставке французского дизайна и декора Référence Moskva 2013 Евгения Миро провела премьеру новой коллекции сантехники класса люкс и аксессуаров для ванной комнаты Vassilissa для французского бренда Serdanelli.</p>\n\n<p>Декоратор работает над созданием современного русского стиля в дизайне, придумывает коллекцию авторских шелковых каре и планирует возможно открыть галерею своих арт-объектов в Москве. </p>','',''),(5769,'<p>The founder of <strong><em>Hermès International S.A.</em></strong>  or <strong><em>Hermès of Paris</em></strong> or simply  <strong><em>Hermès</em></strong> , is Thierry Hermès.</p>\n\n<p>He founded the company in 1837 as a harness workshop in Paris. Originally, his intent was to serve the needs of European noblemen by providing saddles, bridles and other leather riding gear. In the early 20th century, Thierry\'s son Charles-Ã‰mile  moved the company\'s shop to 24 Rue Du Faubourg Saint-Honore in Paris, where it remains to this very day and is the company\'s global headquarters.</p>\n\n<p>Hermès typically introduces 12 designs twice a year, of which half are brand new designs and half are reissues of previously offered scarves.</p>\n\n<p>New designs have centered around an annual theme since 1987.</p>\n\n<p>Hermès has a reputation of identifying talented artists who are not well known to create artwork for its scarves.</p>','<p>Основателем фирмы <em>Hermès International S.A. </em>или<em> Hermès of Paris</em> или просто <em>Hermès</em> был Thierry Hermès.</p>','',''),(5773,'','','',''),(5776,'<p>Hermès deputy creative director. Raised in Paris, Barret studied design and tailoring at Paris Ecole Supérieure des Arts et Techniques de la Mode (ESMOD). She worked as an assistant at several houses, spending time in New York, Italy, and Spain before launching her own Paris-based label in 1999.</p>\n\n<p>Hermès  <a href=\"pierre-alexis-dumas/\">Pierre-Alexis Dumas</a> was a longtime friend who would pop into her shop now and again with his wife, whom Barret has known since childhood.Once, in the early aughts, the drive by included of a job offer. <em>He asked, \"Would you love to work for Hermès?\" </em>And I said<em> \"Are you sure?\" </em>explains Barret, with just the right amount of irreverent French humor needed for what was obviously a major moment in her career. <em>_EMO_ One of the great talents of Pierre-Alexis is that he can see what people are capable of doing. All the houses were coming to me and asking me to design the same things I was already designing for my own collection. I kept saying no. He was the only one that proposed something different</em>.</p>\n\n<p>Dumas commissioned Barret to design a capsule of scarves, which she was then required to present to his father, <a href=\"jean-louis-dumas/\">Jean-Louis Dumas</a>,  Hermès\' brilliant-and-intense chairman and artistic director. <em>Right before the meeting, Pierre-Alexis pulled me aside and said, &amp;quot;Jean-Louis can be very tough. If he doesn\'t say a word, that means he doesn\'t like it. So I starting talking, talking, talking. Absolute silence. I figured it was over, but also realized that I had nothing to lose</em>. Barret began joking with the senior Dumas, becoming more animated as she went along. Soon enough, <em>He started laughing and said, \"I love your project\"</em></p>','','',''),(5777,'<p>Jean-Louis Dumas (1938 – 2010) was a French billionaire businessman, the chairman of the Hermès group from 1978 to 2006. He was also the company\'s artistic director. Dumas is credited with turning Hermès into a global luxury brand during his tenure as chairman.</p>','','<p>Jean-Louis Dumas dirige et transforme Hermès de 1978 à 2006. Il développe notamment la présence de cette marque à l\'étranger, en Europe, en Asie, et aux États-Unis. Il confie la décoration du magasin du Faubourg Saint-Honoré et plusieurs responsabilités artistiques à Leïla Menchari.</p>\n\n<p>Né à Paris en février 1938, il est le fils de Robert Dumas, le frère d\'<a href=\"https://fr.wikipedia.org/wiki/Olivier_Dumas\" title=\"Olivier Dumas\">Olivier Dumas</a>, et l\'oncle d\'<a href=\"https://fr.wikipedia.org/wiki/Axel_Dumas\" title=\"Axel Dumas\">Axel Dumas</a>.</p>\n\n<p>Il obtient une licence en droit et sciences économiques à Paris en 1959, et un diplôme de sciences politiques à <a href=\"https://fr.wikipedia.org/wiki/Sciences_Po_(Paris)\" title=\"Sciences Po (Paris)\">Sciences Po</a>, section Ecofi, en 1960. Il fait en partie son service militaire en Algérie, pendant la <a href=\"https://fr.wikipedia.org/wiki/Guerre_d%27Alg%C3%A9rie\" title=\"Guerre d\'Algérie\">guerre pour l\'indépendance de ce pays</a> juste avant les <a href=\"https://fr.wikipedia.org/wiki/Accords_d%27Evian\" title=\"Accords d\'Evian\">accords d\'Evian</a>.</p>\n\n<p>Son épouse <a href=\"https://fr.wikipedia.org/wiki/Rena_Dumas\" title=\"Rena Dumas\">Rena Dumas</a> née Gregoriadès à Athènes (1937-2009), était une architecte d’intérieur et créatrice de mobilier. Ils se sont mariés en 1962. Elle ouvre à Paris, en 1972, sa propre agence <a href=\"http://rdai.fr\" rel=\"nofollow\">RDAI</a><small> [<a href=\"http://archive.wikiwix.com/cache/?url=http%3A%2F%2Frdai.fr%2F\" title=\"archive sur Wikiwix\">archive</a>]</small> - Rena Dumas Architecture Intérieure.</p>\n\n<p>Jean-Louis Dumas est décédé à Paris le 1er mai 2010, à l\'âge de 72 ans de la <a href=\"https://fr.wikipedia.org/wiki/Maladie_de_Parkinson\" title=\"Maladie de Parkinson\">maladie de Parkinson</a><a href=\"https://fr.wikipedia.org/wiki/Jean-Louis_Dumas#cite_note-LM2010-2\">2</a>. Il a pris des photographies tout au long de sa vie et, en 2008, <a href=\"https://fr.wikipedia.org/wiki/Steidl_Verlag\" title=\"Steidl Verlag\">Steidl</a> a publié <em><a href=\"https://steidl.de/Books/Jean-Louis-Dumas-Photographer-0425444760.html\" rel=\"nofollow\">Jean-Louis Dumas: Photographer</a><small> [<a href=\"http://archive.wikiwix.com/cache/?url=https%3A%2F%2Fsteidl.de%2FBooks%2FJean-Louis-Dumas-Photographer-0425444760.html\" title=\"archive sur Wikiwix\">archive</a>]</small></em>, une collection de ses photographies<a href=\"https://fr.wikipedia.org/wiki/Jean-Louis_Dumas#cite_note-:0-5\">5</a>.</p>\n\n<p> </p>',''),(5778,'<p>The artistic director of Hermès. Under his direction, the firm has seen its biggest growth in decades, with sales of 4 billion euros in 2014.</p>\n\n<p>Dumas is the son of <a href=\"jean-louis-dumas/\">Jean-Louis Dumas</a>, the former CEO of the Hermès Group. His mother was Rena (nÃ©e GregoriadÃ¨s) Dumas (1937-2009), the Greek-born architect who founded Rena Dumas Architecture IntÃ©rieure in 1972 in Paris. Through his father\\\'s lineage, he is also the great-great-great grandson of HermÃ¨s founder _AO_av_id=330;Thierry HermÃ¨s._AC_ _;;_ In 1991, Dumas received a Bachelor of Arts degree in the visual arts from Brown University in Providence, Rhode Island, US, due to his parents\\\' belief that an education in America would be an advantage for his future participation in the family business. His father had spent a short time in the buyer-training program of Bloomingdales department store in New York City.</p>','','',''),(5785,'','','',''),(5788,'','','',''),(5789,'<div class=\"rounded-area\">\n<h3><em>Queen Elizabeth, Princess Margaret, Grace Killy, Madonna, Catherine Deneuve, Victoria Beckham, Jennifer Lopez, Margo... What unites them?</em></h3>\n\n<h3>Right! They all ware Hermès!</h3>\n</div>','<div class=\"rounded-area\">\n<h3>Queen Elizabeth, Princess Margaret, Grace Killy, Madonna, Catherine Deneuve, Марго...  Что их объединяет?</h3>\n\n<h3>Правильно! Все они носят Hermès!</h3>\n</div>','',''),(5790,'','','',''),(5791,'','','',''),(5792,'','','',''),(5793,'<p>Her output at Hermès covers over 45 incredible years. Best known for designing \"Cles\" (one of the Top 10 best-selling Hermès scarves of all time) and her self-referential designs.</p>\n\n<p>Her first two designs have no signature (\"Cles\" and \"Vendanges\"). Afterwards, she signed her designs as \".Caty.\" for a decade before switching to signing as \"Latham.\"</p>','<p>Она работала для Hermès более 45 лет. Самый известный ее проект «Cles» (Ключи) - один из 10 лучших бестселлеров Hermès всех времен.</p>\n\n<p>Ее первые две работы («Cles» и «Vendanges») не имеют подписи. Затем в течении десятилетия она подписывала свои проекты как «.Caty.», прежде чем перейти на «Latham».</p>','',''),(5794,'<p> </p>\n\n<h2>Evgenia about herself...</h2>\n\n<p><em>I was born in Kharkov, Ukraine, studied at Kharkov State Art College and St.Petersburg Academy of Decorative &amp; Fine Arts. </em></p>\n\n<p> </p>\n\n<p><em>My home country is a homeland of great artists like Kazimir Malevich, it gave me the feeling of colors and the understanding of rhythm which are the fundamental elements in decor ation. After the Academy, I started my own professional life, became a member of the Unions of Art &amp; Design of Russia. </em></p>\n\n<p><em>Since my diploma, my preferences go towards symbols and adornments of the world. Going back to the dark ages, each symbol is a secret sign which represents either a religious bel ief or a representation of the universe. The attraction for symbols is irresistible as one always hopes to decipher the wisdom of their meanings and use them to enrich and protect our own world. </em></p>\n\n<p><em>I exhibited my work in Great Britain, France, Germany, Sweden, Russia, US. For many years, I worked mostly in Russia. My love for theater and for music lead to a remarkable collaboration with the Tchaikovsky Symphony Orchestra of Moscow and the Mariinsky Theater of St.Petersburg. Some of my crea tions have been reproduced by the \"Imperial (Lomonosov) Porcelain\", St.Petersburg. In 2004, my introduction to Hermès changed my life and lead up to new arisen. Hermès proposed to design various products like scarves, enamel bracelets, table china. In spite of a huge amount of work, it was a challenge for me to be worthy of this worldwide known famous firm. As I am the first Russian contemporary designer to collaborate with Hermes, I wanted to bring them the beauty of the Russian ornaments and convey the customs and culture of my co untry. Besides my contribution with Hermès, I have also designed for other names in France such as Pierre Frey, Emaux de Longwy, Beauvillé,J.Seignolles. In the U.K. : Wedgwood. Provasi in Italy. And a great number of customers in Russia. </em></p>\n\n<p><em>Today, you will find my art work for sale in the most selective and luxury shops worldwide. worldwide. </em></p>','','',''),(5795,'<p>Son of <a href=\"/sh/h_spot/h_persons/188-vladimir-rybaltchenko/\">Vladimir Rybaltchenko</a> and the great-grandnephew of <a href=\"/sh/h_spot/h_persons/224-philippe-ledoux/\">Philippe Ledoux</a>.</p>','','',''),(5796,'','','',''),(5797,'Great-nephew of <a href=\'/sh/h_spot/h_persons/224-philippe-ledoux/\'>Philippe Ledoux</a> and father of <a href=\'/sh/h_spot/h_persons/186-dimitri-rybaltchenko/\'>Dimitri Rybaltchenko</a>.','Внучатый племянник <a href=\'/sh/h_spot/h_persons/224-philippe-ledoux/\'>Philippe Ledoux</a> и отец <a href=\'/sh/h_spot/h_persons/186-dimitri-rybaltchenko/\'>Дмитрия Рыбальченко</a>','',''),(5798,'<p>Grygkar was the most prolific designer for Hermès in the early post-WWII years. He produced over 100 designs between joining Hermès and his death in 1959.</p>\n\n<p>Many of his earlier designs have been re-issued several times, so there can be up to three different versions with no copyright, early copyright and modern copyrights.</p>\n\n<p>He never signed his work.</p>\n\n<p><em>By Hermès Scarf Guides</em></p>','','',''),(5799,'<p>Philippe Ledoux was a superb artist and did some wonderful book illustrations as well as designing some of the most popular scarves for Hermès. </p>\n<p> His characterisation, eye for historical detail, and handling of perspective and three dimensional view is staggering. Ships and horses were often his subjects but people his speciality. You will have seen some of his designs in my other guides, La Promenade de Longchamps being a long term favourite with the fakers. \n</p>\n<p> \n<em>By Hermès Scarf Guides </em></p>\n','<p>Ledoux был превосходным художником и создал как замечательные книжные иллюстрации, так и многие из самых популярных шарфов для Hermès. </p>\n<p> Его взгляд на исторические детали и обращение с перспективой и трехмерным пространством ошеломляют. Корабли и лошади часто были его сюжетами, но коньком все-таки были люди.  \n</p>\n<p>Его &quot;La Promenade de Longchamps&quot; стал чемпионом по количеству подделок. </p>\n<p> <em> По материалам Hermès Scarf Guides </em></p>\n','',''),(5800,'<p>Loïc Dubigeon grew up in the western French seaport city of Nantes, and on leaving school studied at l’École d’Architecture in Paris before becoming an architectural draughtsman. During the 1950s he branched out into graphic design, including packaging and a range of scarves for the fashion house Hermés; he also created murals for buildings in France, New York and Saudi Arabia. In the late 1960s he moved to the Normandy coast of northern France, where he lived in Berneval-le-Grand, near Dieppe, and set up his studio in nearby Derchigny-Graincourt, where he showed and sold his trademark paintings, pastels and prints of seaside villages, cliffs and picnic umbrellas. Port Breton, 1975</p>\n\n<p>In the late 1970s, Loïc started to draw naked figures from life, first in charcoal and later in soft pencil. An acute observer of detail, composition, ad the interplay of light and darkness, he used his architectural skills to create drawings of the human body which set him apart from most artists. In 1979 he exhibited some of his nudes alongside other works at an exhibition in Munich, which attracted the attention of the publisher Editions Borderie, who commissioned a series of illustrations inspired by Pauline Réage’s novel Histoire d’O.</p>\n\n<p>This appears to have unleashed Dubigeon’s imagination and honed his skills; to what extent it freed his personal life can only be surmised. The fact is that the drawings for Histoire d’O and De l’aube à la nuit are clearly drawn from life, and reflect Dubigeon’s determination that art should reflect things as they are in all their starkness and natural beauty. Part of this authenticity and integrity is reflected in the fact that he never attempted to hide his erotic work behind a pseudonym, or to exhibit it separately from his other work; for him art was art, and the erotic works just a small part of his life’s work.</p>','<p>Он вырос в западном французском морском порту Нант, учился в Школе Архитектуры (l’École d’Architecture) в Париже. В течение 1950-х годов он углубился в графический дизайн, создав ряд шарфов для Hermés; он также создал фрески для зданий во Франции, Нью-Йорке и Саудовской Аравии.</p>\n\n<p>В конце 1960-х перебрался на Нормандское побережье северной Франции, где жил в Берневале-ле-Гранде, недалеко от Дьеппа. Создал свою студию в близлежащем Дерчиньи-Гринкуре, где делал и продавал свои товарные знаки, пастели и гравюры приморских деревень и скал, зонтики для пикника.</p>\n\n<p>В конце 1970-х годов Дубиджон начал рисовать в стиле nu, сначала в древесном угле, а затем в мягком карандаше. Острый наблюдатель деталей, состава и взаимодействия света и тьмы, он использовал свои архитектурные навыки для создания рисунков человеческого тела, которые отличали его от большинства художников. В 1979 году он показал некоторые из своих \"обнаженок\" наряду с другими произведениями на выставка в Мюнхене. Это привлекло внимание издателя Издания Borderie, которые заказали серию иллюстраций, для романа Полины Реаге \"Histoire d\'O\".</p>\n\n<p>Эта работа позволила развязать воображение Дубиджона и отточить его навыки. В какой степени он освободил свою личную жизнь, можно только предположить. Дело в том, что рисунки для \"Histoire d\'O\" и \"De l\'aube à la nuit\" четко вычеркнуты из жизни и отражают решимость Dubigeon что искусство должно отражать вещи, поскольку они находятся во всей их абсолютности и естественной красоте. Часть этой достоверности и целостности отражается в том, что он никогда не пытался скрыть свои эротические работы за псевдонимом или выставлять их отдельно от своей других; для него искусство было искусством, и эротические произведения составляли лишь небольшую часть его жизни.</p>','<p>Loïc Dubigeon grew up ...</p>',''),(5801,'','','',''),(5802,'','','',''),(5803,'','','',''),(5804,'Cyrille Diatkine’s style is modern and very stylish. As Anamorphée and_AO_av_id=186; Dimitri Rybaltchenko_AC_, she is artist/designer rather than artist/painter, who designs the carré as a poster rather than a painting.','','Le style de Cyrille Diatkine est moderne et très stylisé. Tout comme Anamorphée et _AO_av_id=186;Dimitri Rybaltchenko_AC_, elle est artiste dessinatrice plutôt qu’artiste peintre, concevant le carré comme une affiche plutôt qu’une toile.',''),(5805,'','','',''),(5806,'','','',''),(5807,'','','',''),(5808,'','','<p>Henri de Linarès contribue activement, avec Pierre-Louis Duchartre, à la création du _AO_http://www.chateaumuseegien.fr/musee_chateau;Musée de la chasse à tir et de la fauconnerie_AC_ inauguré en 1952 à Gien (Loiret) et en devient le premier conservateur. </p>\n<p> Il crée des imprimés pour les carrés de soie de la maison Hermès. </p>\n<p> Il expose au salon d\'hiver en 1949.Il a été membre de la société archéologique et historique de l\'Orléanais.</p>\n',''),(5809,'','','',''),(5810,'Daphne only produced two designs for Hermès and neither have a title on the scarf. There both appear to have had two different issues, with old and new style copyrights.','','',''),(5811,'<p>He is the son of<a href=\"/sh/site/assets/files/5811/Xavier_de_Poret_parents_mariage.jpg\">Maurice de Poret and Hélène de Mousin de Bernecourt</a>.</p>\n\n<p>He grew up in <a href=\"/sh/site/assets/files/5811/s-l1600.jpg\">the castle of Farcy-les-Lys</a> near Fontainebleau where very early he developed a certain gift for drawing. Surrounded by stables and aviaries, he finds motifs that will follow throughout his career as an animal artist: horses and birds. But Xavier de Poret is not just confined to animals. During the 1914-1918 war, he already made many sketches of soldiers. Subsequently, he will be known for his talent as a great worldly portraitist. In addition to those of the Belgian and Luxembourg sovereigns, he is credited with equestrian portraits of Queen Elizabeth II and her children Prince Charles and Princess Anne.</p>\n\n<p> </p>\n\n<p>Xavier de Poret also realizes a series of squares for the Hermès house in Paris.</p>\n\n<p>On July 27, 1920 he married Juliette d\'Oncieu de la Bâtie. They settled in Riaz, in Gruyère, where the latter owns the <a href=\"http://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">château de Plaisance</a>, former residence of the bishops of Lausanne.</p>','<p>Сын Мориса де Порета и Элен де Мусин де Бернекур (Maurice de Poret и Hélène de Mousin de Bernecourt).</p>\n\n<p>Вырос в замке Фарси-ле-Лис (Farcy-les-Lys) возле Фонтенбло, рано проявил дар рисования. Окруженный конюшнями и вольерами, он находит темы, которые будут с ним на протяжении всей его карьеры живописца: лошадей и птиц.</p>\n\n<p>Однако художник не ограничивается животными. Во время войны 1914-1918 годов он много рисовал солдат. Впоследствии он станет известен и своим талантом портретиста. Мы обязаны ему портретами королевы Великобритании Елизаветы II, ее детей принца Чарльза и принцессы Анны, монархов Бельгии и Люксембурга.</p>\n\n<p>Много работал для Hermès в Париже.</p>\n\n<p>27 июля 1920 года он женился на Джульетте Оньсие де ла Бати (Juliette d\'Oncieu de la Bâtie). Семья поселилась в Риазе (Riaz, Gruyère, Swiss) в замке <a href=\"http://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">château de Plaisance</a>, бывшей резиденции епископов Лозанны.</p>','<p>Il est le fils de Maurice de Poret et d\'Hélène de Mousin de Bernecourt.</p>\n\n<p>Il grandit au château de Farcy-les-Lys près de Fontainebleau où très tôt il développe un don certain pour le dessin. Entouré d\'écuries et de volières, il trouve là des motifs qu\'il va décliner tout au long de sa carrière d\'artiste animalier : les chevaux et les oiseaux. Mais Xavier de Poret ne se cantonne pas aux animaux. Pendant la guerre de 1914-1918, il réalise déjà de nombreux croquis de soldats. Par la suite on lui connaîtra un talent reconnu de grand portraitiste mondain. Outre ceux des souverains belges et luxembourgeois, on lui doit des portraits équestres de la Reine Elisabeth II et de ses enfants le prince Charles et la princesse Anne.</p>\n\n<p>Xavier de Poret réalise également une série de carrés pour la maison Hermès à Paris : les Poulinières, les Tourterelles, les Mésanges, les Ecureuils, les Teckels, les Biches, les Bottes, les Renards, ...</p>\n\n<p>Le 27 juillet 1920 il épouse Juliette d\'Oncieu de la Bâtie. Ils s\'installent à Riaz, en Gruyère, où cette dernière est propriétaire du <a href=\"http://www.swisscastles.ch/Fribourg/riaz_plaisance.html\">château de Plaisance</a>, ancienne résidence des évêques de Lausanne.</p>',''),(5812,'<p>Hermès\'s deputy creative director</p>\n\n<p>Raised in Paris, Barret studied design and tailoring at Paris Ecole Supérieure des Arts et Techniques de la Mode (ESMOD). She worked as an assistant at several houses, spending time in New York, Italy, and Spain before launching her own Paris-based label in 1999. Hermès\' <a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Pierre-Alexis Dumas</a> was a longtime friend who would pop into her shop now and again with his wife, whom Barret has known since childhood.</p>\n\n<p>Once, in the early aughts, the drive by included of a job offer.<em> He asked, \"Would you love to work for Hermès?\" And I said, \"Are you sure?\" </em> explains Barret, with just the right amount of irreverent French humor needed for what was obviously a major moment in her career. <em> One of the great talents of Pierre-Alexis is that he can see what people are capable of doing. All the houses were coming to me and asking me to design the same things I was already designing for my own collection. I kept saying no. He was the only one that proposed something different.</em></p>\n\n<p>Dumas commissioned Barret to design a capsule of scarves, which she was then required to present to his father, <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>, Hermès\' brilliant-and-intense chairman and artistic director. <em>Right before the meeting, Pierre-Alexis pulled me aside and said, \"Jean-Louis can be very tough. If he doesn\'t say a word, that means he doesn\'t like it. So I starting talking, talking, talking. Absolute silence. I figured it was over, but also realized that I had nothing to lose.</em> Barret began joking with the senior Dumas, becoming more animated as she went along. Soon enough, <em> He started laughing and said, \"I love your project.\"</em></p>','<p>Зам. креативного директора Hermès.</p>\n\n<p>Баррет изучaлa дизайн в Парижской школе искусств и моды (ESMOD). Затем она работала ассистентом в нескольких домах мод, стажировалась в Нью-Йорке, Италии и Испании, прежде чем в 1999 году открыла свою собственную студию дизайна.</p>\n\n<p><a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Пьер-Алексис Дюма (Pierre-Alexis Dumas)</a>, арт-директор Hermès, был ее давним другом, он часто появлялся в ее магазине с женой, с которой Баррет дружила с детства.</p>\n\n<p>Вскоре последовало предложение о работе.</p>\n\n<p><em>Он спросил: \"Вы хотели бы работать на Hermès?\" И я ответила: «Ты шутишь?» </em> объясняет Баррет, с нужным количеством французского юмора, чтобы не показать, что предложение было очень важным моментом в ее карьере. <em> Одним из великих талантов Пьера-Алексиса является то, что он может видеть, что люди способны делать. Все другие дизайнеры приходили ко мне и просили меня разработать те же самые вещи, что я уже разрабатывала для своей коллекции. Я говорила «нет». Он был единственным, кто предложил что-то другое .</em></p>\n\n<p>Дюма поручил Баррет создать коллекцию шарфов, которую она должна была представить на суд <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Жан-Луи Дюма (Jean-Louis Dumas)</a>, блестящему и живому председателю и художественному руководителю Hermès. <em> Перед встречей, Пьер-Алексис отвел меня в сторону и сказал: \"Жан-Луи может быть очень суров. Если он не произносит ни слова, это значит, что ему не нравится.\" Поэтому я начала говорить, говорить, говорить. В ответ абсолютная тишина. Я подумала, что все кончено, теперь мне нечего терять и продолжала .</em> Баррет начала шутить со старшим Дюма, становясь все более оживленной. <em> Дюма засмеялся и сказал: \"Мне нравится ваш проект\"</em>.</p>','',''),(5813,'<p>A French art director and a fashion designer based in Paris, France. He is also creative director of Objets et La Table at Hermès.</p>\n\n<p>A graduate of the Royal College of Art and of the École nationale supérieure des arts décoratifs, Benoit Emery began his career as a freelancer, working as an art director for Canal+ and Louis Vuitton.</p>\n\n<p>His experience also includes stints with Paco Rabanne, Kenzo, Cabane De Zucca, The Cartier Foundation, Arte and Paris Première among others. In May 2000, he co-founded with Marc Nguyen Tan, the creative agency \"le cabinet.paris\"\"</p>\n\n<p>In October 2003, he set up his own company \"Les Soieries Modernes\" and launched his first silk scarf collection.</p>','','',''),(5814,'','','',''),(5815,'','','',''),(5816,'Madame Laurence Bourthoumieux (or Thioune, or L.T. or Toutsy),','','',''),(5817,'','A naturalist and artist with acute observational skills and precision, his designs include trees, plants, animals, birds and insects. Many of his Hermès designs are in the large format scarves and not available in the 90cm silk twill, for instance his 1997 design “Ecume”.','<p>Diplômé de l’école des Beaux-Arts de Bourges et des métiers d’art à Paris, Antoine de Jacquelot est particulièrement connu pour ses tapisseries. Il se définit comme un peintre cartonnier. </p>\n<p>Il a travaillé pour Hermès et a été plusieurs fois primé. </p>\n<p>Antoine de Jacquelot vit au cœur de la nature et en est un observateur privilégié pour avoir incessamment &quot;recueilli&quot; plantes et animaux, afin de les traduire avec la précision d\'un naturaliste.\n</p>\n<p>Passer de la toile ou du carton à la coloquinte et à la gourde comme support de peinture est une idée survenue lors de la mise en culture de son potager : &quot;il fallait bien que je trouve quoi faire de toutes ces coloquintes !&quot; Une belle opportunité qui, depuis un an et demi, inspire l’artiste : la matière et la forme du fruit une fois séché lui dictent donc le sujet. La flore prend alors des airs de faune, se transforme en poisson ou animaux de toutes sortes avec une maîtrise parfaite du pinceau et des couleurs.</p>\n',''),(5818,'','','',''),(5819,'','','',''),(5820,'<p>The artistic director of Hermès. Under his direction, the firm has seen its biggest growth in decades, with sales of 4 billion euros in 2014.</p>\n\n<p>Dumas is the son of <a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean-Louis Dumas</a>, the former CEO of the Hermès Group. His mother was Rena (née Gregoriadès) Dumas (1937–2009), the Greek-born architect who founded Rena Dumas Architecture Intérieure in 1972 in Paris. Through his father\'s lineage, he is also the great-great-great grandson of Hermès founder <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès.</a></p>\n\n<p>In 1991, Dumas received a Bachelor of Arts degree in the visual arts from Brown University in Providence, Rhode Island, US, due to his parents\' belief that an education in America would be an advantage for his future participation in the family business. His father had spent a short time in the buyer-training program of Bloomingdales department store in New York City.</p>','<p>Dumas...</p>','',''),(5821,'','','<p>Jean-Louis Robert Frédéric Dumas-Hermès.</p>\n\n<p>Il dirigea et transforma Hermès de 1978 à 2006. Il développa notamment la présence de cette marque à l\'étranger, en Europe, en Asie, et aux États-Unis2.</p>\n\n<p>Il passa une licence en droit et sciences économiques à Paris, en 1959, et un diplôme de sciences politiques à Sciences Po, section Ecofi, en 1960. Il fait en partie son service militaire en Algérie, pendant la guerre pour l\'indépendance de ce pays juste avant les accords d\'Evian.</p>\n\n<p>Il est l\'oncle de Axel Dumas, le fils de _AO_av_id=2298;Robert Dumas_AC_ et le frère d\'Olivier Dumas.</p>\n\n<p>Il décéda de la maladie de Parkinson à l\'âge de 72 ans.</p>',''),(5822,'','','',''),(5823,'<p>Founder of Hermès.<br />\nHe was born on January 15, 1801, in Krefeld, Germany, later the city was annexed by France. The city, located on the left bank of the Rhine then annexed to France, was famous for its crafts of textile printing. In 1821, he moved to Normandy in a city renowned for the work of skins, Pont-Audemer. He enters as an apprentice at a saddler-harness maker.</p>\n\n<p>On April 17, 1828, he married Christine Pétronille Pierrart (1806-1896) which he will have a son: <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès moved to Paris in 1837 where he opened his first factory, rue Basse-du-Rempart (now extinct), near the church of the Madeleine .</p>\n\n<p>His activity is that of a master craftsman harnacheur saddler who designs, makes and sells harnesses and equipment for horses.</p>\n\n<p>Thierry Hermès continues to come to Pont-Audemer, in the Eure, where he will return to stay after the defeat of 1870. He died in Neuilly in 1878, on January 10th.</p>','<p>Основатель фирмы Hermès.<br />\nОн родился 15 января 1801 года в Крефельде (Krefeld), Германия (позже город был аннексирован Францией). Этот город на Рейне славился своими ремеслами текстильной печати. В 1821 году Тьерри переехал в Нормандию в город кожевенников Пон-Аудемер (Pont-Audemer), где учился шить кожаные шорты.</p>\n\n<p>17 апреля 1828 года он женился на Кристине Петронил Пьерарт (1806-1896), от которой у него родился сын <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Шарль-Эмиль</a>. В 1837 году Тьерри перебрался в Париж на улицу Басе-дю-Ремпат (ныне вымершую) возле церкви Мадлен, где открыл свой первый завод. Его деятельность - мастер шорник который проектирует, производит и продает упряжи и оборудование для лошадей.</p>\n\n<p>Тьерри продолжает приезжать в Пон-Аудемер, куда он вернется, чтобы остаться после поражения 1870 года.</p>\n\n<p>Умер в Нейи (Neuilly) в 1878 году, 10 января.</p>','<p>Le fondateur de l\'entreprise Hermès.<br />\nIl est né le 15 janvier 1801, à Krefeld, en Allemagne. La ville, située sur la rive gauche du Rhin alors annexée à la France, était réputée pour son artisanat de l\'impression textile.</p>\n\n<p>En 1821, il s\'installe en Normandie dans une ville réputée pour le travail des peaux, Pont-Audemer. Il entre comme apprenti chez un artisan sellier-harnacheur.</p>\n\n<p>Le 17 avril 1828, il épouse Christine Pétronille Pierrart (1806-1896) dont il aura un fils <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès gagne Paris en 1837 où il ouvre sa première manufacture, rue Basse-du-Rempart (aujourd\'hui disparue), près de l\'église de la Madeleine.</p>\n\n<p>Son activité est celle d\'un maître artisan harnacheur sellier, qui conçoit, confectionne et vend des harnais et des équipements pour les chevaux.</p>\n\n<p>Thierry Hermès continue de venir à Pont-Audemer, dans l\'Eure, où il reviendra séjourner après la défaite de 1870. Il s\'éteint à Neuilly en 1878, le 10 janvier.</p>','<p>Han föddes den 15 januari 1801 i Krefeld, Tyskland. Staden, som ligger på den vänstra stranden av Rhen och sedan annexerad till Frankrike, var känd för sitt hantverk av textiltryck. År 1821 flyttade han till Normandie i en stad som är känd för skinnarbetet, Pont-Audemer. Han går in som lärling hos en sadelmästare.</p>\n\n<p>Den 17 april 1828 giftes han med Christine Pétronille Pierrart (1806-1896), som han kommer att få en son: <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles-Émile</a>. Thierry Hermès flyttade till Paris 1837, där han öppnade sin första fabrik, rue Basse-du-Rempart (nu utdöd), nära Madeleines kyrka. Hans verksamhet är den hos en mästare hantverkare harnacheur saddler vem designer, tillverkar och säljer sele och utrustning för hästar. Thierry Hermès fortsätter att komma till Pont-Audemer i Eure, där han kommer att återvända för att stanna efter nederlaget 1870. Han dog i Neuilly 1878, den 10 januari.</p>'),(5824,'<p>4th Generation of the Hermès dynasty.</p>\n\n<p>Robert Dumas married to Jacqueline Hermès. His father in law <a href=\"/sh/h_spot/h_persons/2307-mile-maurice-herms/\">Émile Maurice Hermès</a> gets along with his sons in law and integrates them into the management of his Hermès company.</p>\n\n<p>Robert Dumas becomes CEO of Hermès in 1951 after the death of his fawer in law. He closely cooperates with his brother in law, the perfumer Jean René Guarrand.</p>\n\n<p>He never retires and is replaced by his sons Jean Louis Dumas after his death in 1978.</p>\n\n<p>Robert Dumas and Jacqueline Hermès have 6 children (5th generation):</p>\n\n<ul>\n	<li>Philippe Dumas married to Katherine Fender</li>\n	<li>Olivier Dumas married to Michèle Martin</li>\n	<li>Catherine Dumas married to Pierre de Seynes</li>\n	<li><a href=\"/sh/h_spot/h_persons/328-jean-louis-dumas/\">Jean Louis Dumas</a> <em>... CEO</em> married to Renée Gregodires</li>\n	<li>Frederic Dumas</li>\n	<li>Thierry Dumas married to Odile Follenfant</li>\n</ul>\n\n<p> </p>\n\n<p>The couple has several grandchildren (6th generation)</p>\n\n<ul>\n	<li>Alice Dumas - Émile Dumas - Jean Dumas</li>\n	<li>Axel Dumas <em>... future CEO</em> - Mathieu Dumas</li>\n	<li>Corinne de Seynes - Eric de Seynes - Guillaume de Seynes - Sophie de Seynes</li>\n	<li><a href=\"/sh/h_spot/h_persons/327-pierre-alexis-dumas/\">Pierre Alexis Dumas</a> <em>... Artistic Director</em> - Sandrine Dumas</li>\n	<li>Charles Dumas - Edouard Dumas</li>\n	<li>Dorothée Dumas - Jean Christophe Dumas - Stéphane Dumas</li>\n</ul>\n\n<p> </p>','','',''),(5825,'<p>3rd generation of the Hermès dynasty.<br />\nHe is the grandson of the company founder <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>His father <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles Émile Hermès</a> dies when he and his brother Adolphe are young children.<br />\nThe continuity of the Hermès company is preserved by their mother Christine Hermès-Pierrat</p>\n\n<p>In 1902 Émile Maurice becomes president of the Hermès company together with his brother Adolphe. The company was renamed <em>Hermès Frères</em> until 1919, the time when Adolphe left.</p>\n\n<p>In 1918 The elder brother Adolphe withdraws himself from <em>Hermès Frères</em> beeing pessimistic about the companies future. The younger one Émile Maurice is not of the same opinion, seeing in the changes new opportunities, like leather accessories for cars.</p>\n\n<p>While travelling to Canada he found a kind of zip, used to close the canvas roof of the cars. The zip inspires him to adapt the technologie to jackets which should be able to remain closed while exposed to high speed in an open automobile.</p>\n\n<p>In 1918 Émile Mauice Hermès is granted a patent for zipper that make it easier to open and close clothes.<br />\nSoon he introduced the first leather golf jacket with a zipper, and <a href=\"https://en.wikipedia.org/wiki/Edward_VIII\">Edward, Prince of Wales</a>, was among the first to buy one.</p>\n\n<p>He extended the companies activities beyond horsery. One of his inventions are the Hermès scarves.</p>','<p>3-е поколение династии Hermès, внук основателя компании <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Его отец <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Чарльз Эмиль Hermès</a> умирает, когда он и его брат Адольф были детьми.<br />\nСтабильность компании Hermès в эти годы сохраняется их матерью.</p>\n\n<p>В 1902 году Эмиль Морис становится президентом компании Hermès вместе со своим братом Адольфом. Компания была переименована в <em>Hermès Frères</em> до 1919 года.</p>\n\n<p>В 1918 году старший брат Адольф уходит из <em>Hermès Frères</em>, будучи пессимистично настроен в отнощении будущего. Émile Maurice придерживается другого мнения, видя новые возможности производства, к примеру кожаные аксессуары для автомобилей.</p>\n\n<p>Во время поездки в Канаду он увидел застежку для закрытия полотнячых крыш автомобилей. Застежка-молния вдохновляет его на адаптацию технологии к курткам, которые должны быть в состоянии защищать водителя, оставаясь застегнутыми на высокой скорости открытых автомобилей.</p>\n\n<p>В 1918 году Эмиль Морис получил патент на молнию (zip). Вскоре он представил первую кожаную куртку для гольфа с застежкой-молнией, и <a>Эдвард, принц Уэльсский</a>, стал одним из первых, кто ее купил.</p>\n\n<p>Эмиль Морис значительно расширил профиль компании и вышел за пределы конного спорта. Одним из его изобретений являются шарфы Hermès.</p>','<p>3ème génération de la dynastie Hermès.<br />\nIl est le petit-fils du fondateur de l\'entreprise <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Son père <a href=\"/sh/h_spot/h_persons/2308-charles-mile-herms/\">Charles Émile Hermès</a> meurt quand lui et son frère Adolphe sont de jeunes enfants. La continuité de la société Hermès est préservée par leur mère Christine Hermès-Pierrat.</p>\n\n<p>En 1902, Émile Maurice devient président de la compagnie Hermès avec son frère Adolphe. La société fut rebaptisée <em>Hermès Frères</em> jusqu\'en 1919, date du départ d\'Adolphe.</p>\n\n<p>En 1918, le frère aîné Adolphe se retire de <em>Hermès Frères</em> en étant pessimiste quant à l\'avenir des entreprises. Le plus jeune Émile Maurice n\'est pas du même avis, voyant dans les changements de nouvelles opportunités, comme des accessoires en cuir pour voitures.</p>\n\n<p>En voyageant au Canada, il a trouvé une \"zip\", sorte de fermeture à glissière, utilisée pour fermer le toit en toile des voitures. Le zip l\'inspire à adapter la technologie aux vestes qui devraient pouvoir rester fermées tout en étant exposées à haute vitesse dans une automobile ouverte.</p>\n\n<p>En 1918, Émile Mauice Hermès obtient un brevet de fermeture à glissière qui facilite l\'ouverture et la fermeture des vêtements.<br />\nBientôt, il a présenté la première veste de golf en cuir avec une fermeture éclair, et <a href=\"https://en.wikipedia.org/wiki/Edward_VIII\">Edward, Prince of Wales</a>, a été parmi les premiers à en acheter un.</p>\n\n<p>Il a étendu les activités des entreprises au-delà de l\'équitation. Une de ses inventions sont les foulards Hermès.</p>',''),(5826,'<p>2nd Generation of the Hermès dynasty.</p>\n\n<p>In 1880 - Charles-Émile takes over management of his father’s workshop and moves the store to a different location, on 24 Rue du Faubourg Saint-Honore, where it remains to this day. Here, he continues with the saddler artisan and focuses on international retail sales with lines catering to the elite of Europe, Russia, North Africa, Asia, and the Americas.</p>','<p>2е поколение</p>','<p>2ème génération de la dynastie Hermès.</p>\n\n<p>Fils de _AO_av_id=330;Thierry Hermès_AC_, il installe Hermès au 24 rue du Faubourg-Saint-Honoré1. Il diversifie sa production vers la fabrication d\'articles d\'équitation, de couvertures de cheval, de casaques de courses en soie.</p>\n\n<p>Il est le père de _AO_av_id=2307;Émile Maurice Hermès_AC_.</p>',''),(5827,'','','',''),(5828,'','','',''),(5829,'<div>\n<p>Geneva’s flea market is a meeting of the region’s bric-à-brac dealers.</p>\n\n<p>Each Wednesday and Saturday, and every first Sunday of the month since 1970, the Plaine de Plainpalais teems with stalls and people. This is one of Switzerland’s largest flea markets. Bargain hunters and collectors find all sorts of items: bric-à-brac, books, clothes, jewellery, antiques and decorative items. Spectators and collectors come across the most unbelievable objects, and who knows, somewhere, sometimes, a vintage item might be discovered.</p>\n</div>','<p>Женевский блошиный рынок, место встречи торговцев антиквариатом и всякими безделушками. Это один из крупнейших блошиных рынков Швейцарии.</p>\n\n<p>С 1970 года каждую среду и субботу, Plaine de Plainpalais изобилует киосками и людьми. Охотники за скидками и коллекционеры найдут самые разные предметы: книги, одежду, украшения, предметы декора... Здесь попадаются самые невероятные вещи, включая и платки Hermès.</p>','',''),(5830,'','','','<p>Bukowskis grundades 1870 av den polske adelsmannen <a href=\"https://sv.wikipedia.org/wiki/Henryk_Bukowski\" title=\"Henryk Bukowski\">Henryk Bukowski</a>.</p>\n\n<p>Den första större försäljningen ägde rum 1873 och omfattade en av kung <a href=\"https://sv.wikipedia.org/wiki/Karl_XV\" title=\"Karl XV\">Karl XV</a>:s samlingar. En av auktionshusets mest spektakulära auktioner under det tidiga 1900-talets hölls efter storsamlaren <a href=\"https://sv.wikipedia.org/wiki/Christian_Hammer\" title=\"Christian Hammer\">Christian Hammer</a>, då delar av hans samling såldes på fem auktioner. Bland köparna fanns grevinnan <a href=\"https://sv.wikipedia.org/wiki/Wilhelmina_von_Hallwyl\" title=\"Wilhelmina von Hallwyl\">Wilhelmina von Hallwyl</a>, skapare av <a href=\"https://sv.wikipedia.org/wiki/Hallwylska_museet\" title=\"Hallwylska museet\">Hallwylska museet</a>. Under 1920-talet hade Bukowskis ensamrätt på försäljningen av <a href=\"https://sv.wikipedia.org/wiki/Anders_Zorn\" title=\"Anders Zorn\">Anders Zorns</a> etsningar<em>, </em>vilka även under lång tid fungerade som säkerhet för banklån</p>'),(5831,'','','',''),(5832,'','','',''),(5833,'','','',''),(5834,'','','',''),(5835,'<p>The founder of <em> Hermès International S.A. </em>, or <em> Hermès of Paris </em> or simply <em> Hermès </em>, is <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>He founded the company in 1837 as a harness workshop in Paris. Originally, his intent was to serve the needs of European noblemen by providing saddles, bridles and other leather riding gear. In the early 20th century, Thierry’s son Charles-Émile Hermès moved the company’s shop to 24 Rue Du Faubourg Saint-Honore in Paris, where it remains to this very day and is the company’s global headquarters.</p>\n\n<p>Hermès typically introduces 12 designs twice a year, of which half are brand new designs and half are reissues of previously offered scarves.</p>\n\n<p>New designs have centered around an annual theme since 1987.</p>\n\n<p>Hermès has a reputation of identifying talented artists who are not well known to create artwork for its scarves.</p>','<p>Основателем <em> Hermès International S.A. </em> или <em> Hermès Paris </em> или просто <em> Hermès </em> является <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Он основал компанию в 1837 году как мастерскую по изготовлению конской упряжи в Париже. Первоначально его цель состояла в том, чтобы удовлетворить потребности европейских дворян, предоставляя седла, уздечки и другие кожаные изделия для верховой езды. В начале 20-го века сын Тьерри Шарль-Эмиль (Charles-Émile) перевел магазин в новое здание по адресу 24 Rue Du Faubourg Saint-Honore в Париже, где Hermès остается по сей день. Теперь это штаб-квартира компании.</p>\n\n<p>Hermès обычно вводит 12 новых проектов два раза в год, из которых половина - совершенно новые создания, а половина - переиздание ранее выпущенных платков.</p>\n\n<p>Новые проекты были сосредоточены вокруг ежегодной темы с 1987 года.</p>\n\n<p>Hermès имеет репутацию находить малоизвестных талантливых художников, которые создают великоленные произведения для Hermès.</p>','<p>Le fondateur de <em> Hermès International S.A. </em>, ou <em> Hermès de Paris </em> ou simplement <em> Hermès </em>, est <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>\n\n<p>Il fonde l\'entreprise en 1837 comme atelier de sellerie à Paris. À l\'origine, son intention était de servir les besoins des nobles européens en fournissant des selles, des brides et d\'autres équipements de cuir. Au début du XXe siècle, le fils de Thierry, Charles-Émile Hermès, déménage la boutique de l\'entreprise au 24, rue du Faubourg Saint-Honoré à Paris, où elle demeure encore aujourd\'hui le siège mondial de l\'entreprise.</p>\n\n<p>Hermès introduit généralement 12 modèles deux fois par an, dont la moitié sont de nouveaux modèles et la moitié sont des rééditions de foulards précédemment offerts.</p>\n\n<p>Depuis 1987, de nouveaux dessins sont centrés sur un thème annuel.</p>\n\n<p>Hermès a la réputation d\'identifier des artistes talentueux qui ne sont pas connus pour créer des œuvres d\'art pour ses foulards.</p>','<p>Hermès grundare är <a href=\"/sh/h_spot/h_persons/330-thierry-herms/\">Thierry Hermès</a>.</p>'),(5836,'','<p><strong>Salvatore Ferragamo</strong> (5 июня 1898, Бонито, Италия — 7 августа 1960, Флоренция) — итальянский обувщик, известный своей обувью ручной работы. В 20-х годах работал в Голливуде, вернувшись в Италию, основал во Флоренции собственную компанию.</p>\n\n<p>Его неординарный подход к обуви породил такие новшества, как клиновидный и знаменитый квадратный каблуки.</p>\n\n<p>Сейчас компания принадлежит семье Феррагамо, которая включает в себя (на ноябрь 2006 года) вдову Сальваторе Ванду, их пять детей, 23 внуков и других родственников. При этом в компании действует правило, что одновременно в ней могут работать только 3 члена семьи.</p>','','<p><strong>Salvatore Ferragamo</strong>, född 5 juni 1898, död 7 augusti 1960, var en italiensk skodesigner.</p>\n\n<p>Ferragamo experimenterade med form och material. Han gjorde sulor av trä eller kort och introducerade kilklacken och platåsulan, Han var populär som skodesigner åt filmstjärnor i Hollywood på 1920-talet.</p>\n\n<h2> </h2>'),(5837,'<p>Tiffany &amp; Co. was founded in 1837 by the jeweler <a href=\"https://en.wikipedia.org/wiki/Charles_Lewis_Tiffany\" title=\"Charles Lewis Tiffany\">Charles Lewis Tiffany</a> and became famous in the early 20th century under the artistic direction of his son <a href=\"https://en.wikipedia.org/wiki/Louis_Comfort_Tiffany\" title=\"Louis Comfort Tiffany\">Louis Comfort Tiffany</a>. The company operates retail outlets in the Americas, Asia-Pacific, Japan, Europe and the United Arab Emirates.</p>\n\n<p>In 2018, Tiffany had 93 stores in the US and 321 stores worldwide; net sales totaled US$4.44 billion.</p>\n\n<p> </p>','<p><strong>Tiffany &amp; Co. </strong>— ювелирная транснациональная компания, основанная в 1837 году <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B8%D1%84%D1%84%D0%B0%D0%BD%D0%B8,_%D0%A7%D0%B0%D1%80%D0%BB%D1%8C%D0%B7_%D0%9B%D1%8C%D1%8E%D0%B8%D1%81\" title=\"Тиффани, Чарльз Льюис\">Чарльзом Льюисом Тиффани</a> и Джоном Ф. Янгом.</p>\n\n<p>Фирменный бирюзовый цвет, присутствующий в корпоративном стиле компании, является зарегистрированной торговой маркой.</p>\n\n<p>Компания Tiffany &amp; Co. продаёт ювелирные изделия, серебро, фарфор, хрусталь, канцелярские принадлежности, парфюмерию, украшения, аксессуары, а также некоторые изделия из кожи. Компания славится своими предметами роскоши, особенно известны её ювелирные изделия с бриллиантами.</p>\n\n<p>Tiffany &amp; Co. позиционирует себя в качестве арбитра вкуса и стиля. В 2018 году компании принадлежало 93 магазина в США и 321 по всему миру.</p>','<p><strong>Tiffany &amp; Co.</strong> est une entreprise américaine de joaillerie et d\'art de la table, fondée par <a href=\"https://fr.wikipedia.org/wiki/Charles_Lewis_Tiffany\" title=\"Charles Lewis Tiffany\">Charles Lewis Tiffany</a> (père de <a href=\"https://fr.wikipedia.org/wiki/Louis_Comfort_Tiffany\" title=\"Louis Comfort Tiffany\">Louis Comfort Tiffany</a>) et John B. Young le 18 septembre 1837 dans Manhattan à New York.</p>','<p><strong>Tiffany &amp; Co.</strong> är ett amerikanskt juvelerarföretag som har ungefär 200 butiker runt om i världen. Företagets aktier är börsnoterade på <a href=\"https://sv.wikipedia.org/wiki/NYSE\" title=\"NYSE\">NYSE</a>.</p>'),(5838,'<p>Born in 1883, Nina Ricci opened her haute couture house in 1932. She designed gowns while her son Robert Ricci managed the business and finances. She worked with the fabrics directly on the mannequin to ensure they had shape once they were finished.</p>\n\n<p>Nina Ricci designs soon became known for the refined, romantic, always feminine feeling Maria adds to all of her collections.</p>','<p>Французский дом высокой моды, основанный в 1932 году в Париже модельером Ниной Риччи (наст. имя Мария-Аделаида Нейи; 1883—1970) по совету и при поддержке её сына, Робера Риччи (1905—1988).</p>\n\n<p>Начиная с 1998 года принадлежит испанской корпорации Puig.</p>','<p>Nina Ricci est une maison de mode fondée par Maria \"Nina\" Ricci et son fils Robert à Paris en 1932 et appartenant au groupe espagnol de beauté et de mode Puig depuis 1998.</p>','<p>År 2003 tog Lars Nilsson över Riccias hus med rave recensioner från kritiker. Medan hans roll också skulle innebära att skapa kreativ inverkan på affärens skönhetssida, var hans primära uppgift att injicera en dos av spänning, ungdom och energi i de något sovande mode- och tillbehörsledningarna. Han gjorde en plötslig omformning i början av 2006, och sedan i september meddelade att Brysselfödd formgivare Olivier Deskens av Rochas skulle ta över rollen som etikettledare.</p>'),(5839,'<p>Baume &amp; Mercier was founded as \"Frères Baume\" in 1830 by brothers Louis-Victor and Célestin Baume in <a href=\"https://en.wikipedia.org/wiki/Les_Bois\" title=\"Les Bois\">Les Bois</a>, a village in the Swiss Jura.</p>\n\n<p>The Swiss watch manufacturer expanded in London in 1851 under the name \"Baume Brothers\". By the late 19th century, the company had an established international reputation, and its timepieces had set accuracy records and won a number of timekeeping competitions.</p>\n\n<p>With an average selling price of between US$2,000 and US$5,000, Baume &amp; Mercier watches are in the mid-range luxury watch market.</p>','','',''),(5840,'<p><strong>Lanvin</strong> is a French multinational high fashion house, which was founded by <a href=\"https://en.wikipedia.org/wiki/Jeanne_Lanvin\" title=\"Jeanne Lanvin\">Jeanne Lanvin</a> in 1889.</p>\n\n<p>It is the third oldest French fashion house still in operation.</p>','','<p><strong>Lanvin</strong> est une maison de couture française créée en 1889 par <a href=\"https://fr.wikipedia.org/wiki/Jeanne_Lanvin\" title=\"Jeanne Lanvin\">Jeanne Lanvin</a>.</p>\n\n<p>Elle est la plus ancienne maison de couture française encore en activité.</p>','<p><strong>Lanvin</strong> är ett franskt modehut grundat av <a href=\"https://sv.wikipedia.org/w/index.php?title=Jeanne_Lanvin&amp;action=edit&amp;redlink=1\" title=\"Jeanne Lanvin [inte skriven än]\">Jeanne Lanvin</a> år 1889.</p>\n\n<p>Hon öppnade modehuset i Paris 1889 och under hela 1900-talet hörde det till de ledande, särskilt på 1920-talet med folkdräktsinspirerade kläder. Åren 1950–1963 leddes huset av <a href=\"https://sv.wikipedia.org/wiki/Antonio_Castillo\" title=\"Antonio Castillo\">Antonio Castillo</a> och hette då Lanvin-Castillo.</p>\n\n<p><a href=\"https://sv.wikipedia.org/w/index.php?title=Alber_Elbaz&amp;action=edit&amp;redlink=1\" title=\"Alber Elbaz [inte skriven än]\">Alber Elbaz</a> och <a href=\"https://sv.wikipedia.org/w/index.php?title=Lucas_Ossendrijver&amp;action=edit&amp;redlink=1\" title=\"Lucas Ossendrijver [inte skriven än]\">Lucas Ossendrijver</a> på Lanvin har under hösten 2010 ett designersamarbete med <a href=\"https://sv.wikipedia.org/wiki/H%26M\" title=\"H&amp;M\">H&amp;M</a>.</p>'),(5841,'<p>French couturier (Granville, France, 1905 - Montecatini, Italy, 1957)</p>\n\n<p><em>\"The dresses are my dreams\"</em>, wrote Christian Dior, <em>\"but the chimaeras which have passed from the realm of dreams to that of objects intended to be worn\".</em><br />\nChristian Dior\'s chimeras carried him to the pinnacle.</p>\n\n<p>Unknown on February 11, 1947, he was famous on the 12th. He had just launched the «New Look».</p>','<p>Christian Dior </p>','<p><em>\"Les robes sont mes chimères\"</em>, écrivait Christian Dior, \"<em>mais des chimè tres apprivoisées qui sont passées du royaume des rêves jusqu\'à celui des objets destinés à être portés</em>».<br />\nLes chimères de Christian Dior l\'ont porté au pinacle.</p>\n\n<p>Inconnu le 11 février 1947, il était célèbre le 12. Il venait de lancer le «New Look».</p>',''),(5842,'<p>Not yet</p>','<p>Описания пока нет</p>','<p>Par encore</p>','<p>Inter nu</p>'),(5843,'','','',''),(5844,'<p>My first carré Hermès</p>','<p>Мой первый платок Hermès</p>','<p>Mon premier carré Hermès</p>','<p>Min första Carré Hermès</p>'),(5845,'','','',''),(5846,'','Первый платок (каре), выпущенный Hermès. Много раз переиздавался','<p>Le mouchoir imprimé, comme accessoire de mode féminine indispensable d’une l’époque, apparaît au XIXe siècle vers 1867. </p>\n<p> Ce mouchoir, en se développant se rapprochera du foulard, pour devenir également masculin en se transformant en \"mouchoirs de cou\". Les soldats d’alors sont dotés de mouchoirs imprimés sur lesquels on trouve des motifs militaires, voir des instructions illustrées, pour les combattants analphabètes. </p>\n<p> Durant le début de la Première Guerre mondiale, les motifs imprimés sur le mouchoir de cou changeront, y compris pour les femmes où ceux-ci prennent une inspiration militaire ou tout du moins masculine. </p>\n<p> Alors que les manuels d’instruction militaire sont rendus obligatoires vers 1937, les soldats étant censés savoir lire, Hermès va s’inspirer de cette tradition. Tout juste un siècle après la création de la société par Thierry Hermès, Robert Dumas, directeur d’Hermès, réalise en 1937 le premier carré avec le nom de \"Jeu des omnibus et Dames blanches\" inspiré d’une sorte de jeu de Paris très populaire à l’époque.</p>\n',''),(5847,'','','',''),(5848,'','','',''),(5849,'','','<p>Dessin de Françoise de La Perriere <em>Panorama universel de la haute carrosserie et sellerie Exposition universelle de Londres en 1851</em>, par Guillon. Cet album est conservé dans la collection Émile Hermès.</p>\n\n<p>La carrosserie francaise et internationale du milieu du XIX siecle, particulierement dynamique, fait preuve d\'une grande inventivi alliant esthétique et innovation technique. Pour exemple, un atelier parisien pr l\'occasion de cette exposition un coupé dont les glaces étaient actionnées par simple pression d\'un bouton, ou encore une caleche modulable.</p>\n\n<p>Les voitures transformation sont alors en vogue en France comme en témoignent ces ancetres des décapotables qui entourent un motif de cannage, ornement tres prisé l\'époque pour décorer les caisses des voitures.</p>',''),(5850,'<p>The carré published in 1957, remains one of our greatest successes. </p>\n<p> Its composition resumes and assembles various pieces of eighteenth and nineteenth century harness, which are part of treasures from the Hermès collection. </p>\n<p> It is reassuring, it is not a question of restraining anyone.</p>\n','','<p>Le carré paru en 1957, il reste un de nos plus grands succès.</p>\n<p> Sa composition reprend et assemble diverses pièces de harnachement des XVIIIe et XIXe siècles, qui font partie des trésors de la collection Hermès. </p>\n<p> Qu\'on se rassure, il ne s\'agit de brider personne.</p>\n',''),(5851,'','','',''),(5852,'','','',''),(5853,'','','',''),(5854,'','','',''),(5855,'','','',''),(5856,'','','',''),(5857,'','','',''),(5858,'','','',''),(5859,'','','',''),(5863,'','','',''),(5866,'<p>Valentin de Boulogne was a French painter. He is also known as Le Valentin, his real name was Jean Valentin. </p>\n<p> Later in life, Valentin went to Rome to study. In Rome, he was under the influence of Michelangelo Merisi da Caravaggio and Bartolomeo Manfredi. Valentin\'s teacher was Simon Vouet.</p>\n','<p>Xудожник эпохи барокко, представитель караваджизма.</p>\n<p> Подобно Караваджо, Валантен не был способен ни на какую идеализацию, признавал только живопись с натуры и брал себе в модели простых людей.</p>\n<p> Итальянцы считают Валантена лучшим последователем Караваджо и причисляют его к художникам Римской школы.</p>\n<p> Французы тоже причисляют Валантена к своим художникам.</p>\n<p> В Лувре хранятся 11 его картин, в Версале можно увидеть серию его работ, купленную королем Солнце в 1670 г. Картины Валантена в Риме, Флоренции, Дрездене и т. д. и даже в Санкт-Петербурге, в Эрмитаже.</p>\n<p> Утверждают, что Валантен умер от купания в холодных водах Фонтана-дель-Тритон на площади Барберини в Риме, после крепкой попойки.</p>\n','<p>Bien que le Caravage et Manfredi aient influencé le style et les thèmes devenus communs dans l\'œuvre de Valentin, celui-ci a également étudié sous Simon Vouet, considéré comme un peintre de premier plan par ses contemporains, et dont les premières œuvres présentent des influences caravagesques. Valentin a réussi avec un type de composition inventé par le Caravage dans lequel diseuses de bonne aventure, buveurs ou joueurs sont regroupés autour d’une table. Il reprend à son compte un réalisme dramatique, la tension suscitée par le clair-obscur et des thèmes novateurs tirés du quotidien, mais il les transfigure par une touche inédite à la fois d’introspection et de mélancolie ainsi qu’une sensibilité à la couleur d’inspiration néo-vénitienne qui tempèrent la violence des clair-obscur (David et Goliath, Musée Thyssen-Bornemisza) et parvient ainsi à les transfigurer. Il va parvenir ainsi à répondre aux critiques formulées à l’encontre de Caravage. </p>\n<p> Entre les années 1610 et 1620, il choisit de peindre des sujets du quotidien comme le font Ribera, Cecco del Caravaggio et Manfredi, mais il choisit ses modèles auprès de types du peuple romain, ce qui est nouveau : joueurs de cartes, tricheurs, scènes de tavernes, chiromancie. Les œuvres de cette période, caractérisées par des cadrages resserrés, des figures sculpturales et un travail du clair-obscur très contrasté, qui annoncent le travail «photographique», restituent un sentiment de tension menaçante et sont animées d’une force dramatique inédite. </p>\n<p> Après les années 1620, la rhétorique des compositions devient plus importante ainsi que la complexité des gestes et des personnages. Les compositions simples, aux cadrages serrés des années 1610 laissent place à des compositions peintes plus monumentales : que ce soit avec des figures isolées d’après modèle vivant (telles que Saint Jean Baptiste, S. Jean de Maurienne) ou des scènes collectives (Reniement de saint Pierre, Fondazione di Studi di Storia dell’Arte Roberto Longhi, Florence ; Soldats jouant aux cartes, Washington). Certaines œuvres présentent une dimension historique avec des références à l’Antique (Concert au bas-relief, _AO_c_id=166;musée du Louvre_AC_, dont le relief reprend le motif de plaques en terre cuite de la collection Campana).</p>\n','<p>Valentin de Boulogne var en fransk målare. Han är också känd som Le Valentin, hans riktiga namn var Jean Valentin. </p>\n<p> Senare i livet gick Valentin till Rom för att studera. I Rom var han under påverkan av Michelangelo Merisi da Caravaggio och Bartolomeo Manfredi. Valentins lärare var Simon Vouet.</p>\n'),(5865,'<p>Work of artists, sometimes known as the Flemish Primitives, active in Flanders during the 15th- 16th-century; especially in the flourishing cities of Bruges, Ghent, Mechelen, Louvain, Tournai, Brussels, all in contemporary Belgium. </p>\n<p> The major Flemish painters include Robert Campin, <a href=\'/sh/a_spot/a_persons/14-jan-van-eyck/\'>Jan van Eyck</a>, Rogier van der Weyden, Dieric Bouts, Petrus Christus, Hans Memling, Hugo van der Goes, Hieronymus Bosch, <a href=\'/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\'>David Teniers</a>.</p>','','',''),(5861,'','','',''),(5862,'<p>The medieval Netherlands was divided into two provinces - northern (Holland) and southern (Flanders, modern Belgium). </p>\n<p>The painting of the northern part, known today as the Dutch school, (where Rembrandt was working), differs significantly from the painting of the southern (Flemish) school, the development of which was influenced by Catholic Spain. \n<h2> The Golden Age of Dutch Painting </h2>\n ToBeContinued </p>\n<p></p>\n','','',''),(5867,'','','',''),(5868,'','','',''),(5869,'','<p>В. Калинин: <em>…В своих картинах того времени (сейчас оно обозначается как время «сурового стиля») я писал свою жизнь, которая шла как бы по кругу: пьянство и драки, веселье и печаль. Хотелось запечатлеть быстротечность и театральность нашей жизни. Я совершенно не заботился ни о стиле, ни о модных исканиях в живописи. Все возникало спонтанно, виденное однажды преломлялось в воображении… </em> </p>\n<p> После окончания абрамцевской художественной школы и художественного училища по специальности «столяр-краснодеревщик» поступил в Абрамцевское художественно-промышленное училище им. В. М. Васнецова в подмосковном Хотькове, которое окончил в 1963. </p>\n<p> Еще в 1960-е вошел в Лианозовский круг, в мастерскую Оскара Рабина, где познакомился с Е. Л. Кропивницким, В. Я. Ситниковым, А. Т. Зверевым, В. Яковлевым, а также с Г. Костаки и другими коллекционерами искусства нонконформистов. </p>\n<p> С 1962 работал художником по интерьеру в разных организациях, был экспонентом зарубежных и российских выставок в Италии, ФРГ, Швейцарии. В 1974 участвовал в выставке Progressive Stromungen in Moskau 1957–1970 (Museum Bochum, Бохум, ФРГ); в том же году выставлял свои работы на втором осеннием смотре картин «на открытом воздухе», состоявшемся в лесопарке Измайлово через две недели после «Бульдозерной выставки»; в 1975 участвовал в выставке в павильоне «Пчеловодство» на ВДНХ (Москва). </p>\n<p> В 1976 В. Калинин, объединившись с единомышленниками, организовал Выставку произведений семи московских художников. «…Мы пытались объединиться в небольшую группу и выставляться самостоятельно. В группу входили Плавинский, Краснопевцев, Харитонов, Вечтомов, Кондауров и я. Первая же наша выставка, хотя и без рекламы, афиши и каталога, привлекла внимание интеллигенции и, можно сказать, всей Москвы. Люди стояли в очереди по три-четыре часа — таков был интерес к неофициальному искусству того времени». </p>\n<p> В. Калинин: <em>... Шел 1979 год. Я готовился к своей персональной выставке. Представилась такая возможность, и отказаться было грешно. Подготовительная работа оказалась большой и трудной. Я “пробил” себе каталог и афишу. Мне это стоило огромных физических усилий и всевозможных мытарств. Каталог получился маленьким, но и это тогда считалось сказочным везением…</em> </p>\n<p> В 1991 работы В. Калинина экспонировались на выставке «Другое искусство» Москва. 1956–76 в Государственной Третьяковской галерее (Москва). </p>\n<p> В 1991 В. Калинин уехал в США и жил в Лос-Анджелесе, но в 1996 вернулся в Россию. </p>\n<p> Работы В. Калинина представлены в Государственной Третьяковской галерее (Москва); Государственном Русском музее (Санкт-Петербург), а также в зарубежных музейных собраниях и частных коллекциях.</p>\n','',''),(5875,'<p>Storck\'s marine and river scenes were influenced by the two Willem van de Veldes (the elder and the younger), Ludolf Bakhuizen and by Jan Abrahamsz Beerstraaten. </p>\n<p> Storck, influenced by Jan Baptist Weenix, produced fantastical views of Mediterranean ports, which place merchant shipping a midst architectural ruins, depicted in the crystal-clear colours of Italian art of the period. This type of scene anticipated the popular 18th-century Italian capriccio. He depicted ships\' rigging and technical details with considerable accuracy, which likely shows the influence of the van de Veldes. His Dutch harbour and river views often include recreational and ceremonial aspects of shipping. He paid particular attention to the display of pleasure yachts, ceremonial gatherings of ships, the passengers and the people watching. </p>\n<p> Storck painted some winter scenes, which are inspired by the example of Jan Abrahamsz Beerstraaten and his son Anthonie Beerstraaten, a selfportrait, and some allegories.</p>\n','','<p>Il est le plus jeune fils du peintre allemand Johannes Sturckenburgh (1603-après 1663) et le frère de Johannes Storck (1629/1630 -1673) ainsi que de Jacobus Storck (1641-après 1692). Il fut membre de la Guilde Saint-Luc d\'Amsterdam à partir de 1679. </p>\n<p> Reconnu comme faisant partie de l\'École picturale néerlandaise, au style baroque, plusieurs des œuvres de l\'Amstellodamois sont désormais exposées au Rijksmuseum et au musée du Louvre à Paris. Il utilisa le nom de Sturckenburch jusqu\'en 1688.</p>\n','<p>Född i Amsterdam, död i Amsterdam, var en nederländsk landskaps- och marinmålare. </p>\n<p> Abraham Storch föddes in i en konstnärsfamilj i Amsterdam, där hans far och tre av hans bröder var målare. Han utbildade sig hos sin far, arbetade tillsammans med honom och blev medlem av Sankt Lukasgillet i Amsterdam. Han använde namnet Sturckenburch till 1688. </p>\n<p> Han influerades av Ludolf Bakhuisen, Willem van de Velde d.y. och Jan Abrahamsz Beerstraaten. </p>\n<p> År 1694 gifte han sig med Neeltje Pieters van Meyservelt, en änka efter en läkare.</p>\n'),(5880,'<p>Vermeulen was born in Dordrecht. He was taught by his father, Cornelis Vermeulen. He was primarily a landscape painter. He worked for some time in Amsterdam, where he died. He is known for landscapes and engravings.</p>\n<p> His pupils were Leendert de Koningh and Arnoldus van Well.</p>\n','','<p>Vermeulen est né à Dordrecht. </p>\n<p> Il a été formé par son père, Cornelis Vermeulen. Il était principalement un peintre paysagiste, et a travaillé à Amsterdam.  Il est connu pour ses paysages et ses gravures. </p>\n<p> Ses élèves étaient Leendert de Koningh et Arnoldus van Well.</p>\n',''),(5892,'<p>Born in Havre, worked in Paris, Biarritz </p>\n<p> Autodidact </p>\n<p> Exibitions in Paris, Venice, San Francisco, Biarritz, Ulm, Basel</p>\n','','',''),(5889,'','','',''),(5901,'','','',''),(5902,'','','',''),(5903,'','','',''),(5904,'','','',''),(5905,'Collection of items which I wanted to acquire, but lost the bid.','<p>Коллекция объектов, которые хотелось приобрести, но что-то пошло не так... </p>\n<p> Как правило, цена доходила до неразумных пределов.</p>\n','Collection d\'articles que je voulais acquérir, mais j\'ai perdu l\'offre.','Samling av objekt som jag ville förvärva, men förlorade budet.'),(5906,'','','',''),(5907,'','','',''),(5908,'','','',''),(5909,'Копия довольно известной работы итальянца Raffaele Frigerio','','',''),(5910,'Эту картину я покупал долго...','','',''),(5911,'','','',''),(5912,'','','',''),(5913,'','','',''),(5914,'','Масло, доска, Фламандская школа','',''),(5871,'','','',''),(5872,'','','',''),(5873,'','Вероятно уличный художник','',''),(5874,'TBD','<p>Конинк был под сильным воздействием своего учителя Рембрандта и тоже писал картины на религиозные сюжеты, различные жанровые сцены. Для великого мастера это был период наибольшей славы и популярности, финансового благополучия, беззаботной творческой жизни. В это время наметились основные темы его творчества, определилась тяга к философскому осмыслению трагических сторон жизни, которая заставляла его обращаться не к бытовому жанру, а к образам общечеловеческого значения. Но если Рембрандт пошел в своем художественном развитии дальше, то Конинк остановился на достигнутом. Всю свою не очень долгую жизнь он продолжал в одной и той же манере писать картины на библейские, исторические или мифологические сюжеты. </p>\n<p> В ленинградском Эрмитаже хранится одно из характерных полотен такого рода. Это «Притча о работниках на винограднике». Как и другие произведения школы Рембрандта, картина представляет собой очень умелое и профессиональное подражание молодому Рембрандту. На первый взгляд она даже может показаться произведением самого мастера. Евангельский сюжет трактован как бытовая сцена, происходящая в современной художнику Голландии: расчет хозяина со своими работниками. Конинк не обращается ни к патетике, как это любили делать барочные художники, ни к различным аллегориям и символам классицистического искусства. Единственным его приемом служит рембрандтовская знаменитая светотень. Именно она создает драматизм настроения, атмосферу одухотворенности и эмоциональной насыщенности. Именно благодаря ей жанровая сценка обладает такой внутренней значительностью и напряженностью. Светотеневые приемы Конинка (вернее, Рембрандта) построены на контрастном сопоставлении света и тени, на затемнении одних частей картины и высветлении других. Особенный эффект они приобретают, когда художник изображает полутемный интерьер, освещенный ярким боковым источником света. Эти приемы пришли из Италии, от Караваджо. В XVII веке они захватили многих европейских художников. Но у большинства из этих мастеров они выглядят формальными экспериментами в области света и тени. И лишь Рембрандт и его последователи смогли вдохнуть в них жизнь, придать им эмоциональную и смысловую настроенность. Все это видно и в других сюжетных композициях художника, как, например, «Крез, показывающий Солону свои сокровища» или «Призвание апостола Матфея» (обе картины в галерее Берлина). </p>\n<p> Помимо фигурных композиций Саломон Конинк занимался портретом. Он был последователем того портретного жанра, который стал специфической чертой голландской живописной школы и, в частности, школы Рембрандта. Речь идет о так называемом «жанровом портрете». Это не было изображением конкретной личности (хотя портрет часто писался с натуры), а некоего собирательного образа, типичного представителя определенной профессии. Чаще всего художников привлекал образ ученого старца, работающего в своем кабинете (создателем этого образа был Рембрандт). Обычно портретное изображение сопровождалось различными бытовыми подробностями, описанием обстановки, одежд, предметов. В Государственном Эрмитаже хранятся два подобных холста («Старик ученый», «Ученый у стола»). Прекрасным образцом «жанрового портрета» может служить «Астроном» Конинка из Дрезденской галереи. Перед нами одетый в бархатную шапку и куртку старик. О его профессиональной принадлежности говорят только определенные атрибуты—подзорная труба в руке и глобус, стоящий на заднем плане. Может быть, в виде модели художник использовал натурщика из рембрандтовской мастерской или даже кого-то из близких. Поэтому вся эта бутафория выглядит несколько искусственной. На самом деле это просто портрет старика, умудренного опытом и отягощенного жизнью. Но такова была специфика жанра, выбранного художником. </p>\n<p> Саломон Конинк оставил после себя большое художественное наследие. Его картины есть почти во всех крупных галереях и музеях мира: он был очень продуктивен. Замечательно и то, что в каждой картине он оставался мастеровитым живописцем, никогда не делая ничего в ущерб качеству технического исполнения. С. Конинк был верным хранителем традиций своего великого современника и учителя, в чем и состоит его главная заслуга перед европейским искусством.</p>\n','',''),(5877,'','','',''),(5878,'','','',''),(5879,'<p>Samoylov was a Russian stage actor, associated with Alexandrinsky Theatre in Saint Petersburg. </p>\n<p>Initially an opera singer, he was also an artist whose several albums of paintings include the gallery of stage self-portraits, amounting to a visual autobiography</p>\n','<p>Родился в знаменитой семье оперных певцов В.М.Самойлова и С.В.Черниковой-Самойловой. Сестры — известные актрисы Александринского театра: Надежда Самойлова и Вера Самойлова. </p>\n<p> Воспитывался в Горном корпусе и Лесном институте и был уже офицером, когда по желанию отца, заметившего в нём артистическое дарование и хороший голос, дебютировал в Александринском театре в заглавной партии оперы Э.Н.Мегюля «Иосиф прекрасный».  </p>\n<p> Диапазон его ролей поражает своим разнообразием. Никто, как он, не умел представить настоящего барина с утонченными манерами и речью. Роли Кречинского, графа в тургеневской «Провинциалке», старого барина в пьесе Пальма после Самойлова не находили исполнителя, который хотя бы несколько был на уровне его творчества. </p>\n<p> Талантливость натуры С. не исчерпывалась областью одного лишь драматического искусства.</p>\n<p> Он превосходно рисовал (некоторые его картины побывали на выставках), хорошо знал музыку и сочинял романсы; карикатуры его отличались бойкостью и остроумием. </p>\n<p> В обществе это был любезный, приятный собеседник, сыпавший анекдотами, остротами и меткими замечаниями. </p>\n<p>  В 1884 г. Петербург торжественно отпраздновал 50-летний юбилей его деятельности; в этот день Самойлов в последний раз появился на сцене, исполнив отрывок из третьего акта драмы «Ришелье».</p>\n','',''),(5882,'Götgatan 116, lgh 1202, 11862 STOCKHOLM','Götgatan 116, lgh 1202, 11862 STOCKHOLM','Götgatan 116, lgh 1202, 11862 STOCKHOLM','Götgatan 116, lgh 1202, 11862 STOCKHOLM'),(5883,'<p>The son of the prominent genre painter David Teniers the Elder and Dymphna Cornelisse de Wilde (also called <i> Dymphna Hendrikx </i> ) Three of his brothers were also painters: <a href=\'/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\'>David the Younger</a> who became the most successful of the Teniers painting dynasty, Juliaan III (1616–79) and Theodoor (1619–97).\n\n</p>\n<p>Abraham Teniers likely trained with his father and older brother David. He was admitted as a ‘wijnmeester’ (i.e. son of a master) in the Antwerp Guild of Saint Luke in 1646. \n\n</p>\n<p>Abraham married Isabelle de Roore on 16 July 1644. He was a captain of the local <i>schutterij</i> (civil militia) of Antwerp. He was active in the local chamber of rhetoric called the <i>Olyftack;</i> (Olive branch) where he was received as a captain in 1660. In the Guild year 1661-62 Franciscus Bock was registered as his pupil.\n\n</p>\n<p>Like his brother David before him, Abraham found appreciation at the court in Brussels and the art-loving Archduke Leopold Wilhelm of Austria – then the governor of the Southern Netherlands and a resident of Brussels – appointed him as court painter.\n\n</p>\n<p>Abraham died in Antwerp.</p>','','',''),(5885,'<p>Flemish painter, printmaker, draughtsman, miniaturist painter, staffage painter, copyist and art curator. He is now best remembered as the leading Flemish genre painter of his day. </p>\n<p> He was an innovator in a wide range of genres such as history, genre, landscape, portrait and still life. Teniers is particularly known for developing the peasant genre, the tavern scene, pictures of collections and scenes with alchemists and physicians. \n<h2> Various &quot;Trick Track Players&quot; </h2>\n \n<h2> Various &quot;Lute players&quot; </h2>\n \n<div class=\"align_left\"> <img src=\'https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0228_000().jpg\'/>Playing lute </div>\n He was an innovator in a wide range of genres such as history, genre, landscape, portrait and still life. Teniers is particularly known for developing the peasant genre, the tavern scene, pictures of collections and scenes with alchemists and physicians. \n<div class=\"align_left\"> \n<a href=\'https://www.christies.com/lotfinder/Lot/follower-of-david-teniers-ii-a-peasant-1845383-details.aspx\'>A peasant playing a lute in a tavern interior</a>\n<a href=\'https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0228_000().jpg\'>A peasant playing a lute in a tavern interior</a>\n </div>\n \n<div class=\"align_right\"> \n<a href=\'https://www.christies.com/lotfinder/Lot/circle-of-david-teniers-ii-1610-1690-1845379-details.aspx#content\'>Playing lute 2</a>\n<a href=\'https://www.christies.com/img/LotImages/2000/CSK/2000_CSK_08821_0224_000().jpg\'>Playing lute 2</a>\n </div>\n test line</p>','<p>Один из наиболее значимых художников и гравёров фламандской школы, наряду со своими соотечественниками Рубенсом и ван Дейком. </p>\n<p> Старший и наиболее успешный из 4 сыновей художника Тенирса Старшего (David Teniers, the Elder) и Димфны Вилде (Dymphna Wylde).</p>\n','',''),(5887,'','','',''),(5893,'','','',''),(5894,'Bukowskis is a Scandinavian fine art and antique auction house established in 1870 by the Polish nobleman Henryk Bukowski in Stockholm, Sweden. In 1979, an office was opened in Helsinki, Finland.','','',''),(5895,'','','',''),(5896,'<p>This house existed just for a few months in 2010.</p>\n<p> They used to run a &quot;Dutch Auction&quot;, when an object could be also purchased for the double starting price without bidding.</p>\n','','',''),(5891,'av_descr_2918','','',''),(5897,'<p>Uppsala Auktionskammare was founded in 1731 and is one of the oldest auction houses in the world. </p>\n<p> Auctions have a long and solid tradition in Uppsala and the first auction in Sweden mentioned in written sources was held in 1639 in Uppsala. </p>\n<p> Today the auction house is one of the leading auction houses in Sweden with auctions of fine art and antiques. </p>\n<p> Over the last decade the auction house has sold over 200 lots that have reached a million Swedish kronor and more, many within the Russian segment, but also Old master paintings and Chinese objects.</p>\n','<p>Аукцион Uppsala Auktionskammare был основан в 1731 году и является одним из старейших аукционных домов в мире. </p>\n<p> Аукционы имеют давнюю и твердую традицию в Уппсале, и первый аукцион в Швеции, упомянутый в письменных источниках, был проведен здесь в 1639 году. </p>\n<p> Сегодня аукционный дом является одним из ведущих домов в Швеции с аукционами изобразительного искусства и антиквариата. </p>\n<p> За последнее десятилетие аукционный дом продал более 200 лотов, которые достигли миллиона шведских крон и более, многие из них в российском сегменте, а также картины Старых Мастеров и китайские объекты.</p>\n','','<p>Uppsala Auktionskammare grundades år 1731 och är därmed ett av världens äldsta auktionshus.\n</p>\n<p>\n Auktioner har en lång och gedigen tradition i Uppsala och den första auktionen i Sverige som finns omnämnd i skriftliga källor hölls år 1639 av Akademiska konsortiet i Uppsala.\n</p>\n<p>\nUppsala Auktionskammare är det enda auktionshuset i Norden som enbart bedriver kvalitetsauktioner. Vi fokuserar på kvalitet och försäljning av högklassig konst, antikviteter och design. Med ett gott internationellt renommé, rekordnoteringar, exklusiva samlingar och över 200 miljonnoteringar har vi kommit att bli ett av Nordens ledande auktionshus. \n</p>\n<p>\nVåra framgångsrika försäljningar grundar sig i stort engagemang och kunskap hos våra medarbetare och extern världsledande internationell expertis. Genom att fokusera på kvalitetsauktioner med slagauktioner, tryckta kataloger, kraftfull marknadsföring och med senaste tekniken online når vi köpstarka kunder runt\nom i hela världen.</p>\n'),(5898,'','','',''),(5899,'','','',''),(5900,'<p>The Gemäldegalerie Alte Meister in Dresden, Germany, displays around 750 paintings from the 15th to the 18th centuries. It includes major Italian Renaissance works as well as Dutch and Flemish paintings. Outstanding works by German, French and Spanish painters of the period are also among the gallery\'s attractions. </p>\n<p> The Old Masters are part of the Dresden State Art Collections. The collection is located in the Semper Gallery, the gallery wing of the Zwinger.</p>\n','<p>Начало этому собранию было положено в 1560 году кабинетом изящных искусств (Kunstkammer), где наряду с природными феноменами, изделиями ручного труда и разного рода диковинками выставлялись полотна итальянских и фламандских мастеров живописи.  </p>\n<p>Систематически собирать произведения старых мастеров стал курфюрст Август II Сильный (1670—1733), который слыл ценителем искусств и перестроил весь центр Дрездена.   </p>\n<p>Страсть к собиранию произведений искусства унаследовал от отца Август III. Подобно родителю, он мог себе позволить весьма дорогостоящие покупки за счёт поступлений из казны огромного Польско-Литовского государства, чей выборный трон он занимал. Для приобретения он отбирал только шедевры, полагаясь на советы проницательного Альгаротти.  </p>\n<p>В 1741 году Август III приобрёл 268 полотен из собрания Валленштейна, в том числе «У сводни» Яна Вермеера Делфтского. Чуть позже за ними последовали многочисленные работы из королевской галереи в Праге, а в 1745 году — «сто лучших картин» из собрания обедневшего герцога Моденского, среди которых были работы Корреджо, Веласкеса, Тициана.   </p>\n<p>«Царём художников» в то время считался Рафаэль, а его лучшей станковой работой — «Сикстинская мадонна». Это полотно удалось привезти из церкви Сан-Сиксто в Пьяченце.   </p>\n<p>В 1945 году советские войска вывезли в качестве трофеев значительную часть собрания. На протяжении 10 лет поврежденные картины реставрировались и хранились в ГМИИ им. Пушкина. В 1955 году состоялся торжественный визит правительственной делегации СССР в Германскую Демократическую Республику, в ходе которого по настоянию Н.С.Хрущёва были возвращены 1240 картин. Судьба 450 картин неизвестна.</p>\n','La Gemäldegalerie Alte Meister (Galerie de Peinture des Vieux Maîtres) est un musée d\'art des Collections nationales de Dresde situé dans le Semperbau du palais Zwinger, à Dresde, en Allemagne. Elle ne doit pas être confondue avec la Gemäldegalerie Alte Meister de Cassel.',''),(5915,'','','',''),(5916,'','','',''),(5917,'','','',''),(5918,'','','',''),(5919,'','','',''),(5920,'','','',''),(5921,'','','',''),(5922,'','','',''),(5923,'','Дого считалось что это картина Рембрандта...','<p>Tableau d\'idée tout à fait rembranesque et mis du reste en pendant au XVIIIe siècle (déjà en 1754) avec le Philosophe de Rembrandt (Louvre,Paris,salle 31).\nCollection du duc de Choiseul (vente de 1772)</p>\n<p>\nCollection de Louis XVI, acquis à la vente du comte de Vaudreuil, Paris, 1784 (comme Rembrandt)</p>\n',''),(5924,'','Русский текст','',''),(5925,'','','',''),(5926,'','','',''),(5927,'','','',''),(5928,'','','',''),(5929,'','','',''),(5930,'<p>Work of artists, sometimes known as the Flemish Primitives, active in Flanders during the 15th- 16th-century; especially in the flourishing cities of Bruges, Ghent, Mechelen, Louvain, Tournai, Brussels, all in contemporary Belgium.</p>\n\n<p>The major Flemish painters include Robert Campin, <a href=\"/sh/a_spot/a_persons/14-jan-van-eyck/\">Jan van Eyck</a>, Rogier van der Weyden, Dieric Bouts, Petrus Christus, Hans Memling, Hugo van der Goes, Hieronymus Bosch, <a href=\"/sh/a_spot/a_persons/2306-david-teniers-ii-the-younger/\">David Teniers</a>.</p>','','',''),(5931,'','<p>История покупки этого рисунка - готовый сценарий для детективного фильма. Все началось 20 октября 2009 года, когда я увидел в углу демонстрациооного зала аукцона Metropol небольшую акварель подписанную &quot;Falk,1914&quot; с весьма скромной стартовой ценой в 300крон (30 евро).</p>\n<p> За дни оставшиеся до аукциона я сканировал Google, вычислял был ли Фальк в Париже в 1914, искал цены на его рисунки, обсуждал с семьей и т.п. Ясно было, что вероятность подделки есть, и что цена будет подниматься сильно. Надо было оценить риски.</p>\n<p>Решил идти до 2000/3000 крон. Начались торги, и мы в азарте дошли до 13000. Купили, были рады, позвонили детям.</p>\n<p>Наутро я уехал на работу, звонок...<br/>\n  <em>- Картина стояла на подставке, мышка бежала, хвостиком махнула, картина упала и  разбилась... Порвалась пополам...</em> <br/>\nЧто было дальше понятно.</p>\n<p> Ладно. Назавтра звонок домой, не сразу понял о чем речь:<br/>\n <em> - Это полиция. Вы вчера купили картину на аукционе?  Принесите ее пожалуйста нам.</em> <br/>\n<em> - В чем дело? Да и картины больше нет, она разбилась</em> <br/>\n<em> - Это неважно, несите что осталось. Картина оказалась подделкой и аукцион подает в суд на сдатчика </em> </p>\n<p> Принес. Через пару месяцев получаю конверт со строгим указанием ОТМЕНИТЬ все встречи на 17 апреля, и явиться в этот день в суд в качестве свидетеля по делу о злостном обмане. </p>\n<p> Выясняется что кто-то обратил внимание на нетипичный разрыв начальной и конечной цены для картины которую он пытался купить месяц назад. Но только тогда на ней была подпись неизвестного  художника и стоила она 100 крон. </p>\n<p> И дело завертелось... Экспертиза показала что старая подпись была закрашена, поверх нарисована новая, что было квафилицировано как сознательный обман с целью наживы. Пострадавший - аукцион, свидетель - я, ответчик - сдатчик.</p>\n<p>Сдатчик был ex-поляк, стало быть в Польше знают русский авангард. Деньги мне все вернули, мужик заплатил крупный штраф и судебные издержки. Картину я больше не видел.</p>\n','',''),(5932,'','','',''),(5933,'With laquer seal on stretcher. With note on stretcher:<br/>\n<em> \"Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort [...] aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale.<br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc [...] de la société Rembrandt en 1897”</em>','<p>На обороте записка приклееная лаком: <br/>\n<em> &quot;Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort &#91;...&#93; aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale. <br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc &#91;...&#93; de la société Rembrandt en 1897”</em> </p>\n<p> Перевод записки: <br/>\n <em> Henrik Avercamp по кличке &quot;немой из Кампена&quot; родился в Амстердаме 25 янв. 1585 и умер &#91;...&#93; после 1663 года в Кампене, куда он перебрался в 1625. <br/>\n Зима. Подпись на двери. <br/>\n Провенанс - коллекция G. de Clerc &#91;...&#93; из ассоциации Рембрандта 1897</em></p>\n','Avec le joint de laquer sur la civière. Avec note sur civière en français::<br/>\n<em> \"Henrik Avercamp surnommé ”de Stomme van Kampen” (le muet de Kampen) né à Amsterdam le 25 janvier 1585 et mort [...] aprés 1663 à Kamen où il demeurent depuis 1625 environ. I’est d’abord fixe dans sa ville natale.<br/>\n L’hiver. Signé sur porte. <br/>\nProvement de la collection G. de Clerc [...] de la société Rembrandt en 1897”</em>',''),(5934,'description','','',''),(5935,'','','',''),(5936,'Another rare composition with cats taking on human roles is the painting of the Barber shop, in the Kunsthistorisches Museum in Vienna. Several versions of this composition are known.','','',''),(5937,'','','',''),(5938,'There are several version of this artwork...','Известно несколько версий этой картины: \n<ul>\n   <li> _AO_ https://commons.wikimedia.org/wiki/File:David_Teniers_the_Younger_-_Puffspieler_in_einem_Wirtshaus.jpg;Эта, хранящаяся в Gemäldegalerie, Берлин _AC_ </li>\n   <li> _AO_ http://www.sothebys.com/en/auctions/ecatalogue/2011/old-master-and-british-paintings-evening-sale/lot.16.html; Проданая на Sothebys в 2011 _AC_ </li>\n   <li> _AO_ http://www.nationaltrustcollections.org.uk/object/1246499.2#content; Хранящаяся в <i> Polesden Lacey National Trust Images/Prudence Cuming </i> _AC_ </li>\n   <li> _AO_ http://lunacommons.org/luna/servlet/detail/AMICO~1~1~34495~60115; Хранящаяся в <i> the AMICA Library, the Cleveland Museum of Art </i> _AC_ </li>\n \n</ul>\n','',''),(5939,'','','',''),(5940,'','','',''),(5941,'','','',''),(5942,'','','',''),(5943,'','','',''),(5944,'','','',''),(5945,'','','',''),(5946,'','','',''),(5947,'','','',''),(5948,'','','',''),(5949,'','','',''),(5950,'','','',''),(5951,'','','',''),(5952,'','','',''),(5953,'','','',''),(5954,'','','',''),(5955,'','','',''),(5956,'','','',''),(5957,'<p>Дымковская игрушка — изделие ручной работы, каждая из них — создание одного мастера. Изготовление игрушки — процесс никогда не повторяющийся. Нет и не может быть двух абсолютно одинаковых изделий.</p>\n\n<p>Игрушки делают из местной ярко-красной глины, тщательно перемешивая ее с мелким коричневым речным песком. Фигурки лепят по частям, отдельные детали собирают и долепливают, используя жидкую красную глину как связующий материал. Следы лепки заглаживают для придания изделию ровной поверхности.</p>\n\n<p>Наиболее распространённые сюжеты: барыни, няньки с детьми, водоноски, бараны с золотыми рогами, индюшки, петухи, олени, молодые люди, скоморохи.</p>','<p>Дымковская игрушка — изделие ручной работы, каждая игрушка — создание одного мастера. Изготовление игрушки от лепки и до росписи — процесс творческий, никогда не повторяющийся. Нет и не может быть двух абсолютно одинаковых изделий.</p>\n\n<p>Для производства дымковской игрушки используется местная ярко-красная глина, тщательно перемешанная с мелким коричневым речным песком. Фигурки лепят по частям, отдельные детали собирают и долепливают, используя жидкую красную глину как связующий материал. Следы лепки заглаживают для придания изделию ровной поверхности.</p>\n\n<p>Наиболее распространённые сюжеты: барыни, няньки с детьми, водоноски, бараны с золотыми рогами, индюшки, петухи, олени, молодые люди, скоморохи.</p>','',''),(5958,'','','',''),(5959,'','','',''),(5960,'','','',''),(5961,'','','',''),(5973,'','','',''),(5965,'','','',''),(5966,'','','',''),(5967,'','','',''),(5968,'','','',''),(5969,'','','',''),(5975,'','','',''),(5971,'','','',''),(5974,'','','',''),(5976,'','','',''),(5977,'','','',''),(5978,'','','',''),(5979,'','','',''),(5980,'','','',''),(5981,'','','',''),(5982,'','','',''),(5983,'','','',''),(5984,'','','',''),(5985,'','','',''),(5986,'','','',''),(5987,'','','',''),(5988,'','','',''),(5989,'','','',''),(5990,'','','',''),(5991,'','','',''),(5992,'','','',''),(5993,'','','',''),(5994,'','','',''),(5995,'','','',''),(5996,'','','',''),(5997,'','','',''),(5998,'','','',''),(5999,'','','',''),(6000,'','','',''),(6001,'','','',''),(6002,'','','',''),(6005,'','','',''),(6006,'<p>\"Coco\", the most famous couturier of the 20th century.</p>\n\n<p>This fashion phenomenon dared and invented the silhouette of today\'s woman, making her discover the comfort of jersey, cardigans, pants, the tweed, the raincoat, the charm of the little black dress, the short skirts, the tan or even the costume jewelry.</p>\n\n<p>Chanel opened a fashion house in 1914, then moved to Paris. From 1939 to 1954 the house was closed. The choice of the reopening date, February 5, is not innocent. The number 5, her lucky number, is also the name of her favorite perfume \"Chanel n°5\"</p>','','<p>«Coco», le plus célèbre couturier du XXe siècle .</p>\n\n<p>Avec un sens aigu de l\'opportunité, un flair infaillible et du talent, ce phénomène de la mode a osé et inventé la silhouette de la femme d\'au jourd\'hui, lui faisant découvrir le confort du jersey, les cardigans, les pantalons, le tweed, l\'imperméable, le charme de la petite robe noire, les jupes courtes, le bronzage ou encore les bijoux fantaisie.</p>\n\n<p>Jeune provinciale ayant connu une enfance pauvre et triste, elle devint l\'une des femmes les plus en vue de Paris, fabuleusement riche, défrayant la chronique par ses audaces et ses liaisons retentissantes, amie et mécène d\'artis tes et d\'écrivains.</p>\n\n<p>Chanel ouvre une maison de mode en 1914 puis sa maison de couture en 1916 à Biarritz, avant de s\'installer à Paris, rue Cambon. De 1939 à 1954 la maison est fermée. Le choix de la date de réouverture, le 5 février, n\'est pas innocent. Le 5, son chiffre porte - bonheur, est aussi le nom de son parfum fétiche «Chanel n° 5» <br />\n </p>',''),(6013,'','','',''),(6014,'','','',''),(6015,'','','',''),(6016,'','','',''),(6008,'<p>Gucci was founded in 1921 by <a href=\"https://en.wikipedia.org/wiki/Guccio_Gucci\" title=\"Guccio Gucci\">Guccio Gucci</a> in Florence.</p>\n\n<p>Under the direction of his son  <a href=\"https://en.wikipedia.org/wiki/Aldo_Gucci\" title=\"Aldo Gucci\">Aldo Gucci</a>, the company became a worldwide-known brand, an icon of the Italian <em>Dolce Vita</em>.</p>\n\n<p>Following family feuds during the 1980s, the Gucci family was entirely ousted from the capital of the company by 1993. After this crisis, the brand was revived with a provocative \'Porno Chic\' props. In 1999, Gucci was acquired by the French conglomerate <a href=\"https://en.wikipedia.org/wiki/Pinault_Printemps_Redoute\" title=\"Pinault Printemps Redoute\">Pinault Printemps Redoute</a>.</p>\n\n<p>During the 2010s, Gucci became an iconic \'Geek-Chic\' brand.</p>','<p>В это время появляется современный логотип компании — переплетённые буквы <strong>GG</strong> (инициалы Гуччио Гуччи), шёлковый шарф <em>Flora</em>, который носила <a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B5%D0%B9%D1%81_%D0%9A%D0%B5%D0%BB%D0%BB%D0%B8\" title=\"Грейс Келли\">Грейс Келли</a>, и сумка с ручкой через плечо <em>Jackie O</em>, которую сделала знаменитой <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B5%D0%BD%D0%BD%D0%B5%D0%B4%D0%B8,_%D0%96%D0%B0%D0%BA%D0%BB%D0%B8%D0%BD\" title=\"Кеннеди, Жаклин\">Джеки Кеннеди</a>.</p>\n\n<p> </p>','',''),(6011,'','','','');
/*!40000 ALTER TABLE `field_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_br_url`
--

DROP TABLE IF EXISTS `field_br_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_br_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_br_url`
--

LOCK TABLES `field_br_url` WRITE;
/*!40000 ALTER TABLE `field_br_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_br_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_countries`
--

DROP TABLE IF EXISTS `field_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_countries` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_countries`
--

LOCK TABLES `field_countries` WRITE;
/*!40000 ALTER TABLE `field_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_country`
--

DROP TABLE IF EXISTS `field_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_country` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_country`
--

LOCK TABLES `field_country` WRITE;
/*!40000 ALTER TABLE `field_country` DISABLE KEYS */;
INSERT INTO `field_country` VALUES (5792,6003,0),(5793,6003,0),(5795,6003,0),(5798,6003,0),(5800,6003,0),(5802,6003,0),(5805,6003,0),(5812,6003,0),(5835,6003,0),(6006,6003,0),(6015,6003,0),(5794,6004,0),(5836,6007,0),(6008,6007,0),(5837,6009,0),(5801,6010,0),(5796,6012,0);
/*!40000 ALTER TABLE `field_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_artworks_featured`
--

DROP TABLE IF EXISTS `field_d_artworks_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_artworks_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_artworks_featured`
--

LOCK TABLES `field_d_artworks_featured` WRITE;
/*!40000 ALTER TABLE `field_d_artworks_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_d_artworks_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_av_duty`
--

DROP TABLE IF EXISTS `field_d_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_duty`
--

LOCK TABLES `field_d_av_duty` WRITE;
/*!40000 ALTER TABLE `field_d_av_duty` DISABLE KEYS */;
INSERT INTO `field_d_av_duty` VALUES (5959,1,0);
/*!40000 ALTER TABLE `field_d_av_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_av_firstname`
--

DROP TABLE IF EXISTS `field_d_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_firstname`
--

LOCK TABLES `field_d_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_d_av_firstname` DISABLE KEYS */;
INSERT INTO `field_d_av_firstname` VALUES (5959,'','Людмила','','');
/*!40000 ALTER TABLE `field_d_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_av_lastname`
--

DROP TABLE IF EXISTS `field_d_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_lastname`
--

LOCK TABLES `field_d_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_d_av_lastname` DISABLE KEYS */;
INSERT INTO `field_d_av_lastname` VALUES (5959,'','Верещагина','','');
/*!40000 ALTER TABLE `field_d_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_av_url`
--

DROP TABLE IF EXISTS `field_d_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_av_url`
--

LOCK TABLES `field_d_av_url` WRITE;
/*!40000 ALTER TABLE `field_d_av_url` DISABLE KEYS */;
INSERT INTO `field_d_av_url` VALUES (5959,'http://dymka.teploruk.ru/masters/vereshagina.html');
/*!40000 ALTER TABLE `field_d_av_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_aw_featured`
--

DROP TABLE IF EXISTS `field_d_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_featured`
--

LOCK TABLES `field_d_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_d_aw_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_d_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_d_aw_person`
--

DROP TABLE IF EXISTS `field_d_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_d_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_d_aw_person`
--

LOCK TABLES `field_d_aw_person` WRITE;
/*!40000 ALTER TABLE `field_d_aw_person` DISABLE KEYS */;
INSERT INTO `field_d_aw_person` VALUES (5961,5959,0);
/*!40000 ALTER TABLE `field_d_aw_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES (41,'iouri.belokopytov@gmail.com'),(5972,'margarita.belokopytova@gmail.com');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_artworks_featured`
--

DROP TABLE IF EXISTS `field_h_artworks_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_artworks_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_artworks_featured`
--

LOCK TABLES `field_h_artworks_featured` WRITE;
/*!40000 ALTER TABLE `field_h_artworks_featured` DISABLE KEYS */;
INSERT INTO `field_h_artworks_featured` VALUES (5789,5844,3),(5789,5847,0),(5789,5851,1),(5789,5976,2);
/*!40000 ALTER TABLE `field_h_artworks_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_av_date`
--

DROP TABLE IF EXISTS `field_h_av_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_av_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_date`
--

LOCK TABLES `field_h_av_date` WRITE;
/*!40000 ALTER TABLE `field_h_av_date` DISABLE KEYS */;
INSERT INTO `field_h_av_date` VALUES (5797,'1939 - 2002','','',''),(5798,'','','',''),(5799,'','','',''),(5800,'1934 - 2001','','',''),(5801,'','','',''),(5802,'','','',''),(5803,'','','',''),(5804,'','','',''),(5805,'','','',''),(5806,'','','',''),(5807,'','','',''),(5808,'','','',''),(5809,'','','',''),(5810,'','','',''),(5811,'','','',''),(5812,'','','',''),(5813,'','','',''),(5814,'','','',''),(5815,'','','',''),(5816,'','','',''),(5817,'','','',''),(5818,'','','',''),(5819,'','','',''),(5820,'','','',''),(5821,'','','',''),(5822,'','','',''),(5823,'','','',''),(5824,'','','',''),(5825,'','','Née 18 décembre 1871',''),(5826,'','','',''),(5967,'','','',''),(5968,'','','',''),(5973,'','','',''),(5996,'','','','');
/*!40000 ALTER TABLE `field_h_av_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_av_duty`
--

DROP TABLE IF EXISTS `field_h_av_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_av_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_duty`
--

LOCK TABLES `field_h_av_duty` WRITE;
/*!40000 ALTER TABLE `field_h_av_duty` DISABLE KEYS */;
INSERT INTO `field_h_av_duty` VALUES (5792,1,0),(5793,1,0),(5794,1,0),(5795,1,0),(5796,2,0),(5797,1,0),(5798,1,0),(5799,1,0),(5800,1,0),(5801,2,0),(5802,1,0),(5803,1,0),(5804,1,0),(5805,1,0),(5806,1,0),(5807,1,0),(5808,1,0),(5809,1,0),(5810,1,0),(5811,1,0),(5812,1,0),(5813,4,0),(5814,1,0),(5815,1,0),(5816,1,0),(5817,1,0),(5818,1,0),(5819,1,0),(5820,6,0),(5821,1,0),(5822,1,0),(5823,6,0),(5824,6,0),(5825,6,0),(5826,6,0),(5967,1,0),(5973,1,0),(5996,1,0),(5968,1,0),(5821,6,1),(5812,4,1);
/*!40000 ALTER TABLE `field_h_av_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_av_firstname`
--

DROP TABLE IF EXISTS `field_h_av_firstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_av_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_firstname`
--

LOCK TABLES `field_h_av_firstname` WRITE;
/*!40000 ALTER TABLE `field_h_av_firstname` DISABLE KEYS */;
INSERT INTO `field_h_av_firstname` VALUES (5792,'Christiane','Christiane','Christiane','Christiane'),(5793,'Cathy','Cathy','Cathy','Cathy'),(5794,'Evgenia','Евгения','Evgenia','Evgenia'),(5795,'Dimitri','Дмитрий','Dimitri','Dimitri'),(5796,'Aleksandr','Александр','Aleksandr','Aleksandr'),(5797,'Vladimir','Владимир','Vladimir','Vladimir'),(5798,'Hugo','Хьюго','Hugo','Hugo'),(5799,'Philippe','Филипп','Philippe','Philippe'),(5800,'Loïc','Loïc','Loïc','Loïc'),(5801,'Margo','Margo','Margo','Margo'),(5802,'Françoise','Françoise','Françoise','Françoise'),(5803,'Michel','Michel','Michel','Michel'),(5804,'Cyrille','Cyrille','Cyrille','Cyrille'),(5805,'Jean','Jean','Jean','Jean'),(5806,'Julia','Julia','Julia','Julia'),(5807,'Henri','Henri','Henri','Henri'),(5808,'Henri','Henri','Henri','Henri'),(5809,'Joachim','Joachim','Joachim','Joachim'),(5810,'Daphne','Daphne','Daphne','Daphne'),(5811,'Xavier','Xavier','Xavier','Xavier'),(5812,'Bali','Bali','Bali','Bali'),(5813,'Benoît-Pierre','Benoît-Pierre','Benoît-Pierre','Benoît-Pierre'),(5814,'Françoise','Françoise','Françoise','Françoise'),(5815,'Catherine','Catherine','Catherine','Catherine'),(5816,'Laurence','Laurence','Laurence','Laurence'),(5817,'Antoine','Antoine','Antoine','Antoine'),(5818,'Alice','Alice','Alice','Alice'),(5819,'Hubert','Hubert','Hubert','Hubert'),(5820,'Pierre-Alexis','Pierre-Alexis','Pierre-Alexis','Pierre-Alexis'),(5821,'Jean-Louis','Jean-Louis','Jean-Louis','Jean-Louis'),(5822,'Annie','Annie','Annie','Annie'),(5823,'Thierry','Thierry','Thierry','Thierry'),(5824,'Robert','Robert','Robert','Robert'),(5825,'Émile Maurice','Émile Maurice','Émile Maurice','Émile Maurice'),(5826,'Charles-Émile','Шарль-Эмиль','Charles-Émile','Charles-Émile'),(5967,'Marie-Françoise','','',''),(5968,'','','',''),(5973,'Robert','Robert','',''),(5996,'Florance','','','');
/*!40000 ALTER TABLE `field_h_av_firstname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_av_lastname`
--

DROP TABLE IF EXISTS `field_h_av_lastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_av_lastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_lastname`
--

LOCK TABLES `field_h_av_lastname` WRITE;
/*!40000 ALTER TABLE `field_h_av_lastname` DISABLE KEYS */;
INSERT INTO `field_h_av_lastname` VALUES (5792,'Vauzelles','Vauzelles','Vauzelles','Vauzelles'),(5793,'Latham-Audibert','Latham-Audibert','Latham-Audibert','Latham-Audibert'),(5794,'Miro (Miroshnichenko)','Мирошниченко (Miro)','Miro (Miroshnichenko)','Miro (Miroshnichenko)'),(5795,'Rybaltchenko','Рыбальченко','Rybaltchenko','Rybaltchenko'),(5796,'Zybin','Цыбин','Zybin','Zybin'),(5797,'Rybaltchenko','Рыбальченко','Rybaltchenko','Rybaltchenko'),(5798,'Grygkar','Григкар','Grygkar','Grygkar'),(5799,'Ledoux','Леду','Ledoux','Ledoux'),(5800,'Dubigeon','Dubigeon','Dubigeon','Dubigeon'),(5801,'','','',''),(5802,'de La Perrière','de La Perrière','de La Perrière','de La Perrière'),(5803,'Duchêne','Duchêne','Duchêne','Duchêne'),(5804,'Diatkine','Diatkine','Diatkine','Diatkine'),(5805,'de Fougerolle','de Fougerolle','de Fougerolle','de Fougerolle'),(5806,'Abadie','Abadie','Abadie','Abadie'),(5807,'d\'Origny','d\'Origny','d\'Origny','d\'Origny'),(5808,'de Linarès','de Linarès','de Linarès','de Linarès'),(5809,'Metz','Metz','Metz','Metz'),(5810,'Duchesne','Duchesne','Duchesne','Duchesne'),(5811,'de Poret','de Poret','de Poret','de Poret'),(5812,'Barret','Barret','Barret','Barret'),(5813,'Emery','Emery','Emery','Emery'),(5814,'Heron','Heron','Heron','Heron'),(5815,'Baschet','Baschet','Baschet','Baschet'),(5816,'Bourthoumieux','Bourthoumieux','Bourthoumieux','Bourthoumieux'),(5817,'de Jacquelot','de Jacquelot','de Jacquelot','de Jacquelot'),(5818,'Shirley','Shirley','Shirley','Shirley'),(5819,'de Watrigant','de Watrigant','de Watrigant','de Watrigant'),(5820,'Dumas','Dumas','Dumas','Dumas'),(5821,'Dumas','Dumas','Dumas','Dumas'),(5822,'Faivre','Faivre','Faivre','Faivre'),(5823,'Hermès','Hermès','Hermès','Hermès'),(5824,'Dumas','Dumas','Dumas','Dumas'),(5825,'Hermès','Hermès','Hermès','Hermès'),(5826,'Hermès','Hermès','Hermès','Hermès'),(5967,'Faconnet','','',''),(5968,'','','',''),(5973,'Dallet','','',''),(5996,'Manlik','','','');
/*!40000 ALTER TABLE `field_h_av_lastname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_av_url`
--

DROP TABLE IF EXISTS `field_h_av_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_av_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_av_url`
--

LOCK TABLES `field_h_av_url` WRITE;
/*!40000 ALTER TABLE `field_h_av_url` DISABLE KEYS */;
INSERT INTO `field_h_av_url` VALUES (5794,'http://evgeniamiro.com/'),(5800,'http://honesterotica.com/portfolios/550'),(5817,'http://www.le-mouciau.fr/site/antoine-de-jacquelot');
/*!40000 ALTER TABLE `field_h_av_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_base`
--

DROP TABLE IF EXISTS `field_h_aw_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_base` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_base`
--

LOCK TABLES `field_h_aw_base` WRITE;
/*!40000 ALTER TABLE `field_h_aw_base` DISABLE KEYS */;
INSERT INTO `field_h_aw_base` VALUES (5844,3,0),(5845,3,0),(5846,3,0),(5847,3,0),(5848,3,0),(5849,3,0),(5850,3,0),(5851,3,0),(5852,3,0),(5986,3,0),(5976,3,0);
/*!40000 ALTER TABLE `field_h_aw_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_brand`
--

DROP TABLE IF EXISTS `field_h_aw_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_brand` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_brand`
--

LOCK TABLES `field_h_aw_brand` WRITE;
/*!40000 ALTER TABLE `field_h_aw_brand` DISABLE KEYS */;
INSERT INTO `field_h_aw_brand` VALUES (5844,5835,0),(5845,5835,0),(5846,5835,0),(5847,5835,0),(5849,5835,0),(5850,5835,0),(5851,5835,0),(5852,5835,0),(5965,5835,0),(5966,5835,0),(5969,5835,0),(5971,5835,0),(5974,5835,0),(5975,5835,0),(5976,5835,0),(5977,5835,0),(5978,5835,0),(5979,5835,0),(5980,5835,0),(5981,5835,0),(5982,5835,0),(5984,5835,0),(5985,5835,0),(5986,5835,0),(5987,5835,0),(5988,5835,0),(5989,5835,0),(5990,5835,0),(5991,5835,0),(5992,5835,0),(5993,5835,0),(5994,5835,0),(5995,5835,0),(5997,5835,0),(5998,5835,0),(5999,5835,0),(6000,5835,0),(6001,5835,0),(6002,5835,0),(6005,5835,0),(6014,5836,0),(5848,5837,0),(6013,5840,0),(6016,6015,0);
/*!40000 ALTER TABLE `field_h_aw_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_collection`
--

DROP TABLE IF EXISTS `field_h_aw_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_collection` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_collection`
--

LOCK TABLES `field_h_aw_collection` WRITE;
/*!40000 ALTER TABLE `field_h_aw_collection` DISABLE KEYS */;
INSERT INTO `field_h_aw_collection` VALUES (5845,5842,0),(5846,5842,0),(5852,5842,0);
/*!40000 ALTER TABLE `field_h_aw_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_condition`
--

DROP TABLE IF EXISTS `field_h_aw_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_condition` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_condition`
--

LOCK TABLES `field_h_aw_condition` WRITE;
/*!40000 ALTER TABLE `field_h_aw_condition` DISABLE KEYS */;
INSERT INTO `field_h_aw_condition` VALUES (5844,'Brand new','Совершенно новый','Tout neuf','Helt ny'),(5845,'','','',''),(5846,'','','',''),(5847,'','','',''),(5848,'','','',''),(5849,'','','',''),(5850,'','','',''),(5851,'','','',''),(5852,'','','',''),(5965,'','','',''),(5966,'','','',''),(5969,'','','',''),(5971,'','','',''),(5974,'','','',''),(5975,'','','',''),(5976,'','','',''),(5977,'','','',''),(5978,'','','',''),(5979,'','','',''),(5980,'','','',''),(5981,'','','',''),(5982,'','','',''),(5984,'','','',''),(5985,'','','',''),(5986,'','','',''),(5987,'','','',''),(5988,'','','',''),(5989,'','','',''),(5990,'','','',''),(5991,'','','',''),(5992,'','','',''),(5993,'','','',''),(5994,'','','',''),(5995,'','','',''),(5997,'','','',''),(5998,'','','',''),(5999,'','','',''),(6000,'','','',''),(6001,'','','',''),(6002,'','','',''),(6005,'','','',''),(6013,'','','',''),(6014,'','','',''),(6016,'','','','');
/*!40000 ALTER TABLE `field_h_aw_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_featured`
--

DROP TABLE IF EXISTS `field_h_aw_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_featured` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_featured`
--

LOCK TABLES `field_h_aw_featured` WRITE;
/*!40000 ALTER TABLE `field_h_aw_featured` DISABLE KEYS */;
INSERT INTO `field_h_aw_featured` VALUES (5975,1);
/*!40000 ALTER TABLE `field_h_aw_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_more`
--

DROP TABLE IF EXISTS `field_h_aw_more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_more` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_more`
--

LOCK TABLES `field_h_aw_more` WRITE;
/*!40000 ALTER TABLE `field_h_aw_more` DISABLE KEYS */;
INSERT INTO `field_h_aw_more` VALUES (5850,'Hermès’s best-selling scarf of all time.','Самый продаваемый платок Hermès','Le carré Hermès le plus vendue','Hermès bästsäljande halsduk hela tiden'),(5851,'','','',''),(5852,'','','',''),(5965,'','','',''),(5966,'','','',''),(5969,'','','',''),(5971,'','','',''),(5974,'','','',''),(5975,'','','',''),(5976,'','','',''),(5977,'','','',''),(5978,'','','',''),(5979,'','','',''),(5980,'','','',''),(5981,'','','',''),(5982,'','','',''),(5984,'','','',''),(5985,'','','',''),(5986,'','','',''),(5987,'','','',''),(5988,'','','',''),(5989,'','','',''),(5990,'','','',''),(5991,'','','',''),(5992,'','','',''),(5993,'','','',''),(5994,'','','',''),(5995,'','','',''),(5997,'','','',''),(5998,'','','',''),(5999,'','','',''),(6000,'','','',''),(6001,'','','',''),(6002,'','','',''),(6005,'','','',''),(6013,'','','',''),(6014,'','','',''),(6016,'','','','');
/*!40000 ALTER TABLE `field_h_aw_more` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_person`
--

DROP TABLE IF EXISTS `field_h_aw_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_person`
--

LOCK TABLES `field_h_aw_person` WRITE;
/*!40000 ALTER TABLE `field_h_aw_person` DISABLE KEYS */;
INSERT INTO `field_h_aw_person` VALUES (5844,5792,0),(5984,5793,0),(5987,5793,0),(5988,5793,0),(5997,5793,0),(5845,5798,0),(5846,5798,0),(5850,5798,0),(5965,5798,0),(5978,5798,0),(5994,5798,0),(5966,5799,0),(5975,5799,0),(5999,5799,0),(5847,5800,0),(5849,5802,0),(5977,5802,0),(5989,5802,0),(5991,5802,0),(5993,5802,0),(5851,5803,0),(5969,5804,1),(5981,5805,0),(5982,5805,0),(5985,5806,0),(5980,5807,0),(5990,5807,0),(5998,5807,0),(6001,5807,0),(6002,5807,0),(6000,5808,0),(5971,5815,0),(5976,5816,0),(5979,5817,0),(5992,5819,0),(5852,5821,0),(5969,5967,0),(5986,5968,0),(5974,5973,0);
/*!40000 ALTER TABLE `field_h_aw_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_popularity`
--

DROP TABLE IF EXISTS `field_h_aw_popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_popularity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_popularity`
--

LOCK TABLES `field_h_aw_popularity` WRITE;
/*!40000 ALTER TABLE `field_h_aw_popularity` DISABLE KEYS */;
INSERT INTO `field_h_aw_popularity` VALUES (5844,4,0),(5850,2,0);
/*!40000 ALTER TABLE `field_h_aw_popularity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_possession`
--

DROP TABLE IF EXISTS `field_h_aw_possession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_possession` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_possession`
--

LOCK TABLES `field_h_aw_possession` WRITE;
/*!40000 ALTER TABLE `field_h_aw_possession` DISABLE KEYS */;
INSERT INTO `field_h_aw_possession` VALUES (5844,5854,0),(5847,5855,0),(5851,5856,0);
/*!40000 ALTER TABLE `field_h_aw_possession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_rarity`
--

DROP TABLE IF EXISTS `field_h_aw_rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_rarity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_rarity`
--

LOCK TABLES `field_h_aw_rarity` WRITE;
/*!40000 ALTER TABLE `field_h_aw_rarity` DISABLE KEYS */;
INSERT INTO `field_h_aw_rarity` VALUES (5850,6,0),(5974,6,0);
/*!40000 ALTER TABLE `field_h_aw_rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_size`
--

DROP TABLE IF EXISTS `field_h_aw_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_size`
--

LOCK TABLES `field_h_aw_size` WRITE;
/*!40000 ALTER TABLE `field_h_aw_size` DISABLE KEYS */;
INSERT INTO `field_h_aw_size` VALUES (5844,'90x90','','',''),(5845,'90x90','','',''),(5846,'70 X 70','','',''),(5847,'90x90','','',''),(5848,'','','',''),(5849,'90x90','','',''),(5850,'90x90','','',''),(5851,'90x90','','',''),(5852,'90x90','','',''),(5965,'','','',''),(5966,'','','',''),(5969,'','','',''),(5971,'','','',''),(5974,'','','',''),(5975,'','','',''),(5976,'90x90','','',''),(5977,'','','',''),(5978,'','','',''),(5979,'','','',''),(5980,'','','',''),(5981,'','','',''),(5982,'','','',''),(5984,'','','',''),(5985,'','','',''),(5986,'','','',''),(5987,'','','',''),(5988,'','','',''),(5989,'','','',''),(5990,'','','',''),(5991,'','','',''),(5992,'','','',''),(5993,'','','',''),(5994,'','','',''),(5995,'','','',''),(5997,'','','',''),(5998,'','','',''),(5999,'','','',''),(6000,'','','',''),(6001,'','','',''),(6002,'','','',''),(6005,'','','',''),(6013,'','','',''),(6014,'','','',''),(6016,'','','','');
/*!40000 ALTER TABLE `field_h_aw_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_url`
--

DROP TABLE IF EXISTS `field_h_aw_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_url`
--

LOCK TABLES `field_h_aw_url` WRITE;
/*!40000 ALTER TABLE `field_h_aw_url` DISABLE KEYS */;
INSERT INTO `field_h_aw_url` VALUES (5847,'https://www.bukowskis.com/sv/lots/1044067-hermes-scarf-les-folies-du-ciel');
/*!40000 ALTER TABLE `field_h_aw_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_aw_year`
--

DROP TABLE IF EXISTS `field_h_aw_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_aw_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_aw_year`
--

LOCK TABLES `field_h_aw_year` WRITE;
/*!40000 ALTER TABLE `field_h_aw_year` DISABLE KEYS */;
INSERT INTO `field_h_aw_year` VALUES (5845,'1938','','',''),(5846,'1936','','',''),(5847,'1984','','',''),(5848,'','','',''),(5849,'','','',''),(5850,'1957, It’s reissued CONSTANTLY.','1957 год, постоянно переиздается','1957, il est réédité en permanence','1957, det återbetalas ständigt'),(5851,'1992','','',''),(5852,'1998','','',''),(5965,'','','',''),(5966,'1970','','',''),(5969,'2012','','',''),(5971,'','','',''),(5974,'','','',''),(5975,'1960','','',''),(5976,'','','',''),(5977,'','1970','',''),(5978,'','','',''),(5979,'','1997','',''),(5980,'','','',''),(5981,'','1993','',''),(5982,'','1990','',''),(5984,'','1965','',''),(5985,'','','',''),(5986,'','1964','',''),(5987,'','1994','',''),(5988,'','1997','',''),(5989,'','1963','',''),(5990,'','','',''),(5991,'','1969','',''),(5992,'','','',''),(5993,'','1964','',''),(5994,'','1980','',''),(5995,'','','',''),(5997,'','1977','',''),(5998,'','','',''),(5999,'','1967','',''),(6000,'','','',''),(6001,'','','',''),(6002,'','','',''),(6005,'','','',''),(6013,'','','',''),(6014,'','','',''),(6016,'','','','');
/*!40000 ALTER TABLE `field_h_aw_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_br_duty`
--

DROP TABLE IF EXISTS `field_h_br_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_br_duty` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_br_duty`
--

LOCK TABLES `field_h_br_duty` WRITE;
/*!40000 ALTER TABLE `field_h_br_duty` DISABLE KEYS */;
INSERT INTO `field_h_br_duty` VALUES (5835,1,0),(5836,1,0),(5837,1,0),(5838,1,0),(5839,1,0),(5840,1,0),(5841,1,0),(6006,1,0),(6008,1,0),(6011,1,0),(6015,1,0);
/*!40000 ALTER TABLE `field_h_br_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_br_url`
--

DROP TABLE IF EXISTS `field_h_br_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_br_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_br_url`
--

LOCK TABLES `field_h_br_url` WRITE;
/*!40000 ALTER TABLE `field_h_br_url` DISABLE KEYS */;
INSERT INTO `field_h_br_url` VALUES (5835,'https://www.hermes.com/fr/fr/femme/le-carre-et-accessoires-en-soie/#||Catégorie'),(5836,'https://www.ferragamo.com/shop/fra/fr/femmes/Accessoires/foulards'),(5837,'http://www.tiffany.com/?siteid=1'),(5838,'https://us.vestiairecollective.com/women-accessories/scarves/nina-ricci/'),(5839,'http://www.baume-et-mercier.com/en/home.html');
/*!40000 ALTER TABLE `field_h_br_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_c_person`
--

DROP TABLE IF EXISTS `field_h_c_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_c_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_c_person`
--

LOCK TABLES `field_h_c_person` WRITE;
/*!40000 ALTER TABLE `field_h_c_person` DISABLE KEYS */;
INSERT INTO `field_h_c_person` VALUES (5842,5796,0);
/*!40000 ALTER TABLE `field_h_c_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_fs`
--

DROP TABLE IF EXISTS `field_h_fs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_fs` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_fs`
--

LOCK TABLES `field_h_fs` WRITE;
/*!40000 ALTER TABLE `field_h_fs` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_h_fs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_fs_end`
--

DROP TABLE IF EXISTS `field_h_fs_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_fs_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_fs_end`
--

LOCK TABLES `field_h_fs_end` WRITE;
/*!40000 ALTER TABLE `field_h_fs_end` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_h_fs_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_artwork`
--

DROP TABLE IF EXISTS `field_h_p_artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_artwork` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_artwork`
--

LOCK TABLES `field_h_p_artwork` WRITE;
/*!40000 ALTER TABLE `field_h_p_artwork` DISABLE KEYS */;
INSERT INTO `field_h_p_artwork` VALUES (5854,5844,0),(5855,5847,0),(5856,5851,0);
/*!40000 ALTER TABLE `field_h_p_artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_currency`
--

DROP TABLE IF EXISTS `field_h_p_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_currency` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_currency`
--

LOCK TABLES `field_h_p_currency` WRITE;
/*!40000 ALTER TABLE `field_h_p_currency` DISABLE KEYS */;
INSERT INTO `field_h_p_currency` VALUES (5854,1,0),(5855,1,0),(5856,1,0);
/*!40000 ALTER TABLE `field_h_p_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_date`
--

DROP TABLE IF EXISTS `field_h_p_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_date`
--

LOCK TABLES `field_h_p_date` WRITE;
/*!40000 ALTER TABLE `field_h_p_date` DISABLE KEYS */;
INSERT INTO `field_h_p_date` VALUES (5854,'2010-05-04 00:00:00'),(5855,'2018-04-28 00:00:00'),(5856,'2017-10-05 00:00:00');
/*!40000 ALTER TABLE `field_h_p_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_object_number`
--

DROP TABLE IF EXISTS `field_h_p_object_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_object_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_object_number`
--

LOCK TABLES `field_h_p_object_number` WRITE;
/*!40000 ALTER TABLE `field_h_p_object_number` DISABLE KEYS */;
INSERT INTO `field_h_p_object_number` VALUES (5855,1044067),(5856,486156);
/*!40000 ALTER TABLE `field_h_p_object_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_person`
--

DROP TABLE IF EXISTS `field_h_p_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_person` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_person`
--

LOCK TABLES `field_h_p_person` WRITE;
/*!40000 ALTER TABLE `field_h_p_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_h_p_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_price_final`
--

DROP TABLE IF EXISTS `field_h_p_price_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_price_final` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_price_final`
--

LOCK TABLES `field_h_p_price_final` WRITE;
/*!40000 ALTER TABLE `field_h_p_price_final` DISABLE KEYS */;
INSERT INTO `field_h_p_price_final` VALUES (5855,2300),(5856,2000);
/*!40000 ALTER TABLE `field_h_p_price_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_price_start`
--

DROP TABLE IF EXISTS `field_h_p_price_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_price_start` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_price_start`
--

LOCK TABLES `field_h_p_price_start` WRITE;
/*!40000 ALTER TABLE `field_h_p_price_start` DISABLE KEYS */;
INSERT INTO `field_h_p_price_start` VALUES (5855,2000),(5856,1500);
/*!40000 ALTER TABLE `field_h_p_price_start` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_p_seller`
--

DROP TABLE IF EXISTS `field_h_p_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_p_seller` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_p_seller`
--

LOCK TABLES `field_h_p_seller` WRITE;
/*!40000 ALTER TABLE `field_h_p_seller` DISABLE KEYS */;
INSERT INTO `field_h_p_seller` VALUES (5854,5828,0),(5855,5830,0),(5856,5832,0);
/*!40000 ALTER TABLE `field_h_p_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_s_address`
--

DROP TABLE IF EXISTS `field_h_s_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_s_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_s_address`
--

LOCK TABLES `field_h_s_address` WRITE;
/*!40000 ALTER TABLE `field_h_s_address` DISABLE KEYS */;
INSERT INTO `field_h_s_address` VALUES (5829,'','Genève','',''),(5830,'Stockholm','Стокгольм','Stockholm','Stockholm'),(5831,'','','',''),(5832,'','','',''),(5833,'','','','');
/*!40000 ALTER TABLE `field_h_s_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_h_s_url`
--

DROP TABLE IF EXISTS `field_h_s_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_h_s_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_h_s_url`
--

LOCK TABLES `field_h_s_url` WRITE;
/*!40000 ALTER TABLE `field_h_s_url` DISABLE KEYS */;
INSERT INTO `field_h_s_url` VALUES (5830,'https://www.bukowskis.com/');
/*!40000 ALTER TABLE `field_h_s_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_images`
--

DROP TABLE IF EXISTS `field_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_images`
--

LOCK TABLES `field_images` WRITE;
/*!40000 ALTER TABLE `field_images` DISABLE KEYS */;
INSERT INTO `field_images` VALUES (1,'hl.jpg',1,'[\"\"]','2020-07-20 11:49:11','2020-07-20 11:49:11',''),(5762,'les_folies_du_ciel_000229.jpg',0,'{\"0\":\"Le\",\"5753\":\"Монгольфьеры\",\"5754\":\"Les folies....\"}','2020-06-12 17:50:51','2020-06-12 17:50:51',''),(5763,'grand_cortege_a_moscou_000300.jpeg',0,'[\"Grand cortege a Moscou\"]','2020-06-12 18:10:07','2020-06-12 18:10:07',''),(5759,'img_1049.jpeg',0,'[\"\"]','2020-06-12 08:45:01','2020-06-12 08:45:01',''),(5769,'hermes.png',0,'[\"\"]','2020-06-15 08:26:52','2020-06-15 08:26:52',''),(5770,'salvatore-ferragamo-vector-logo.png',0,'[\"\"]','2020-06-15 08:40:54','2020-06-15 08:40:54',''),(5771,'tiffany.png',0,'[\"\"]','2020-06-15 08:45:12','2020-06-15 08:45:12',''),(5772,'christian_dior.png',0,'[\"\"]','2020-06-15 08:49:11','2020-06-15 08:49:11',''),(5773,'nr.png',0,'[\"\"]','2020-06-15 15:52:54','2020-06-15 15:52:54',''),(5774,'lanvin.png',0,'[\"\"]','2020-06-15 15:54:53','2020-06-15 15:54:53',''),(5775,'baume_a_mercier.png',0,'[\"\"]','2020-06-15 15:57:52','2020-06-15 15:57:52',''),(5776,'bali_barret.jpg',0,'[\"\"]','2020-06-15 17:59:20','2020-06-15 17:59:20',''),(5777,'jean-louis_dumas.jpg',0,'[\"\"]','2020-06-15 18:03:11','2020-06-15 18:03:11',''),(5778,'pierre-alexis_dumas.png',0,'[\"\"]','2020-06-15 18:04:44','2020-06-15 18:04:44',''),(5779,'antoine_de_jacquelot.jpg',0,'[\"\"]','2020-06-15 18:05:45','2020-06-15 18:05:45',''),(5780,'vladimir_rybalchenko.jpg',0,'[\"\"]','2020-06-15 18:07:57','2020-06-15 18:07:57',''),(5781,'evgeniia_miroshnichenko_miro.jpg',0,'[\"\"]','2020-06-15 18:09:30','2020-06-15 18:09:30',''),(5782,'margo.jpeg',0,'[\"\"]','2020-06-15 18:43:30','2020-06-15 18:43:30',''),(5783,'xavier_de_poret.jpg',0,'[\"\"]','2020-06-15 18:59:12','2020-06-15 18:59:12',''),(5784,'cathy_latham-audibert.jpg',0,'[\"\"]','2020-06-16 08:01:49','2020-06-16 08:01:49',''),(1,'artworks.jpg',0,'{\"0\":\"English text\",\"5753\":\"Русский техт\",\"5754\":\"Same in French\",\"5755\":\"Same in Swedish\"}','2020-06-12 16:13:38','2017-02-11 08:29:07',''),(1,'hl-1.jpg',2,'[\"\"]','2020-07-20 11:54:24','2020-07-20 11:54:24',''),(5789,'v.jpg',2,'[\"\"]','2020-10-21 18:13:33','2020-10-21 18:13:33',''),(5857,'a_spot-3.jpg',2,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11',''),(5792,'christiane_vauzelles.jpg',0,'[\"\"]','2020-09-13 15:20:42','2020-09-13 15:20:42',''),(5793,'cathy_latham-audibert.jpg',0,'[\"\"]','2020-09-13 15:20:42','2020-09-13 15:20:42',''),(5794,'evgeniia_miroshnichenko_miro.jpg',0,'[\"\"]','2020-09-13 15:20:43','2020-09-13 15:20:43',''),(5795,'dimitri_rybaltchenko.jpg',0,'[\"\"]','2020-09-13 15:20:43','2020-09-13 15:20:43',''),(5796,'aleksandr_tcybin.png',0,'[\"\"]','2020-09-13 15:20:44','2020-09-13 15:20:44',''),(5797,'vladimir_rybalchenko.jpg',0,'[\"\"]','2020-09-13 15:20:44','2020-09-13 15:20:44',''),(5798,'hugo_grygkar.png',0,'[\"\"]','2020-09-13 15:20:45','2020-09-13 15:20:45',''),(5799,'philippe_ledoux.png',0,'[\"\"]','2020-09-13 15:20:45','2020-09-13 15:20:45',''),(5800,'loic_dubigeon.jpg',0,'[\"\"]','2020-09-13 15:20:46','2020-09-13 15:20:46',''),(5801,'margo__.jpeg',0,'[\"\"]','2020-09-13 15:20:46','2020-09-13 15:20:46',''),(5802,'_png.png',0,'[\"\"]','2020-09-13 15:20:46','2020-09-13 15:20:46',''),(5803,'michel_duchene.jpg',0,'[\"\"]','2020-09-13 15:20:47','2020-09-13 15:20:47',''),(5804,'cyrille_diatkine.png',0,'[\"\"]','2020-09-13 15:20:47','2020-09-13 15:20:47',''),(5805,'jean_de_fougerolle.jpg',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48',''),(5806,'julia_abadie.png',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48',''),(5807,'henri_dorigny.jpg',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48',''),(5808,'henri_de_linares.png',0,'[\"\"]','2020-09-13 15:20:48','2020-09-13 15:20:48',''),(5809,'joachim_metz.jpg',0,'[\"\"]','2020-09-13 15:20:49','2020-09-13 15:20:49',''),(5810,'daphne_duchesne.jpg',0,'[\"\"]','2020-09-13 15:20:49','2020-09-13 15:20:49',''),(5812,'bali_barret.jpg',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50',''),(5813,'benoit_pierre_emery.png',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50',''),(5814,'francoise_heron.jpg',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51',''),(5815,'catherine_baschet.jpg',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51',''),(5816,'laurence_bourthoumieux.png',0,'[\"\"]','2020-09-13 15:20:51','2020-09-13 15:20:51',''),(5817,'antoine_de_jacquelot.jpg',0,'[\"\"]','2020-09-13 15:20:52','2020-09-13 15:20:52',''),(5818,'alice_shirley.jpg',0,'[\"\"]','2020-09-13 15:20:52','2020-09-13 15:20:52',''),(5819,'hubert_de_watrigant.png',0,'[\"\"]','2020-09-13 15:20:52','2020-09-13 15:20:52',''),(5820,'pierre-alexis_dumas.png',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53',''),(5821,'jean-louis_dumas.jpg',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53',''),(5822,'annie_faivre.jpg',0,'[\"\"]','2020-09-13 15:20:53','2020-09-13 15:20:53',''),(5823,'thierry_hermes.png',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54',''),(5824,'robert_dumas.jpg',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54',''),(5825,'emile_maurice_hermes.jpg',0,'[\"\"]','2020-09-13 15:20:54','2020-09-13 15:20:54',''),(5826,'charles-emile_hermes.png',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55',''),(5828,'gifts.jpg',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55',''),(5829,'marche_de_plainpalais.jpg',0,'[\"\"]','2020-09-13 15:20:55','2020-09-13 15:20:55',''),(5830,'bukowskis.gif',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56',''),(5831,'myrorna.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56',''),(5832,'stockholms_auktionsverk.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56',''),(5833,'stockholms_stadsmission.png',0,'[\"\"]','2020-09-13 15:20:56','2020-09-13 15:20:56',''),(5835,'hermes.png',0,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57',''),(5836,'salvatore-ferragamo_102-profile.jpg',2,'[\"\"]','2020-09-23 19:54:19','2020-09-23 19:54:19',''),(5837,'tiffany.png',0,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57',''),(5838,'nina_ricci.png',0,'[\"\"]','2020-09-13 15:20:58','2020-09-13 15:20:58',''),(5839,'paul_mercier_william_baume.jpg',1,'[\"\"]','2020-09-23 19:39:05','2020-09-23 19:39:05',''),(5840,'520px-dufau_portrait_de_jeanne_lanvin.jpg',1,'[\"\"]','2020-10-02 16:37:04','2020-10-02 16:37:04',''),(5841,'christian_dior.png',0,'[\"\"]','2020-09-13 15:20:58','2020-09-13 15:20:58',''),(5842,'kollektciia_tcybinykh.jpg',0,'[\"\"]','2020-09-13 15:20:59','2020-09-13 15:20:59',''),(5844,'2edda09d-30e2-4383-a03d-e91d8c2d962a_1_201_a.jpeg',0,'[\"\"]','2020-09-14 19:36:51','2020-09-14 19:36:51',''),(5845,'astrologicheskii_atlas_zvezdnogo_neba_000201.jpg',0,'[\"\"]','2020-09-13 15:21:00','2020-09-13 15:21:00',''),(5846,'jeu_de_omnibus_et_dameblanche_000204.jpg',0,'[\"\"]','2020-09-13 15:21:00','2020-09-13 15:21:00',''),(5847,'les_folies_du_ciel_000230.jpg',1,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01',''),(5847,'les_folies_du_ciel_000229.jpg',0,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01',''),(5847,'les_folies_du_ciel_000231.jpg',2,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01',''),(5848,'art_object_000275.jpg',0,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01',''),(5848,'nazvanie_000273.jpg',1,'[\"\"]','2020-09-13 15:21:01','2020-09-13 15:21:01',''),(6005,'b4a1bc6a-be2a-4201-92ed-d4f0c33b6057.jpeg',0,'[null]','2020-09-18 17:54:55','2020-09-18 17:54:55',''),(5852,'art_object_002287.jpg',0,'[\"\"]','2020-09-13 15:21:03','2020-09-13 15:21:03',''),(5859,'rembrandt_.jpg',0,'[\"\"]','2020-09-13 15:21:09','2020-09-13 15:21:09',''),(5863,'jan_van_eyck.jpg',0,'[\"\"]','2020-09-13 15:21:10','2020-09-13 15:21:10',''),(5862,'gollandskaia_shkola.jpg',0,'[\"\"]','2020-09-13 15:21:10','2020-09-13 15:21:10',''),(5866,'valentin_de_boulogne.jpg',0,'[\"\"]','2020-09-13 15:21:11','2020-09-13 15:21:11',''),(5865,'flemish_school.jpg',0,'[\"\"]','2020-09-13 15:21:11','2020-09-13 15:21:11',''),(5867,'',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12',''),(5868,'raffaele_frigerio.jpg',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12',''),(5869,'viacheslav.jpg',0,'[\"\"]','2020-09-13 15:21:12','2020-09-13 15:21:12',''),(5875,'abrakham_stork.jpg',0,'[\"\"]','2020-09-13 15:21:15','2020-09-13 15:21:15',''),(5871,'christer_edwardson_schmiterlow.jpg',0,'[\"\"]','2020-09-13 15:21:13','2020-09-13 15:21:13',''),(5872,'a__collomb.jpg',0,'[\"\"]','2020-09-13 15:21:13','2020-09-13 15:21:13',''),(5873,'l__vilardi.jpg',0,'[\"\"]','2020-09-13 15:21:14','2020-09-13 15:21:14',''),(5874,'salomon_de_koninck.jpg',0,'[\"\"]','2020-09-13 15:21:14','2020-09-13 15:21:14',''),(5877,'peter_joseph_minjon.jpg',0,'[\"\"]','2020-09-13 15:21:16','2020-09-13 15:21:16',''),(5878,'robert_falk.png',0,'[\"\"]','2020-09-13 15:21:16','2020-09-13 15:21:16',''),(5879,'basil_samoilov.png',0,'[\"\"]','2020-09-13 15:21:16','2020-09-13 15:21:16',''),(5880,'andries_vermeulen.png',0,'[\"\"]','2020-09-13 15:21:17','2020-09-13 15:21:17',''),(5882,'haik_mhitaryan.png',0,'[\"\"]','2020-09-13 15:21:18','2020-09-13 15:21:18',''),(5883,'abraham_teniers.png',0,'[\"\"]','2020-09-13 15:21:18','2020-09-13 15:21:18',''),(5885,'david_teniers_the_younger.png',0,'[\"\"]','2020-09-13 15:21:19','2020-09-13 15:21:19',''),(5887,'',0,'[\"\"]','2020-09-13 15:21:20','2020-09-13 15:21:20',''),(5892,'marcel_genay.jpg',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22',''),(5889,'unknown_dutch_artist.png',0,'[\"\"]','2020-09-13 15:21:20','2020-09-13 15:21:20',''),(5891,'unknown_flemish_artist.png',0,'[\"\"]','2020-09-13 15:21:21','2020-09-13 15:21:21',''),(5894,'bukowski_auktioner.png',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22',''),(5895,'metropol_auktioner.png',0,'[\"\"]','2020-09-13 15:21:22','2020-09-13 15:21:22',''),(5896,'own.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23',''),(5897,'uppsala_auktionskammare.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23',''),(5898,'stockholms_auktionsverk.png',0,'[\"\"]','2020-09-13 15:21:23','2020-09-13 15:21:23',''),(5900,'gemaldegalerie_alte_meister.jpg',0,'[\"\"]','1970-01-01 01:00:00','1970-01-01 01:00:00',''),(5901,'unknown_collection.jpg',0,'[\"\"]','2020-09-13 15:21:24','2020-09-13 15:21:24',''),(5902,'',0,'[\"\"]','2020-09-13 15:21:24','2020-09-13 15:21:24',''),(5903,'',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25',''),(5904,'louvre.jpg',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25',''),(5905,'lost_auctions.jpg',0,'[\"\"]','2020-09-13 15:21:25','2020-09-13 15:21:25',''),(5907,'card-sharpers_002922.jpg',1,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5907,'000022.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5907,'card-sharpers_002934.jpg',2,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5908,'000025.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5909,'italian_portrait_of_the_man_002915.jpg',2,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5909,'italian_portrait_of_the_man_002914.jpg',1,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5909,'italian_portrait_of_the_man_002913.jpg',0,'[\"\"]','2020-09-13 15:21:26','2020-09-13 15:21:26',''),(5909,'italian_portrait_of_the_man_002916.jpg',3,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002920.jpg',1,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002921.jpg',2,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002922.jpg',3,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002932.jpg',4,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002919.jpg',0,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5910,'card-sharpers_002933.jpg',5,'[\"\"]','2020-09-13 15:21:27','2020-09-13 15:21:27',''),(5911,'000042.jpg',1,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5911,'000041.jpg',0,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5911,'000043.jpg',2,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5911,'000044.jpg',3,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5912,'000050.jpg',1,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5912,'000049.jpg',0,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5912,'in_the_sea_1_002289.png',2,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5912,'in_the_sea_1_002290.png',3,'[\"\"]','2020-09-13 15:21:28','2020-09-13 15:21:28',''),(5913,'000060.jpg',1,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5913,'000059.jpg',0,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5913,'000094.jpg',2,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5913,'depo.jpg',3,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5914,'musician_and_gamblers_002941.jpg',2,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5914,'musician_and_gamblers_002940.jpg',1,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5914,'musician_and_gamblers_002939.jpg',0,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5914,'musician_and_gamblers_002955.jpg',3,'[\"\"]','2020-09-13 15:21:29','2020-09-13 15:21:29',''),(5915,'a_boor_playing_a_lute_002952.jpg',0,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30',''),(5915,'a_boor_playing_a_lute_in_an_002954.jpg',1,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30',''),(5916,'puteshestvie_v_iaponiiu_000145.jpg',1,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30',''),(5916,'depo.jpg',0,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30',''),(5916,'puteshestvie_v_iaponiiu_000146.jpg',2,'[\"\"]','2020-09-13 15:21:30','2020-09-13 15:21:30',''),(5917,'juuls_bastion_000141.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31',''),(5918,'000114.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31',''),(5919,'000128.jpg',0,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31',''),(5919,'000129.jpg',1,'[\"\"]','2020-09-13 15:21:31','2020-09-13 15:21:31',''),(5920,'000134.jpg',1,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32',''),(5920,'000133.jpg',0,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32',''),(5920,'000135.jpg',2,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32',''),(5921,'butterfly_000150.png',0,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32',''),(5921,'butterfly_000151.jpg',1,'[\"\"]','2020-09-13 15:21:32','2020-09-13 15:21:32',''),(5922,'the_philosopher_in_meditation_000154.jpg',0,'[\"\"]','2020-09-13 15:21:33','2020-09-13 15:21:33',''),(5923,'philosopher_with_an_open_book_002936.jpg',1,'[\"\"]','2020-09-13 15:21:33','2020-09-13 15:21:33',''),(5923,'philosopher_with_an_open_book_002935.jpg',0,'[\"\"]','2020-09-13 15:21:33','2020-09-13 15:21:33',''),(5923,'filosof_s_otkrytoi_knigoi_000232.jpg',2,'[\"\"]','2020-09-13 15:21:33','2020-09-13 15:21:33',''),(5924,'philosopher_with_open_book_000161.jpg',1,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5924,'philosopher_with_open_book_000162.jpg',2,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5924,'philosopher_with_an_open_book_002937.jpg',0,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5924,'philosopher_with_open_book_000163.jpg',3,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5925,'pastoralnyi_peizazh_000194.jpg',2,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5925,'pastoralnyi_peizazh_000193.jpg',1,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5925,'pastoralt_landskap_000191.jpg',0,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5925,'pastoralnyi_peizazh_000195.jpg',3,'[\"\"]','2020-09-13 15:21:34','2020-09-13 15:21:34',''),(5926,'abraham_storck_000208.jpg',0,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35',''),(5926,'abraham_storck_000209.jpg',1,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35',''),(5927,'winter_000237.jpg',0,'[\"\"]','2020-09-13 15:21:35','2020-09-13 15:21:35',''),(5928,'summer_000240.jpg',0,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36',''),(5929,'v_kabake_000267.jpg',0,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36',''),(5929,'v_kabake_000270.jpg',1,'[\"\"]','2020-09-13 15:21:36','2020-09-13 15:21:36',''),(5930,'flemish_school.jpg',0,'[\"\"]','2020-09-13 15:21:37','2020-09-13 15:21:37',''),(5931,'paris_000279.jpg',0,'[\"\"]','2020-09-13 15:21:37','2020-09-13 15:21:37',''),(5932,'vodka_002943.jpg',1,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5932,'vodka_002942.jpg',0,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5932,'vodka_002944.jpg',2,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5933,'winter_002161.jpg',1,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5933,'winter_002160.jpg',0,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5933,'winter_scene_000296.jpg',2,'[\"\"]','2020-09-13 15:21:38','2020-09-13 15:21:38',''),(5934,'__001774.png',0,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39',''),(5935,'in_the_sea_2_002295.jpg',2,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39',''),(5935,'in_the_sea_2_002294.png',1,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39',''),(5935,'in_the_sea_2_002293.jpg',0,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39',''),(5935,'in_the_sea_2_002296.png',3,'[\"\"]','2020-09-13 15:21:39','2020-09-13 15:21:39',''),(5936,'cats_002304.jpg',1,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5936,'cats_002302.jpg',0,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5936,'cats_002305.jpg',2,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002928.jpg',6,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41',''),(5937,'the_backgammon_players_002927.jpg',5,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002926.jpg',4,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002925.jpg',3,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002922.jpg',1,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002923.jpg',2,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'backgammonspelarna_002311.jpg',0,'[\"\"]','2020-09-13 15:21:40','2020-09-13 15:21:40',''),(5937,'the_backgammon_players_002929.jpg',7,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41',''),(5937,'the_backgammon_players_002930.jpg',8,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41',''),(5938,'the_tric-trac_players_002315.jpg',0,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41',''),(5938,'the_tric-trac_players_002931.jpg',1,'[\"\"]','2020-09-13 15:21:41','2020-09-13 15:21:41',''),(5939,'party_002948.jpg',1,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42',''),(5939,'party_002947.jpg',0,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42',''),(5939,'party_002949.jpg',2,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42',''),(5940,'a_boor_playing_a_lute_002952.jpg',0,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42',''),(5940,'a_boor_playing_a_lute_in_an_002954.jpg',1,'[\"\"]','2020-09-13 15:21:42','2020-09-13 15:21:42',''),(5959,'liudmila_vereshchagina.jpg',0,'[\"\"]','2020-09-13 15:21:51','2020-09-13 15:21:51',''),(5961,'shchuka_002867.png',0,'[\"\"]','2020-09-13 15:21:52','2020-09-13 15:21:52',''),(5961,'shchuka_002868.png',1,'[\"\"]','2020-09-13 15:21:52','2020-09-13 15:21:52',''),(5976,'6c921b097ed48c6803559ed34a819641.jpg',0,'[null]','2020-09-14 10:19:08','2020-09-14 10:19:08',''),(5811,'xavier_de_poret.jpg',0,'[\"\"]','2020-09-13 15:20:50','2020-09-13 15:20:50',''),(5811,'s-l1600.jpg',1,'[\"\"]','2020-09-14 11:39:10','2020-09-14 11:39:10',''),(5844,'25f21a31-5527-41a0-a805-d9cac3042a63_1_105_c.jpeg',1,'[\"\"]','2020-09-14 19:36:18','2020-09-14 19:36:18',''),(5851,'hermes_silk_scarf-36_1800x1800.jpg',0,'[\"\"]','2020-09-16 16:08:43','2020-09-16 16:08:43',''),(6006,'gabrielle_chanel_en_mariniere.jpg',1,'[\"\"]','2020-09-23 19:08:49','2020-09-23 19:08:49',''),(6005,'b4a1bc6a-be2a-4201-92ed-d4f0c33b6057-1.jpeg',1,'[\"\"]','2020-09-19 07:25:47','2020-09-19 07:25:47',''),(6006,'coco-chanellogo-suzanne-corbett.jpg',0,'[\"\"]','2020-09-23 19:08:49','2020-09-23 19:08:49',''),(5839,'baume-mercier-logo-2.jpg',0,'[\"\"]','2020-09-23 19:33:02','2020-09-23 19:33:02',''),(5836,'salvatore_ferrogamo.png',1,'[\"\"]','2020-09-13 15:20:57','2020-09-13 15:20:57',''),(5836,'images.png',0,'[\"\"]','2020-09-28 18:48:46','2020-09-28 18:48:46',''),(6008,'guccio_gucci_c_1940.jpg',1,'[\"\"]','2020-09-28 19:19:20','2020-09-28 19:19:20',''),(6008,'gucci-logo-98-prar-kulasekara.jpg',0,'[\"\"]','2020-09-28 19:20:30','2020-09-28 19:20:30',''),(5840,'lanvin.png',0,'[\"\"]','2020-09-13 15:20:58','2020-09-13 15:20:58',''),(6011,'kenzotakada2_1.jpg',1,'[\"\"]','2020-10-11 17:43:37','2020-10-11 17:43:37',''),(6011,'93047.jpg',0,'[\"\"]','2020-10-11 17:43:37','2020-10-11 17:43:37',''),(5789,'h_spot-2.jpg',0,'[\"\"]','2020-09-13 15:20:37','2020-09-13 15:20:37',''),(5789,'eb.jpg',1,'[\"\"]','2020-10-11 23:41:44','2020-10-11 23:41:44',''),(5957,'d_spot-2.jpg',1,'[\"\"]','2020-10-19 11:40:24','2020-10-19 11:40:24',''),(5957,'d.jpg',0,'[\"\"]','2020-10-08 09:21:26','2020-10-08 09:21:26',''),(5857,'a_spot-2.jpg',1,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11',''),(5857,'a_spot-1.jpg',0,'[\"\"]','2020-10-19 11:43:11','2020-10-19 11:43:11',''),(6013,'2017-06-15_17_36_08.jpg',0,'[\"\"]','2020-11-01 17:02:51','2020-11-01 17:02:51',''),(6014,'2018-05-28_15_49_06.jpg',0,'[\"\"]','2020-11-01 17:05:26','2020-11-01 17:05:26',''),(6015,'untitled_3.jpg',1,'[\"\"]','2020-11-01 17:35:22','2020-11-01 17:35:22',''),(6015,'ysl.jpg',0,'[\"\"]','2020-11-01 17:25:46','2020-11-01 17:25:46',''),(6016,'2015-08-29_16_19_32.jpg',0,'[\"\"]','2020-11-01 17:46:07','2020-11-01 17:46:07',''),(5966,'2018-05-28_15_21_42.jpg',0,'[\"\"]','2020-11-01 19:27:23','2020-11-01 19:27:23','');
/*!40000 ALTER TABLE `field_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language`
--

DROP TABLE IF EXISTS `field_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language`
--

LOCK TABLES `field_language` WRITE;
/*!40000 ALTER TABLE `field_language` DISABLE KEYS */;
INSERT INTO `field_language` VALUES (40,5751,0),(41,5751,0),(5972,5753,0);
/*!40000 ALTER TABLE `field_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language_files`
--

DROP TABLE IF EXISTS `field_language_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files`
--

LOCK TABLES `field_language_files` WRITE;
/*!40000 ALTER TABLE `field_language_files` DISABLE KEYS */;
INSERT INTO `field_language_files` VALUES (5753,'wire--modules--process--processtemplate--processtemplate-module.json',65,'[\"\"]','2020-06-19 15:42:50','2020-06-19 15:42:50',''),(5753,'wire--modules--process--processuser--processuser-module.json',64,'[\"\"]','2020-06-19 15:42:50','2020-06-19 15:42:50',''),(5753,'wire--modules--process--processrole--processrole-module.json',63,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--process--processmodule--processmodule-module.json',55,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processpagesearch--processpagesearch-module.json',56,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processpagesort-module.json',57,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processpagetrash-module.json',58,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processpagetype--processpagetype-module.json',59,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processpermission--processpermission-module.json',60,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--process--processprofile--processprofile-module.json',61,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--process--processpageview-module.json',62,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--process--processpagelist--processpagelist-module.json',54,'[\"\"]','2020-06-19 15:42:48','2020-06-19 15:42:48',''),(5753,'wire--modules--process--processfield--processfield-module.json',47,'[\"\"]','2020-06-19 15:42:46','2020-06-19 15:42:46',''),(5753,'wire--modules--process--processhome-module.json',48,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processpageadd--processpageadd-module.json',49,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processpageeditlink--processpageeditlink-module.json',50,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json',51,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processpageedit--processpageedit-module.json',53,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processpageclone-module.json',52,'[\"\"]','2020-06-19 15:42:47','2020-06-19 15:42:47',''),(5753,'wire--modules--process--processforgotpassword-module.json',46,'[\"\"]','2020-06-19 15:42:46','2020-06-19 15:42:46',''),(5753,'wire--modules--process--processlogin--processlogin-module.json',45,'[\"\"]','2020-06-19 15:42:46','2020-06-19 15:42:46',''),(5753,'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json',44,'[\"\"]','2020-06-19 15:42:46','2020-06-19 15:42:46',''),(5753,'wire--modules--inputfield--inputfieldtextarea-module.json',43,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--inputfield--inputfieldurl-module.json',42,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--inputfield--inputfieldtext-module.json',41,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json',40,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldradios-module.json',39,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldselectmultiple-module.json',38,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json',37,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldpassword-module.json',36,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json',35,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json',34,'[\"\"]','2020-06-19 15:42:44','2020-06-19 15:42:44',''),(5753,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json',31,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json',33,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json',32,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json',30,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldname-module.json',29,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldinteger-module.json',28,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldmarkup-module.json',27,'[\"\"]','2020-06-19 15:42:43','2020-06-19 15:42:43',''),(5753,'wire--modules--inputfield--inputfieldhidden-module.json',26,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json',25,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldfieldset-module.json',21,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldfloat-module.json',22,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldform-module.json',23,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json',24,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldemail-module.json',20,'[\"\"]','2020-06-19 15:42:42','2020-06-19 15:42:42',''),(5753,'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json',19,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--modules--inputfield--inputfieldbutton-module.json',18,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--modules--inputfield--inputfieldcheckbox-module.json',17,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json',16,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json',15,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json',14,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--modules--fieldtype--fieldtypefloat-module.json',13,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--core--inputfieldwrapper-php.json',12,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--templates-admin--default-php.json',11,'[\"\"]','2020-06-19 15:42:50','2020-06-19 15:42:50',''),(5753,'wire--modules--system--systemupdater--systemupdater-module.json',10,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--textformatter--textformatterentities-module.json',9,'[\"\"]','2020-06-19 15:42:49','2020-06-19 15:42:49',''),(5753,'wire--modules--process--processlist-module.json',8,'[\"\"]','2020-06-19 15:42:46','2020-06-19 15:42:46',''),(5753,'wire--modules--languagesupport--languagesupport-module.json',7,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--pagerender-module.json',6,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json',5,'[\"\"]','2020-06-19 15:42:45','2020-06-19 15:42:45',''),(5753,'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json',4,'[\"\"]','2020-06-19 15:42:41','2020-06-19 15:42:41',''),(5753,'wire--core--fieldtype-php.json',3,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--core--inputfield-php.json',2,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--modules--fieldtype--fieldtypecomments--commentform-php.json',1,'[\"\"]','2020-06-19 15:42:40','2020-06-19 15:42:40',''),(5753,'wire--core--sessioncsrf-php.json',0,'[\"\"]','2020-06-19 15:42:39','2020-06-19 15:42:39','');
/*!40000 ALTER TABLE `field_language_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language_files_site`
--

DROP TABLE IF EXISTS `field_language_files_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files_site`
--

LOCK TABLES `field_language_files_site` WRITE;
/*!40000 ALTER TABLE `field_language_files_site` DISABLE KEYS */;
INSERT INTO `field_language_files_site` VALUES (5753,'site--templates--includes--search_form_short-php.json',24,'[\"\"]','2020-09-18 10:01:15','2020-09-18 10:01:15',''),(5753,'site--templates--d_persons-php.json',21,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52',''),(5753,'site--templates--d_search-php.json',22,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52',''),(5753,'site--templates--d_spot-php.json',23,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52',''),(5753,'site--templates--d_artworks-php.json',19,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52',''),(5753,'site--templates--d_person-php.json',20,'[\"\"]','2020-09-17 10:10:52','2020-09-17 10:10:52',''),(5753,'site--templates--h_artworks-php.json',18,'[\"\"]','2020-09-17 10:08:08','2020-09-17 10:08:08',''),(5753,'site--templates--h_spot-php.json',17,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_seller-php.json',15,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_sellers-php.json',16,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_search-php.json',14,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--includes--person-list-php.json',4,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--h_possession-php.json',13,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_persons-php.json',12,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_person-php.json',11,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_collection-php.json',10,'[\"\"]','2020-09-17 10:06:03','2020-09-17 10:06:03',''),(5753,'site--templates--h_brand-php.json',9,'[\"\"]','2020-09-17 10:06:02','2020-09-17 10:06:02',''),(5753,'site--templates--_main-php.json',8,'[\"\"]','2020-09-17 10:03:06','2020-09-17 10:03:06',''),(5753,'site--templates--includes--artwork-page-php.json',7,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--includes--person-page-php.json',6,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--includes--search-form-php.json',5,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--search-php.json',2,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--includes--search-summary-php.json',3,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5753,'site--templates--includes--sidebar-links-php.json',0,'[\"\"]','2020-06-16 13:11:08','2020-06-16 13:11:08',''),(5753,'site--templates--home-php.json',1,'[\"\"]','2020-06-19 15:41:08','2020-06-19 15:41:08',''),(5754,'site--templates--h_brand-php.json',2,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_collection-php.json',3,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_person-php.json',4,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_persons-php.json',5,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_possession-php.json',6,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_search-php.json',7,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_seller-php.json',8,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_artworks-php.json',1,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5754,'site--templates--h_spot-php.json',0,'[\"\"]','2020-09-18 13:50:14','2020-09-18 13:50:14',''),(5754,'site--templates--h_sellers-php.json',9,'[\"\"]','2020-09-18 14:03:40','2020-09-18 14:03:40',''),(5755,'site--templates--h_brand-php.json',2,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_collection-php.json',3,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_person-php.json',4,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_persons-php.json',5,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_possession-php.json',6,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_search-php.json',7,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_seller-php.json',8,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_artworks-php.json',1,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5755,'site--templates--h_spot-php.json',0,'[\"\"]','2020-09-18 13:52:11','2020-09-18 13:52:11',''),(5755,'site--templates--h_sellers-php.json',9,'[\"\"]','2020-09-18 14:10:42','2020-09-18 14:10:42',''),(5751,'site--templates--h_spot-php.json',0,'[\"\"]','2020-10-11 17:22:07','2020-10-11 17:22:07','');
/*!40000 ALTER TABLE `field_language_files_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES (41,'mAwZZtrHxx9tOS5H1ZQ2GQIKEivrD6W','$2y$11$GiX8d6qqBoYFz7YtNKw9c.'),(40,'',''),(5972,'DXADIi31y1RPO7sNqYwiwdmJ3ckZ0zy','$2y$11$z.4svgMiMd75noOrPAc8jO');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES (38,32,1),(5735,32,1),(38,34,2),(5735,34,3),(38,35,3),(37,36,0),(38,36,0),(5735,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(5735,53,4),(38,54,6),(5735,5749,2);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76),(5722,104),(5,76),(24,11),(25,68),(26,66),(5733,129),(2016,104),(5731,121),(5729,109),(5739,161),(5740,162),(5742,164),(5745,166),(5750,177),(5752,178);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(5972,37,0),(41,38,2),(5972,38,1);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data5753` text,
  `data5754` text,
  `data5755` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact5753` (`data5753`(250)),
  KEY `data_exact5754` (`data5754`(250)),
  KEY `data_exact5755` (`data5755`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data5753` (`data5753`),
  FULLTEXT KEY `data5754` (`data5754`),
  FULLTEXT KEY `data5755` (`data5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES (11,'Templates',NULL,NULL,NULL),(16,'Fields',NULL,NULL,NULL),(22,'Setup',NULL,NULL,NULL),(3,'Pages',NULL,NULL,NULL),(6,'Add Page',NULL,NULL,NULL),(8,'Tree',NULL,NULL,NULL),(9,'Save Sort',NULL,NULL,NULL),(10,'Edit',NULL,NULL,NULL),(21,'Modules',NULL,NULL,NULL),(29,'Users',NULL,NULL,NULL),(30,'Roles',NULL,NULL,NULL),(2,'Admin',NULL,NULL,NULL),(7,'Trash',NULL,NULL,NULL),(27,'404 Page Not Found','404 Страница не найдена','404 La page est introuvable','404 Sidan hittades inte'),(302,'Insert Link',NULL,NULL,NULL),(23,'Login',NULL,NULL,NULL),(304,'Profile',NULL,NULL,NULL),(301,'Empty Trash',NULL,NULL,NULL),(300,'Search',NULL,NULL,NULL),(303,'Insert Image',NULL,NULL,NULL),(28,'Access',NULL,NULL,NULL),(31,'Permissions',NULL,NULL,NULL),(32,'Edit pages',NULL,NULL,NULL),(34,'Delete pages',NULL,NULL,NULL),(35,'Move pages (change parent)',NULL,NULL,NULL),(36,'View pages',NULL,NULL,NULL),(50,'Sort child pages',NULL,NULL,NULL),(51,'Change templates on pages',NULL,NULL,NULL),(52,'Administer users',NULL,NULL,NULL),(53,'User can update profile/password',NULL,NULL,NULL),(54,'Lock or unlock a page',NULL,NULL,NULL),(1,'Home','Начало','',''),(5731,'Insert Link',NULL,NULL,NULL),(5729,'Empty Trash',NULL,NULL,NULL),(5762,'Les folies','Монгольфьеры','',''),(4111,'People','Персоналии','Personalities','Personligheter'),(5763,'Grand Cortege',NULL,NULL,NULL),(5770,'Salvatore Ferrogama','','',''),(5771,'Tiffany & Co.','','',''),(5772,'Dior','','',''),(5773,'Nina Ricci','','',''),(5774,'Lanvin','','',''),(5775,'Baume & Mercier','','',''),(5776,'Bali Barret','','',''),(5777,'Jean-Louis Dumas','','',''),(5778,'Pierre-Alexis Dumas','','',''),(5779,'Antoine de Jacquelot','','',''),(5780,'Vladimir Rybalchenko','Владимир Рыбальченко','',''),(5781,'Miro','Евгения Мирошниченко','',''),(5782,'Margo','Марго','',''),(5783,'Xavier de Poret','','',''),(5784,'Cathy Latham-Audibert','','',''),(5764,'Loïc Dubigeon','Loïc Dubigeon','Loïc Dubigeon','Loïc Dubigeon'),(5723,'All Artworks',NULL,NULL,NULL),(5722,'Search',NULL,NULL,NULL),(5724,'Search','Поиск','',''),(5733,'Insert Image',NULL,NULL,NULL),(5739,'Find',NULL,NULL,NULL),(5740,'Recent',NULL,NULL,NULL),(5741,'Can see recently edited pages',NULL,NULL,NULL),(5742,'Logs',NULL,NULL,NULL),(5743,'Can view system logs',NULL,NULL,NULL),(5744,'Can manage system logs',NULL,NULL,NULL),(5745,'Upgrades',NULL,NULL,NULL),(5749,'Administer languages and static translation files',NULL,NULL,NULL),(5750,'Languages',NULL,NULL,NULL),(5751,'English',NULL,NULL,NULL),(5752,'Language Translator',NULL,NULL,NULL),(5753,'Русский',NULL,NULL,NULL),(5754,'Français',NULL,NULL,NULL),(5755,'Svenska',NULL,NULL,NULL),(5759,'Brazil',NULL,NULL,NULL),(5767,'Brands','Бренды','Мarques','Varumärken'),(5769,'Hermès','','',''),(5785,'Thierry Hermès','','',''),(5786,'Countries','','',''),(5787,'artworks','artworks','artworks','artworks'),(5788,'Example','Пример','Exemple','Exempel'),(5789,'Hermès etc...','Hermès и т.д.','Hermès et des autres','Hermès och andra'),(5790,'h_search',' ',' ',' '),(5791,'People','Люди','Les gens','Människor'),(5792,'Christiane Vauzelles','','',''),(5793,'Cathy Latham-Audibert','','',''),(5794,'Evgenia Miro (Miroshnichenko)','Евгения Мирошниченко (Miro)','',''),(5795,'Dimitri Rybaltchenko','','',''),(5796,'Alexander Tsybin','Александр Цыбин','',''),(5797,'Vladimir Rybaltchenko','','',''),(5798,'Hugo Grygkar','','',''),(5799,'Philippe Ledoux','','',''),(5800,'Loïc Dubigeon','','',''),(5801,'Margo','Марго','',''),(5802,'Françoise de La Perrière','','',''),(5803,'Michel Duchêne','','',''),(5804,'Cyrille Diatkine','','',''),(5805,'Jean de Fougerolle','','',''),(5806,'Julia Abadie','','',''),(5807,'Henri d\'Origny','','',''),(5808,'Henri de Linarès','','',''),(5809,'Joachim Metz','','',''),(5810,'Daphne Duchesne','','',''),(5811,'Xavier de Poret','','',''),(5812,'Bali Barret','','',''),(5813,'Benoît-Pierre Emery','','',''),(5814,'Françoise Heron','','',''),(5815,'Catherine Baschet','','',''),(5816,'Laurence Bourthoumieux','','',''),(5817,'Antoine de Jacquelot','','',''),(5818,'Alice Shirley','','',''),(5819,'Hubert de Watrigant','','',''),(5820,'Pierre-Alexis Dumas','','',''),(5821,'Jean-Louis Dumas','','',''),(5822,'Annie Faivre','','',''),(5823,'Thierry Hermès','','',''),(5824,'Robert Dumas','','',''),(5825,'Émile Maurice Hermès','','',''),(5826,'Charles-Émile Hermès','','',''),(5827,'Providers','Источники','Fournisseurs','Leverantörer'),(5828,'Gifts','','',''),(5829,'Marché de Plainpalais','','',''),(5830,'Bukowskis','','',''),(5831,'Myrorna','','',''),(5832,'Stockholms Auktionsverk','','',''),(5833,'Stockholms Stadsmission','','',''),(5834,'Brands','Бренды','Marques','Märken'),(5835,'Hermès','','',''),(5836,'Salvatore Ferrogamo','','',''),(5837,'Tiffany & Co.','','',''),(5838,'Nina Ricci','','',''),(5839,'Baume & Mercier','','',''),(5840,'Lanvin','','',''),(5841,'Christian Dior','','',''),(5842,'Maison Carré Foundation','','',''),(5843,'Scarves','Платки','Carrés','Halsdukar'),(5844,'Cheval Turc','','',''),(5845,'Hemisphaerium Coeli Boreale','','',''),(5846,'Jeu de Omnibus et DameBlanche','','',''),(5847,'Les Folies Du Ciel','','',''),(5848,'','','',''),(5849,'Les Voitures transformation','','',''),(5850,'Brides de Gala','','',''),(5851,'Grand Cortège a Moscou','','',''),(5852,'Bolduc','','',''),(5853,'Possessions','Бухгалтерия','Factures','Fakturor'),(5854,'Purchase 2010-05-04','Покупка 2010-05-04','Achat 2010-05-04','Inköp 2010-05-04'),(5855,'Purchase 2018-04-28','Покупка 2018-04-28','Achat 2018-04-28','Inköp 2018-04-28'),(5856,'Purchase 2017-10-05','Покупка 2017-10-05','Achat 2017-10-05','Inköp 2017-10-05'),(5857,'Paintings & Painters','Картины и Художники','Chefs-d\'œuvre et Artistes','Målningar och Konstnärer'),(5858,'Painters','Персоналии','Les Artistes','Konstnärer'),(5859,'Rembrandt van Rijn','','',''),(5863,'Jan van Eyck','','',''),(5861,'Schools','Школы живописи','Écoles','Skolar'),(5862,'Dutch School','Dutch School','Dutch School','Dutch School'),(5866,'Valentin de Boulogne','','',''),(5865,'Flemish Painting School','Flemish Painting School','Flemish Painting School','Flemish Painting School'),(5867,'Unknown Artist','','',''),(5868,'Raffaele  Frigerio','','',''),(5869,'Viacheslav Kalinin','','',''),(5875,'Abraham Storck','','',''),(5871,'Christer Edwardson (Schmiterlöw)','','',''),(5872,'A. Collomb','','',''),(5873,'L. Vilardi','','',''),(5874,'Salomon Koninck','','',''),(5878,'Robert Falk','','',''),(5877,'Peter Joseph Minjon','','',''),(5879,'Basil Samoylov','','',''),(5880,'Andries Vermeulen','','',''),(5883,'Abraham Teniers','','',''),(5882,'Haik Mhitaryan','','',''),(5885,'David Teniers II the Younger','','',''),(5887,'Vladimir Маковский','','',''),(5892,'Marcel Genay','','',''),(5889,'Unknown Dutch Artist','','',''),(5893,'My art depositories','Мои источники','Les dépôts d\'art','Mina konstposter'),(5891,'Unknown Flemish Artist','','',''),(5894,'Bukowskis Auction','','',''),(5895,'Metropol Auction','','',''),(5896,'OWN Auktion','','',''),(5897,'Uppsala Auktionskammare','','',''),(5898,'Stockholms Auktionsverk','','',''),(5899,'Collections','Коллекции','Collections','Samlingar'),(5900,'Gemäldegalerie Old Masters','','',''),(5901,'Unknown collection','','',''),(5902,'Non-Leiden collection','','',''),(5903,'Non-Leiden collection 2','','',''),(5904,'Louvre','','',''),(5905,'Lost auctions','','',''),(5906,'Paintings','Картины','Peintures','Målningar'),(5907,'Card-sharpers','','',''),(5908,'Italian portrait of the man','','',''),(5909,'Italian portrait of the man','','',''),(5910,'Card-sharpers','','',''),(5911,'Proud rider','','',''),(5912,'In the sea 1','','',''),(5913,'Street life','','',''),(5914,'Musician and gamblers','','',''),(5915,'A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond','','',''),(5916,'Trip to Japan','','',''),(5917,'Juuls Bastion','','',''),(5918,'Swedish Weather','','',''),(5919,'Pub Scenes','','',''),(5920,'House and Master','','',''),(5921,'Butterfly','','',''),(5922,'Philosopher in Meditation','','',''),(5923,'Philosopher with an Open Book','','',''),(5924,'Philosopher with an Open Book','','',''),(5925,'Pastoral landscape','','',''),(5926,'Harbor','','',''),(5927,'City in winter','','',''),(5928,'City in summer','','',''),(5929,'In the tavern','','',''),(5930,'Flemish Painting School','Фламандская Школа живописи','Primitifs Flamands','Flamländsk Skola'),(5931,'Paris','','',''),(5932,'Friends','','',''),(5933,'Winter','','',''),(5934,'Andalusia','','',''),(5935,'In the sea 2','','',''),(5936,'A musical gathering of cats','','',''),(5937,'The Backgammon Players','','',''),(5938,'The Tric-Trac Players','','',''),(5939,'Party','','',''),(5940,'A boor playing a lute in an interior with a woman drinking at his side, peasants playing cards beyond','','',''),(5941,'Possessions','Бухгалтерия','Factures d\'achat','Facturen'),(5942,'Purchase 2017-01-16','Покупка 2017-01-16','Achat 2017-01-16','Inköp 2017-01-16'),(5943,'Purchase 2018-02-13','Покупка 2018-02-13','Achat 2018-02-13','Inköp 2018-02-13'),(5944,'Purchase 2017-11-11','Покупка 2017-11-11','Achat 2017-11-11','Inköp 2017-11-11'),(5945,'Purchase 2016-08-29','Покупка 2016-08-29','Achat 2016-08-29','Inköp 2016-08-29'),(5946,'Purchase 2010-12-26','Покупка 2010-12-26','Achat 2010-12-26','Inköp 2010-12-26'),(5947,'Purchase 2010-04-11','Покупка 2010-04-11','Achat 2010-04-11','Inköp 2010-04-11'),(5948,'Purchase 2010-12-11','Покупка 2010-12-11','Achat 2010-12-11','Inköp 2010-12-11'),(5949,'Purchase 2001-01-26','Покупка 2001-01-26','Achat 2001-01-26','Inköp 2001-01-26'),(5950,'Purchase 2001-01-26','Покупка 2001-01-26','Achat 2001-01-26','Inköp 2001-01-26'),(5951,'Purchase 2017-07-31','Покупка 2017-07-31','Achat 2017-07-31','Inköp 2017-07-31'),(5952,'Purchase 2010-12-11','Покупка 2010-12-11','Achat 2010-12-11','Inköp 2010-12-11'),(5953,'Purchase 2018-02-19','Покупка 2018-02-19','Achat 2018-02-19','Inköp 2018-02-19'),(5954,'Purchase 2018-04-24','Покупка 2018-04-24','Achat 2018-04-24','Inköp 2018-04-24'),(5955,'Purchase 2010-03-12','Покупка 2010-03-12','Achat 2010-03-12','Inköp 2010-03-12'),(5956,'Purchase 2018-06-17','Покупка 2018-06-17','Achat 2018-06-17','Inköp 2018-06-17'),(5957,'Dymkovo toys','Дымковская игрушка','Dymkovo jouets','Dymkovo leksaker'),(5958,'People','Персоналии','Les gents',' '),(5959,'Людмила Верещагина','','',''),(5960,'d_artworks','d_artworks','d_artworks','d_artworks'),(5961,'Щука','','',''),(5973,'Robert Dallet','Robert Dallet','',''),(5965,'Armes de Paris','','',''),(5966,'Armes de chasse','','',''),(5967,'Marie-Françoise Faconnet','','',''),(5968,'La Torre','','',''),(5969,'Astrologie nouvelle','','',''),(5975,'Avenue des Acacias','','',''),(5971,'Azulejos','','',''),(5974,'Afrika','','',''),(5976,'Brazil','','',''),(5977,'Bride de cour','','',''),(5978,'Bride de gala','','',''),(5979,'Casse-noisette','','',''),(5980,'Cavalcadour','','',''),(5981,'Cavaliers peuls','','',''),(5982,'Charreada','','',''),(5983,'Clefs','','',''),(5984,'Clefs','','',''),(5985,'Clic-clac','','',''),(5986,'Coqs','','',''),(5987,'Couvee d,Hermes','','',''),(5988,'Cuillers d,Afrique','','',''),(5989,'Cuivreries (Variant)','','',''),(5990,'Eperon d\'or','','',''),(5991,'Equitation japonaise','','',''),(5992,'Escuela Andalusa','','',''),(5993,'Etriers','','',''),(5994,'Ex-libris (gavroche)','','',''),(5995,'Etude pour une parure','','',''),(5996,'Florance Manlik','','',''),(5997,'Fafandole','','',''),(5998,'Festival des amazones','','',''),(5999,'Flore','','',''),(6000,'Gibiers','','',''),(6001,'Grand manege','','',''),(6002,'Grand tenue','','',''),(6003,'France','Франция','France','Frankrike'),(6004,'Ukraine','Украина','Ukraine','Ukraina'),(6005,'Libre comme l\'air','','',''),(6006,'Chanel','','',''),(6007,'Italie','Италия','',''),(6008,'Gucci','','',''),(6009,'USA','Соединенные штаты','Etats-Unis',''),(6010,'Sweden','Швеция','Suede','Sverige'),(6011,'Kenzo','','',''),(6012,'Russia','Россия','Russie','Rysland'),(6013,'Lanvin','','',''),(6014,'Tiger','','',''),(6015,'Yves Saint-Laurent','','',''),(6016,'YSL','','','');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(57,'home'),(68,'person'),(82,'list-all'),(81,'basic-page'),(75,'collection'),(78,'artwork'),(80,'search'),(97,'persons'),(98,'collections'),(99,'language'),(100,'brand'),(101,'brands'),(102,'seller'),(103,'sellers'),(108,'possession'),(109,'possessions'),(110,'countries'),(111,'country'),(112,'artworks'),(113,'spot'),(114,'h_artwork'),(115,'h_spot'),(116,'h_search'),(117,'h_collection'),(118,'h_persons'),(119,'h_sellers'),(120,'h_brands'),(121,'h_artworks'),(122,'h_possessions'),(123,'h_brand'),(124,'h_person'),(125,'h_seller'),(126,'h_possession'),(127,'a_school'),(128,'a_person'),(129,'a_collection'),(130,'a_possession'),(131,'a_artwork'),(132,'a_seller'),(133,'a_spot'),(134,'a_collections'),(135,'a_schools'),(136,'a_persons'),(137,'a_sellers'),(138,'a_artworks'),(139,'a_possessions'),(140,'a_search'),(141,'d_person'),(142,'d_spot'),(143,'d_persons'),(144,'d_artworks'),(145,'d_search'),(146,'d_artwork');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES (2,2,1,''),(2,1,0,''),(3,3,0,''),(3,4,2,''),(4,5,0,''),(5,1,0,''),(3,92,1,''),(57,127,1,NULL),(82,1,0,''),(81,1,0,''),(57,1,0,''),(75,1,0,''),(68,43,2,NULL),(80,1,0,''),(113,43,2,NULL),(81,43,1,''),(97,1,0,''),(98,1,0,''),(81,44,2,''),(102,44,1,NULL),(57,44,3,''),(99,1,0,NULL),(99,100,1,NULL),(3,99,3,NULL),(101,1,0,NULL),(78,108,7,NULL),(78,119,6,NULL),(78,117,3,NULL),(78,118,4,NULL),(78,107,5,NULL),(78,1,0,'{\"label5753\":\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\"}'),(78,54,1,'{\"label\":\"Artist\",\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\"}'),(78,110,2,NULL),(99,101,2,NULL),(3,102,4,NULL),(102,1,0,NULL),(103,1,0,NULL),(110,126,1,NULL),(75,44,1,NULL),(68,44,3,NULL),(68,120,1,NULL),(100,43,2,NULL),(100,1,0,'{\"label\":\"Brand\",\"label5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\"}'),(100,125,1,NULL),(68,1,0,''),(100,44,3,NULL),(78,77,8,NULL),(78,43,9,NULL),(78,44,10,''),(108,1,0,NULL),(109,1,0,NULL),(57,43,2,''),(110,1,0,NULL),(111,1,0,NULL),(112,1,0,NULL),(113,98,1,NULL),(113,1,0,NULL),(110,43,2,NULL),(97,43,1,NULL),(103,43,1,NULL),(101,43,1,NULL),(112,43,1,NULL),(109,43,1,NULL),(80,43,1,NULL),(102,43,2,NULL),(108,43,1,NULL),(133,98,2,NULL),(57,98,4,''),(115,44,2,NULL),(115,129,1,NULL),(115,1,0,NULL),(115,43,3,NULL),(116,1,0,NULL),(116,43,1,NULL),(118,1,0,NULL),(118,43,1,NULL),(119,1,0,NULL),(119,43,1,NULL),(120,1,0,NULL),(120,43,1,NULL),(121,1,0,NULL),(121,43,1,NULL),(122,1,0,NULL),(122,43,1,NULL),(123,44,3,NULL),(124,130,4,NULL),(125,159,3,NULL),(126,43,8,NULL),(124,127,5,NULL),(124,133,6,NULL),(124,134,7,NULL),(124,43,8,NULL),(124,1,0,NULL),(124,131,1,NULL),(124,132,2,NULL),(124,44,3,NULL),(125,158,2,NULL),(125,1,0,NULL),(125,44,1,NULL),(123,149,4,NULL),(123,43,5,NULL),(123,1,0,NULL),(123,127,1,NULL),(123,148,2,NULL),(117,1,0,NULL),(117,44,1,NULL),(117,147,2,NULL),(117,43,3,NULL),(142,98,2,NULL),(114,139,12,NULL),(114,137,11,NULL),(114,146,10,NULL),(114,136,8,NULL),(114,138,9,NULL),(114,144,4,NULL),(114,140,5,NULL),(114,145,6,NULL),(114,141,7,NULL),(126,156,7,NULL),(126,1,0,NULL),(126,154,1,NULL),(126,153,2,NULL),(126,150,3,NULL),(126,152,4,NULL),(126,157,5,NULL),(126,155,6,NULL),(127,44,1,NULL),(127,1,0,NULL),(128,43,9,NULL),(129,196,3,NULL),(132,43,4,NULL),(133,43,1,NULL),(134,1,0,NULL),(134,43,1,NULL),(135,1,0,NULL),(135,43,1,NULL),(136,1,0,NULL),(136,43,1,NULL),(137,1,0,NULL),(137,43,1,NULL),(138,1,0,NULL),(138,43,1,NULL),(139,1,0,NULL),(139,43,1,NULL),(140,1,0,NULL),(140,43,1,NULL),(128,176,6,NULL),(128,177,8,NULL),(128,180,5,NULL),(128,179,2,NULL),(128,44,3,NULL),(128,175,4,NULL),(128,1,0,NULL),(128,178,1,NULL),(127,43,2,NULL),(141,43,7,NULL),(128,127,7,NULL),(132,208,3,NULL),(132,1,0,NULL),(132,210,1,NULL),(132,44,2,NULL),(129,43,5,NULL),(129,199,4,NULL),(129,44,2,NULL),(129,1,0,NULL),(129,198,1,NULL),(131,186,13,NULL),(131,190,14,NULL),(131,187,15,NULL),(131,43,16,NULL),(131,1,0,NULL),(131,195,1,NULL),(131,193,2,NULL),(131,191,3,NULL),(131,194,4,NULL),(131,181,5,NULL),(131,44,6,NULL),(131,184,7,NULL),(131,185,8,NULL),(131,188,9,NULL),(131,183,10,NULL),(131,189,11,NULL),(131,192,12,NULL),(125,43,4,NULL),(130,43,9,NULL),(130,201,8,NULL),(130,203,4,NULL),(130,200,5,NULL),(130,202,6,NULL),(130,207,7,NULL),(130,206,3,NULL),(130,1,0,NULL),(130,204,1,NULL),(130,205,2,NULL),(141,219,6,NULL),(142,43,1,NULL),(143,1,0,NULL),(143,43,1,NULL),(144,1,0,NULL),(144,43,1,NULL),(145,1,0,NULL),(145,43,1,NULL),(146,1,0,NULL),(141,127,5,NULL),(141,44,3,NULL),(141,217,1,NULL),(141,216,4,NULL),(141,218,2,NULL),(141,1,0,NULL),(146,44,1,NULL),(146,221,2,NULL),(146,43,3,NULL),(142,1,0,NULL),(133,1,0,NULL),(114,128,15,NULL),(114,43,13,NULL),(114,44,14,NULL),(114,1,0,NULL),(114,135,1,NULL),(114,142,2,NULL),(114,143,3,NULL),(142,44,3,NULL),(133,44,3,NULL);
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitleLanguage','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label5753\":\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\",\"minlength\":0,\"showCount\":0}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(120,'FieldtypeOptions','av_duty',0,'Person duty','{\"inputfieldClass\":\"InputfieldSelect\"}'),(43,'FieldtypeTextareaLanguage','body',1,'Body','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":15,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,codemagic,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote\",\"plugins\":\"autosave,inlinepopups,safari,codemagic,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],div[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":0,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"langBlankInherit\":0,\"extraAllowedContent\":\"div[class]\",\"collapsed\":0}'),(44,'FieldtypeImage','images',0,'Images','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"entityEncode\":1,\"unzip\":1,\"descriptionRows\":1,\"adminThumbs\":1,\"fileSchema\":6}'),(119,'FieldtypeOptions','awx_base',0,'Scarf  base','{\"inputfieldClass\":\"InputfieldSelect\",\"label5753\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\",\"defaultValue\":\"Silk\"}'),(118,'FieldtypeOptions','awx_popularity',0,'Scarf popularity','{\"inputfieldClass\":\"InputfieldSelect\",\"label5753\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u044c\"}'),(54,'FieldtypePage','aw_person',0,'Artist','{\"derefAsPage\":0,\"parent_id\":4111,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"template_id\":14,\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"description\":\"This is an auto-complete field. Start typing the person company\\/name to add and select matches. If there is no match, hit enter to add the person as a new page. You may drag to sort persons in the order you prefer.\",\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"usePageEdit\":0}'),(98,'FieldtypePage','artworks_featured',0,'All Featured Artworks Index','{\"description\":\"Select the artworks that will be featured on this page. If you select more than three, then three will be randomly selected every time the page is rendered.\",\"derefAsPage\":0,\"parent_id\":4049,\"template_id\":24,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\",\"description5753\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0438\\u0441\\u043a\\u0443\\u0441\\u0441\\u0442\\u0432\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u044b \\u043d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0432\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0442\\u0440\\u0435\\u0445, \\u0442\\u043e \\u0442\\u0440\\u0438 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u0441\\u043b\\u0443\\u0447\\u0430\\u0439\\u043d\\u044b\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0432\\u0438\\u0437\\u0443\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b.\",\"label5753\":\"\\u0418\\u0437\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f\"}'),(107,'FieldtypeText','awx_year',0,'Production year','{\"label5753\":\"\\u0413\\u043e\\u0434 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"label5754\":\"Ann\\u00e9e de cr\\u00e9ation\",\"label5755\":\"Skapande \\u00e5r\"}'),(77,'FieldtypeCheckbox','aw_featured',0,'Featured Artwork?','{\"description\":\"If checked, this artwork may appear in the Featured Artworks section of the homepage.\",\"collapsed\":2,\"label5753\":\"\\u041f\\u043e\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435?\"}'),(99,'FieldtypeModule','admin_theme',8,'Admin Theme','{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),(100,'FieldtypeFile','language_files_site',24,'Site Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}'),(101,'FieldtypeFile','language_files',24,'Core Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}'),(102,'FieldtypePage','language',24,'Language','{\"derefAsPage\":1,\"parent_id\":5750,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),(110,'FieldtypePage','aw_brand',0,'Brand','{\"label5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\",\"derefAsPage\":0,\"inputfield\":\"InputfieldSelect\",\"parent_id\":5767,\"labelFieldName\":\"title\",\"template_id\":46,\"addable\":1}'),(108,'FieldtypeText','awx_size',0,'Size','{\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"langBlankInherit\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(117,'FieldtypeOptions','awx_rarity',0,'Rarity','{\"inputfieldClass\":\"InputfieldSelect\",\"label5753\":\"\\u0420\\u0435\\u0434\\u043a\\u043e\\u0441\\u0442\\u044c\",\"initValue\":0}'),(126,'FieldtypePage','countries',0,'Countries','{\"parent_id\":\"\\/countries\\/\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageAutocomplete\",\"template_id\":\"country\",\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"description\":\"This is an auto-complete field. Start typing the country name to add and select matches. If there is no match, hit enter to add the country as a new page. You may drag to sort countries in the order you prefer.\"}'),(124,'FieldtypeText','av_url',0,'Home page','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(125,'FieldtypeText','br_url',0,'Home page','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(127,'FieldtypePage','country',0,'Country','{\"parent_id\":5786,\"parent_name\":\"countries\",\"template_id\":57,\"template_name\":\"country\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldSelect\",\"description\":\"This is an auto-complete field. Start typing the name to add and select matches. If there is no match, hit enter to add the name as a new page. You may drag to sort items in the order you prefer.\",\"description5753\":\"\\u041f\\u043e\\u0434\\u0441\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u044e\\u0449\\u0435\\u0435 \\u043f\\u043e\\u043b\\u0435, \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0439 \\u043f\\u0435\\u0447\\u0430\\u0442\\u0430\\u0442\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u043e\\u043a\\u0441\\u043a\\u0430\\u0437\\u043a\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0441\\u043b\\u043e\\u0432\\u0430 \\u0435\\u0449\\u0435 \\u043d\\u0435\\u0442 \\u0432 \\u0441\\u043b\\u043e\\u0432\\u0430\\u0440\\u0435, \\u043d\\u0430\\u0436\\u043c\\u0438 \\\"\\u043a\\u043e\\u043d\\u0435\\u0446 \\u0441\\u0442\\u0440\\u043e\\u043a\\u0438\\\", \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0437\\u0430\\u043f\\u043e\\u043c\\u043d\\u0438\\u0442 \\u0441\\u043b\\u043e\\u0432\\u043e.\",\"derefAsPage\":0,\"collapsed\":0,\"label5753\":\"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430\",\"label5754\":\"Pays\",\"label5755\":\"Land\",\"columnWidth\":50}'),(128,'FieldtypeCheckbox','h_aw_featured',0,'','{\"columnWidth\":50}'),(129,'FieldtypePage','h_artworks_featured',0,'HRM Featured Artworks Index','{\"template_id\":\"h_artwork\",\"template_name\":\"h_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\",\"label5753\":\"\\u0418\\u0437\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f\",\"description\":\"Select the artworks that will be featured on this page. If you select more than three, then three will be randomly selected every time the page is rendered.\",\"description5753\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u044b \\u043d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0432\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0442\\u0440\\u0435\\u0445, \\u0442\\u043e \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0440\\u0430\\u0437 \\u0442\\u0440\\u0438 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u0442\\u044c\\u0441\\u044f \\u0441\\u043b\\u0443\\u0447\\u0430\\u0439\\u043d\\u044b\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c.\"}'),(130,'FieldtypeOptions','h_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"tags\":\"caption page\",\"inputfieldClass\":\"InputfieldCheckboxes\",\"collapsed\":0,\"required\":1,\"optionColumns\":0}'),(131,'FieldtypeTextLanguage','h_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),(132,'FieldtypeTextLanguage','h_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),(133,'FieldtypeURL','h_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(134,'FieldtypeTextLanguage','h_av_date',0,'Years of life','{\"columnWidth\":50,\"label5753\":\"\\u0413\\u043e\\u0434\\u044b \\u0436\\u0438\\u0437\\u043d\\u0438\",\"label5755\":\"Livs\\u00e5r\",\"label5754\":\"Des ann\\u00e9es de vie\",\"tags\":\"list page\"}'),(135,'FieldtypePage','h_aw_brand',0,'Brand','{\"columnWidth\":33,\"label5753\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\",\"label5755\":\"Varum\\u00e4rke\",\"label5754\":\"Maison\",\"tags\":\"caption\",\"template_id\":69,\"template_name\":\"h_brand\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0,\"collapsed\":0,\"required\":1}'),(136,'FieldtypeTextLanguage','h_aw_more',0,'Further information','{\"columnWidth\":50,\"label5753\":\"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\"label5755\":\"Vidare information\",\"label5754\":\"Informations suppl\\u00e9mentaires\"}'),(137,'FieldtypeURL','h_aw_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(138,'FieldtypePage','h_aw_person',0,'Painter','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(139,'FieldtypePage','h_aw_possession',0,'','{\"columnWidth\":33,\"template_id\":72,\"template_name\":\"h_possession\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(140,'FieldtypeOptions','h_aw_base',0,'Support','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\",\"label5755\":\"St\\u00f6d\",\"label5754\":\"Support\",\"tags\":\"list page\",\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}'),(141,'FieldtypeTextLanguage','h_aw_condition',0,'Condition report','{\"columnWidth\":50,\"label5753\":\"\\u0421\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435\",\"label5755\":\"Konditionsrapport\",\"label5754\":\"Rapport de condition\",\"tags\":\"page\"}'),(142,'FieldtypeOptions','h_aw_popularity',0,'Popularity','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u044c\",\"label5755\":\"Popularitet\",\"label5754\":\"Popularit\\u00e9\",\"tags\":\"list page\"}'),(143,'FieldtypeOptions','h_aw_rarity',0,'Rarity','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u0435\\u0434\\u043a\\u043e\\u0441\\u0442\\u044c\",\"label5755\":\"S\\u00e4llsynthet\",\"label5754\":\"Raret\\u00e9\",\"tags\":\"list page\"}'),(144,'FieldtypeTextLanguage','h_aw_size',0,'Size','{\"columnWidth\":50,\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"label5755\":\"Storlek\",\"label5754\":\"Taille\",\"tags\":\"list page\"}'),(145,'FieldtypeTextLanguage','h_aw_year',0,'Year','{\"columnWidth\":33,\"label5753\":\"\\u0413\\u043e\\u0434\",\"label5755\":\"\\u00c5r\",\"label5754\":\"Ann\\u00e9e\",\"tags\":\"list page\"}'),(146,'FieldtypePage','h_aw_collection',0,'Collection','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044f\",\"label5755\":\"Samling\",\"label5754\":\"Collection\",\"template_id\":63,\"template_name\":\"h_collection\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(147,'FieldtypePage','h_c_person',0,'Collector','{\"columnWidth\":33,\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\",\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u043e\\u043d\\u0435\\u0440\",\"label5754\":\"Collectionneur\",\"label5755\":\"Samlare\",\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":0,\"collapsed\":0}'),(148,'FieldtypeOptions','h_br_duty',0,'Brand type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u0431\\u0440\\u0435\\u043d\\u0434\\u0430\",\"label5755\":\"M\\u00e4rktyp\",\"label5754\":\"Type de marque\",\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0,\"defaultValue\":1}'),(149,'FieldtypeURL','h_br_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(150,'FieldtypePage','h_p_artwork',0,'Scarve','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043e\\u043a\",\"label5755\":\"Halsduk\",\"label5754\":\"Foulard\",\"template_id\":60,\"template_name\":\"h_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(151,'FieldtypePage','h_p_person',0,'Seller','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\",\"label5755\":\"S\\u00e4ljare\",\"label5754\":\"Fournisseur\",\"template_id\":70,\"template_name\":\"h_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(152,'FieldtypePage','h_p_seller',0,'Provider','{\"columnWidth\":33,\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\",\"label5755\":\"Leverant\\u00f6r\",\"label5754\":\"Fournisseur\",\"template_id\":71,\"template_name\":\"h_seller\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(153,'FieldtypeOptions','h_p_currency',0,'Currency','{\"columnWidth\":33,\"label5753\":\"\\u0412 \\u043a\\u0430\\u043a\\u043e\\u0439 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0435\",\"label5755\":\"Valuta\",\"label5754\":\"Devise\"}'),(154,'FieldtypeDatetime','h_p_date',0,'Date','{\"label5753\":\"\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0435\\u043d\\u0438\\u044f\",\"label5755\":\"Datum f\\u00f6r f\\u00f6rv\\u00e4rv\",\"label5754\":\"Date de l\'acquisition\",\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\"}'),(155,'FieldtypeInteger','h_p_price_start',0,'Estimate','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430\",\"label5755\":\"Utropspris\",\"label5754\":\"Prix estim\\u00e9\",\"tags\":\"list page\"}'),(156,'FieldtypeInteger','h_p_price_final',0,'Hammer price','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"label5755\":\"Klubbad\",\"label5754\":\"Hammer price\",\"tags\":\"list page\"}'),(157,'FieldtypeInteger','h_p_object_number',0,'Lot','{\"columnWidth\":33,\"label5753\":\"\\u041b\\u043e\\u0442\",\"label5755\":\"Lot\",\"label5754\":\"Lot\",\"tags\":\"list page\"}'),(158,'FieldtypeTextLanguage','h_s_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adress\",\"label5754\":\"Adresse\"}'),(159,'FieldtypeURL','h_s_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(175,'FieldtypeOptions','a_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"tags\":\"caption list page\"}'),(176,'FieldtypePage','a_av_school',0,'Painting School','{\"columnWidth\":33,\"label5753\":\"\\u0428\\u043a\\u043e\\u043b\\u0430 \\u0436\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u0438\",\"label5755\":\"M\\u00e5lskola\",\"label5754\":\"\\u00c9cole de peinture\",\"template_id\":73,\"template_name\":\"a_school\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(177,'FieldtypeTextLanguage','a_av_date',0,'Years of life','{\"columnWidth\":50,\"label5753\":\"\\u0413\\u043e\\u0434\\u044b \\u0436\\u0438\\u0437\\u043d\\u0438\",\"label5755\":\"Livs\\u00e5r\",\"label5754\":\"Des ann\\u00e9es de vie\",\"tags\":\"list page\"}'),(178,'FieldtypeTextLanguage','a_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),(179,'FieldtypeTextLanguage','a_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),(180,'FieldtypeURL','a_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(181,'FieldtypeURL','a_aw_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(182,'FieldtypeTextLanguage','a_aw_featured',0,'','{\"columnWidth\":50}'),(183,'FieldtypeTextLanguage','a_aw_more',0,'Further information','{\"columnWidth\":50,\"label5753\":\"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\"label5755\":\"Vidare information\",\"label5754\":\"Informations suppl\\u00e9mentaires\"}'),(184,'FieldtypePage','a_aw_person',0,'Painter','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(185,'FieldtypePage','a_aw_collection',0,'Collection','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u044f\",\"label5755\":\"Samling\",\"label5754\":\"Collection\",\"template_id\":75,\"template_name\":\"a_collection\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(186,'FieldtypeTextLanguage','a_aw_provenance',0,'Provenance','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u043d\\u0430\\u043d\\u0441\",\"label5755\":\"Ursprung\",\"label5754\":\"Provenance\"}'),(187,'FieldtypePage','a_aw_possession',0,'','{\"columnWidth\":33,\"template_id\":76,\"template_name\":\"a_possession\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(188,'FieldtypeTextLanguage','a_aw_signature',0,'Сignature','{\"columnWidth\":50,\"label5753\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\",\"label5755\":\"\\u0423nderskrift\",\"label5754\":\"Signature\"}'),(189,'FieldtypePage','a_aw_copy_artwork',0,'Posibly a copy of','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u043e\\u0432\\u0442\\u043e\\u0440 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b\",\"label5755\":\"Tydligen en kopia av\",\"label5754\":\"Une copie de\",\"template_id\":77,\"template_name\":\"a_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(190,'FieldtypeOptions','a_aw_link',0,'Relation to artist','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043a \\u0445\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\\u0443\",\"label5755\":\"F\\u00f6rh\\u00e5llande till konstn\\u00e4r\",\"label5754\":\"Relation \\u00e0 l\'artiste\",\"tags\":\"list page\"}'),(191,'FieldtypeOptions','a_aw_base',0,'Support','{\"columnWidth\":33,\"label5753\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\",\"label5755\":\"St\\u00f6d\",\"label5754\":\"Support\",\"tags\":\"list page\"}'),(192,'FieldtypeTextLanguage','a_aw_condition',0,'Condition report','{\"columnWidth\":50,\"label5753\":\"\\u0421\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435\",\"label5755\":\"Konditionsrapport\",\"label5754\":\"Rapport de condition\",\"tags\":\"page\"}'),(193,'FieldtypeTextLanguage','a_aw_size',0,'Size','{\"columnWidth\":50,\"label5753\":\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\",\"label5755\":\"Storlek\",\"label5754\":\"Taille\",\"tags\":\"list page\"}'),(194,'FieldtypeOptions','a_aw_technique',0,'Technique','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0435\\u0445\\u043d\\u0438\\u043a\\u0430\",\"label5755\":\"Utf\\u00f6randeknik\",\"label5754\":\"Technique\",\"tags\":\"list page\"}'),(195,'FieldtypeTextLanguage','a_aw_year',0,'Year','{\"columnWidth\":33,\"label5753\":\"\\u0413\\u043e\\u0434\",\"label5755\":\"\\u00c5r\",\"label5754\":\"Ann\\u00e9e\",\"tags\":\"list page\"}'),(196,'FieldtypeTextLanguage','a_c_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adres\",\"label5754\":\"Adresse\"}'),(197,'FieldtypePage','a_c_person',0,'','{\"columnWidth\":33,\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(198,'FieldtypeOptions','a_c_duty',0,'Collection type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u043a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"label5755\":\"Samlingstyp\",\"label5754\":\"Type de collection\",\"tags\":\"list page\"}'),(199,'FieldtypeURL','a_c_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(200,'FieldtypePage','a_p_artwork',0,'Painting','{\"columnWidth\":33,\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u0430\",\"label5755\":\"M\\u00e5lare\",\"label5754\":\"Oeuvre\",\"template_id\":77,\"template_name\":\"a_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(201,'FieldtypePage','a_p_person',0,'Seller','{\"columnWidth\":33,\"label5753\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u0432\\u0435\\u0446\",\"label5755\":\"S\\u00e4ljare\",\"label5754\":\"Fournisseur\",\"template_id\":74,\"template_name\":\"a_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(202,'FieldtypePage','a_p_seller',0,'Provider','{\"columnWidth\":33,\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\",\"label5755\":\"Leverant\\u00f6r\",\"label5754\":\"Fournisseur\",\"template_id\":78,\"template_name\":\"a_seller\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(203,'FieldtypeOptions','a_p_currency',0,'Currency','{\"columnWidth\":33,\"label5753\":\"\\u0412 \\u043a\\u0430\\u043a\\u043e\\u0439 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0435\",\"label5755\":\"Valuta\",\"label5754\":\"Devise\"}'),(204,'FieldtypeDatetime','a_p_date',0,'Date','{\"label5753\":\"\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0435\\u043d\\u0438\\u044f\",\"label5755\":\"Datum f\\u00f6r f\\u00f6rv\\u00e4rv\",\"label5754\":\"Date de l\'acquisition\",\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\"}'),(205,'FieldtypeInteger','a_p_price_start',0,'Estimate','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430\",\"label5755\":\"Utropspris\",\"label5754\":\"Prix estim\\u00e9\",\"tags\":\"list page\"}'),(206,'FieldtypeInteger','a_p_price_final',0,'Hammer price','{\"columnWidth\":33,\"label5753\":\"\\u0417\\u0430\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"label5755\":\"Klubbad\",\"label5754\":\"Hammer price\",\"tags\":\"list page\"}'),(207,'FieldtypeInteger','a_p_object_number',0,'Lot','{\"columnWidth\":33,\"label5753\":\"\\u041b\\u043e\\u0442\",\"label5755\":\"Lot\",\"label5754\":\"Lot\",\"tags\":\"list page\"}'),(208,'FieldtypeTextLanguage','a_s_address',0,'Address','{\"columnWidth\":50,\"label5753\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"label5755\":\"Adress\",\"label5754\":\"Adresse\"}'),(209,'FieldtypePage','a_s_artwork',0,'','{\"columnWidth\":33,\"template_id\":77,\"template_name\":\"a_artwork\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(210,'FieldtypeOptions','a_s_duty',0,'Provider type','{\"columnWidth\":33,\"label5753\":\"\\u0422\\u0438\\u043f \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u0430\",\"label5755\":\"Leverant\\u00f6rstyp\",\"label5754\":\"Type de fournisseur\",\"tags\":\"list page\"}'),(211,'FieldtypeTextLanguage','a_artworks_featured',0,'','{\"columnWidth\":50}'),(216,'FieldtypeOptions','d_av_duty',0,'Role','{\"columnWidth\":33,\"label5753\":\"\\u0420\\u043e\\u043b\\u044c\",\"label5755\":\"Role\",\"label5754\":\"Role\",\"tags\":\"caption list page\"}'),(217,'FieldtypeTextLanguage','d_av_firstname',0,'First name','{\"columnWidth\":50,\"label5753\":\"\\u0418\\u043c\\u044f\",\"label5755\":\"F\\u00f6rnamn\",\"label5754\":\"Prenom\"}'),(218,'FieldtypeTextLanguage','d_av_lastname',0,'Last name','{\"columnWidth\":50,\"label5753\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\",\"label5755\":\"Efternamn\",\"label5754\":\"Nom\"}'),(219,'FieldtypeURL','d_av_url',0,'WWW','{\"columnWidth\":50,\"label5753\":\"WWW\",\"label5755\":\"WWW\",\"label5754\":\"WWW\",\"textformatters\":[\"TextformatterEntities\"]}'),(220,'FieldtypeTextLanguage','d_aw_featured',0,'','{\"columnWidth\":50}'),(221,'FieldtypePage','d_aw_person',0,'Painter','{\"columnWidth\":33,\"label5753\":\"\\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\",\"label5755\":\"Konstn\\u00e4r\",\"label5754\":\"Artiste\",\"template_id\":87,\"template_name\":\"d_person\",\"operator\":\"%=\",\"addable\":1,\"searchFields\":\"title\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldAsmSelect\"}'),(222,'FieldtypeTextLanguage','d_artworks_featured',0,'','{\"columnWidth\":50}'),(223,'FieldtypeFieldsetOpen','h_fs',0,'Hermes scarf description','{\"label5753\":\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043b\\u0430\\u0442\\u043a\\u0430 Hermes\",\"closeFieldID\":224,\"collapsed\":0}'),(224,'FieldtypeFieldsetClose','h_fs_END',0,'Close an open fieldset','{\"description\":\"This field was added automatically to accompany fieldset \'h_fs\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":223}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldtype_options`
--

DROP TABLE IF EXISTS `fieldtype_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` char(10) NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title5753` text,
  `value5753` varchar(250) DEFAULT NULL,
  `title5754` text,
  `value5754` varchar(250) DEFAULT NULL,
  `title5755` text,
  `value5755` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  UNIQUE KEY `title5753` (`title5753`(250),`fields_id`),
  UNIQUE KEY `title5754` (`title5754`(250),`fields_id`),
  UNIQUE KEY `title5755` (`title5755`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  KEY `value5753` (`value5753`,`fields_id`),
  KEY `value5754` (`value5754`,`fields_id`),
  KEY `value5755` (`value5755`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`),
  FULLTEXT KEY `title5753_value5753` (`title5753`,`value5753`),
  FULLTEXT KEY `title5754_value5754` (`title5754`,`value5754`),
  FULLTEXT KEY `title5755_value5755` (`title5755`,`value5755`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldtype_options`
--

LOCK TABLES `fieldtype_options` WRITE;
/*!40000 ALTER TABLE `fieldtype_options` DISABLE KEYS */;
INSERT INTO `fieldtype_options` VALUES (117,'R','R - Exceptional','R',0,'R - Редчайший','R','R - Rarissime','R',NULL,NULL),(117,'1','1- Very rare','1',1,'1- Очень редкий','','1 - Très rare','','1- Very rare','1'),(117,'2','2 - Rare','2',2,'2- Редкий','','2 Rare','','2 - Rare','2'),(117,'3','3 - Medium rare','3',3,'3- Достаточно редкий','','3 Assez rare','','3 - Medium rare','3'),(117,'4','4 - Some uncommon','4',4,'4- Несколько редкий','','4 Peu courant','','4 - Some uncommon','4'),(117,'5','5 - Uncommon','5',5,'5- Часто встречается','','5 Courant','','5 - Uncommon','5'),(118,'5','A - Very beloved','A',0,'A - Очень популярный','','A - Très recherché','A',NULL,NULL),(118,'6','B - Beloved','B',1,'B - Популярный','','B - Recherché','B',NULL,NULL),(118,'7','C - Medium beloved','C',2,'C - Средней популярности','','C - Assez recherché','C',NULL,NULL),(118,'8','D - Medium interest','D',3,'D - Небольшой интерес','','D - Courant','D',NULL,NULL),(119,'1','Silk','Silk',0,'Шелк','Шелк','Soie','Soie','Silke','Silke'),(119,'2','Cashmere','Cashmere',1,'Кашемир','Кашемир','Cachemire','Cachemire','Kaschmir','Kaschmir'),(120,'1','Artist','Artist',0,'Художник','Художник','Artiste','Artiste','Konstnär','Konstnär'),(120,'2','Business person','Businessman',2,'Бизнесмен','Бизнесмен','Homme d\'affaire','Homme d\'affaire','Affärsman','Affärsman'),(120,'3','Collector','Collector',1,'Коллекционер','Коллекционер','Collectionneur','Collectionneur','Samlare','Samlare'),(120,'4','Maecenas','Maecenas',3,'Меценат','Меценат','Maecenas','Maecenas','Maecenas','Maecenas'),(130,'1','Artist','1',0,'Художник','1','Artiste','1','Konstnärer','1'),(130,'2','Collector','2',1,'Коллекционер','2','Collectioner','2','Samlare','2'),(130,'3','Seller','3',2,'Продавец','3','Seller','3','Selare','3'),(130,'4','Business person','4',3,'Бизнесман','4','Homme d\'affaires','4','Affärsman','4'),(130,'5','Maecenas','5',4,'Меценат','5','Maecenas','5','Maecenas','5'),(140,'3','Silk','silk',0,'Шелк','silk','Soie','silk','Silke','silk'),(140,'1','Cashmere','cashmere',1,'Кашемир','cashmere','Cachemire','cashmere','Kaschmir','cashmere'),(140,'2','Unknown support','unknown',2,'Неясно','unknown','Unconnu','unknown','Okänd','unknown'),(142,'4','A - Very beloved','A',0,NULL,NULL,NULL,NULL,NULL,NULL),(142,'1','B - Beloved','B',1,NULL,NULL,NULL,NULL,NULL,NULL),(142,'2','C - Medium beloved','C',2,NULL,NULL,NULL,NULL,NULL,NULL),(142,'3','D - Medium interest','D',3,NULL,NULL,NULL,NULL,NULL,NULL),(143,'6','R - Exceptional','R',0,NULL,NULL,NULL,NULL,NULL,NULL),(143,'1','1 - Very rare','1',1,NULL,NULL,NULL,NULL,NULL,NULL),(143,'2','2 - Rare','2',2,NULL,NULL,NULL,NULL,NULL,NULL),(143,'3','3 - Medium rare','3',3,NULL,NULL,NULL,NULL,NULL,NULL),(143,'4','4 - Some uncommon','4',4,NULL,NULL,NULL,NULL,NULL,NULL),(143,'5','5 - Uncommon','5',5,NULL,NULL,NULL,NULL,NULL,NULL),(148,'1','Manufacturers','1',0,NULL,NULL,NULL,NULL,NULL,NULL),(153,'1','SEK','SEK',0,NULL,NULL,NULL,NULL,NULL,NULL),(153,'2','USD','USD',1,NULL,NULL,NULL,NULL,NULL,NULL),(175,'1','Artist','1',0,NULL,NULL,NULL,NULL,NULL,NULL),(175,'2','Collector','2',1,NULL,NULL,NULL,NULL,NULL,NULL),(175,'3','Seller','3',2,NULL,NULL,NULL,NULL,NULL,NULL),(175,'4','Business person','4',3,NULL,NULL,NULL,NULL,NULL,NULL),(175,'5','Maecenas','5',4,NULL,NULL,NULL,NULL,NULL,NULL),(190,'1','Author','author',0,NULL,NULL,NULL,NULL,NULL,NULL),(190,'2','Copy','copy',1,NULL,NULL,NULL,NULL,NULL,NULL),(190,'3','Attributed to','attr',2,NULL,NULL,NULL,NULL,NULL,NULL),(190,'4','Followers of','circle',3,NULL,NULL,NULL,NULL,NULL,NULL),(190,'5','Forgery','fake',4,NULL,NULL,NULL,NULL,NULL,NULL),(190,'6','In the manner of','manner',5,NULL,NULL,NULL,NULL,NULL,NULL),(191,'1','Canvas','canvas',0,NULL,NULL,NULL,NULL,NULL,NULL),(191,'2','Copper','copper',1,NULL,NULL,NULL,NULL,NULL,NULL),(191,'3','Panel','panel',2,NULL,NULL,NULL,NULL,NULL,NULL),(191,'4','Paper','paper',3,NULL,NULL,NULL,NULL,NULL,NULL),(191,'5','Unknown support','unknown',4,NULL,NULL,NULL,NULL,NULL,NULL),(194,'1','Watercolor','akva',0,NULL,NULL,NULL,NULL,NULL,NULL),(194,'2','Oil painting','olja',1,NULL,NULL,NULL,NULL,NULL,NULL),(194,'5','Gouache','gua',2,NULL,NULL,NULL,NULL,NULL,NULL),(194,'3','Pencil','penc',3,NULL,NULL,NULL,NULL,NULL,NULL),(194,'4','Mixed media','mix',4,NULL,NULL,NULL,NULL,NULL,NULL),(198,'2','Museums','2',0,NULL,NULL,NULL,NULL,NULL,NULL),(198,'3','Private collections','3',1,NULL,NULL,NULL,NULL,NULL,NULL),(198,'4','Lost biddings','4',2,NULL,NULL,NULL,NULL,NULL,NULL),(203,'1','SEK','SEK',0,NULL,NULL,NULL,NULL,NULL,NULL),(203,'2','USD','USD',1,NULL,NULL,NULL,NULL,NULL,NULL),(210,'1','Auctions','1',0,NULL,NULL,NULL,NULL,NULL,NULL),(210,'4','Flea','4',1,NULL,NULL,NULL,NULL,NULL,NULL),(210,'5','Gifts','5',2,NULL,NULL,NULL,NULL,NULL,NULL),(216,'1','Artist','1',0,NULL,NULL,NULL,NULL,NULL,NULL),(216,'2','Collector','2',1,NULL,NULL,NULL,NULL,NULL,NULL),(216,'3','Seller','3',2,NULL,NULL,NULL,NULL,NULL,NULL),(216,'4','Business person','4',3,NULL,NULL,NULL,NULL,NULL,NULL),(216,'5','Maecenas','5',4,NULL,NULL,NULL,NULL,NULL,NULL),(130,'6','Owner','6',5,'Владелец','6','Propriétér','6','Ägare','6');
/*!40000 ALTER TABLE `fieldtype_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '2017-02-04 22:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',1,'','2017-02-04 22:00:00'),(2,'FieldtypeNumber',0,'','2017-02-04 22:00:00'),(3,'FieldtypeText',1,'','2017-02-04 22:00:00'),(4,'FieldtypePage',3,'','2017-02-04 22:00:00'),(30,'InputfieldForm',0,'','2017-02-04 22:00:00'),(6,'FieldtypeFile',1,'','2017-02-04 22:00:00'),(7,'ProcessPageEdit',1,'','2017-02-04 22:00:00'),(10,'ProcessLogin',0,'','2017-02-04 22:00:00'),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}','2017-02-04 22:00:00'),(121,'ProcessPageEditLink',1,'','2017-02-04 22:00:00'),(14,'ProcessPageSort',0,'','2017-02-04 22:00:00'),(15,'InputfieldPageListSelect',0,'','2017-02-04 22:00:00'),(117,'JqueryUI',1,'','2017-02-04 22:00:00'),(17,'ProcessPageAdd',0,'{\"shortcutSort\":[24,14,21],\"bookmarks\":{\"_0\":[]}}','2017-02-04 22:00:00'),(125,'SessionLoginThrottle',11,'','2017-02-04 22:00:00'),(122,'InputfieldPassword',0,'','2017-02-04 22:00:00'),(25,'InputfieldAsmSelect',0,'','2017-02-04 22:00:00'),(116,'JqueryCore',1,'','2017-02-04 22:00:00'),(27,'FieldtypeModule',1,'','2017-02-04 22:00:00'),(28,'FieldtypeDatetime',1,'','2017-02-04 22:00:00'),(29,'FieldtypeEmail',1,'','2017-02-04 22:00:00'),(108,'InputfieldURL',0,'','2017-02-04 22:00:00'),(32,'InputfieldSubmit',0,'','2017-02-04 22:00:00'),(33,'InputfieldWrapper',0,'','2017-02-04 22:00:00'),(34,'InputfieldText',0,'','2017-02-04 22:00:00'),(35,'InputfieldTextarea',0,'','2017-02-04 22:00:00'),(36,'InputfieldSelect',0,'','2017-02-04 22:00:00'),(37,'InputfieldCheckbox',0,'','2017-02-04 22:00:00'),(38,'InputfieldCheckboxes',0,'','2017-02-04 22:00:00'),(39,'InputfieldRadios',0,'','2017-02-04 22:00:00'),(40,'InputfieldHidden',0,'','2017-02-04 22:00:00'),(41,'InputfieldName',0,'','2017-02-04 22:00:00'),(43,'InputfieldSelectMultiple',0,'','2017-02-04 22:00:00'),(45,'JqueryWireTabs',0,'','2017-02-04 22:00:00'),(46,'ProcessPage',0,'','2017-02-04 22:00:00'),(47,'ProcessTemplate',0,'','2017-02-04 22:00:00'),(48,'ProcessField',32,'','2017-02-04 22:00:00'),(50,'ProcessModule',0,'','2017-02-04 22:00:00'),(114,'PagePermissions',3,'','2017-02-04 22:00:00'),(97,'FieldtypeCheckbox',1,'','2017-02-04 22:00:00'),(115,'PageRender',3,'{\"clearCache\":1}','2017-02-04 22:00:00'),(55,'InputfieldFile',0,'','2017-02-04 22:00:00'),(56,'InputfieldImage',0,'','2017-02-04 22:00:00'),(57,'FieldtypeImage',1,'','2017-02-04 22:00:00'),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}','2017-02-04 22:00:00'),(61,'TextformatterEntities',0,'','2017-02-04 22:00:00'),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','2017-02-04 22:00:00'),(67,'MarkupAdminDataTable',0,'','2017-02-04 22:00:00'),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','2017-02-04 22:00:00'),(76,'ProcessList',0,'','2017-02-04 22:00:00'),(78,'InputfieldFieldset',0,'','2017-02-04 22:00:00'),(79,'InputfieldMarkup',0,'','2017-02-04 22:00:00'),(80,'InputfieldEmail',0,'','2017-02-04 22:00:00'),(89,'FieldtypeFloat',1,'','2017-02-04 22:00:00'),(83,'ProcessPageView',0,'','2017-02-04 22:00:00'),(84,'FieldtypeInteger',1,'','2017-02-04 22:00:00'),(85,'InputfieldInteger',0,'','2017-02-04 22:00:00'),(86,'InputfieldPageName',0,'','2017-02-04 22:00:00'),(87,'ProcessHome',0,'','2017-02-04 22:00:00'),(90,'InputfieldFloat',0,'','2017-02-04 22:00:00'),(94,'InputfieldDatetime',0,'','2017-02-04 22:00:00'),(98,'MarkupPagerNav',0,'','2017-02-04 22:00:00'),(129,'ProcessPageEditImageSelect',1,'','2017-02-04 22:00:00'),(103,'JqueryTableSorter',1,'','2017-02-04 22:00:00'),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title\",\"displayField\":\"title path\"}','2017-02-04 22:00:00'),(105,'FieldtypeFieldsetOpen',1,'','2017-02-04 22:00:00'),(106,'FieldtypeFieldsetClose',1,'','2017-02-04 22:00:00'),(107,'FieldtypeFieldsetTabOpen',1,'','2017-02-04 22:00:00'),(109,'ProcessPageTrash',1,'','2017-02-04 22:00:00'),(111,'FieldtypePageTitle',1,'','2017-02-04 22:00:00'),(112,'InputfieldPageTitle',0,'','2017-02-04 22:00:00'),(113,'MarkupPageArray',3,'','2017-02-04 22:00:00'),(131,'InputfieldButton',0,'','2017-02-04 22:00:00'),(133,'FieldtypePassword',1,'','2017-02-04 22:00:00'),(134,'ProcessPageType',33,'{\"showFields\":[]}','2017-02-04 22:00:00'),(135,'FieldtypeURL',1,'','2017-02-04 22:00:00'),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','2017-02-04 22:00:00'),(137,'InputfieldPageListSelectMultiple',0,'','2017-02-04 22:00:00'),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}','2017-02-04 22:00:00'),(153,'SystemUpdater',1,'{\"systemVersion\":17,\"coreVersion\":\"3.0.148\"}','2017-02-04 22:00:00'),(155,'InputfieldMapMarker',0,'','2017-02-04 22:00:00'),(156,'InputfieldPageAutocomplete',0,'','2017-02-04 22:00:00'),(159,'AdminThemeDefault',10,'{\"colors\":\"classic\"}','2017-02-04 22:00:00'),(160,'InputfieldSelector',42,'','2017-02-04 22:00:00'),(161,'ProcessPageLister',32,'','2017-02-04 22:00:00'),(162,'ProcessRecentPages',1,'','2017-02-06 02:27:46'),(163,'TextformatterMarkdownExtra',1,'','2017-02-06 02:27:47'),(164,'ProcessLogger',1,'','2017-02-06 02:28:04'),(165,'InputfieldIcon',0,'','2017-02-06 02:28:04'),(166,'ProcessWireUpgrade',1,'','2017-02-06 02:29:11'),(167,'ProcessWireUpgradeCheck',11,'','2017-02-06 02:29:11'),(168,'InputfieldCKEditor',0,'','2017-02-06 02:37:05'),(169,'MarkupHTMLPurifier',0,'','2017-02-06 02:37:06'),(170,'JqueryMagnific',1,'','2017-02-06 02:37:06'),(172,'MarkupGoogleMap',0,'','2017-02-11 11:57:53'),(175,'AdminThemeUikit',10,'','2020-06-11 06:27:54'),(176,'LanguageSupport',35,'{\"languagesPageID\":5750,\"defaultLanguagePageID\":5751,\"otherLanguagePageIDs\":[5753,5754,5755],\"languageTranslatorPageID\":5752,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:38:48'),(177,'ProcessLanguage',1,'','2020-06-11 06:38:48'),(178,'ProcessLanguageTranslator',1,'','2020-06-11 06:38:48'),(179,'LanguageSupportFields',3,'','2020-06-11 06:39:05'),(180,'FieldtypeTextLanguage',1,'','2020-06-11 06:39:05'),(181,'FieldtypePageTitleLanguage',1,'','2020-06-11 06:39:05'),(182,'FieldtypeTextareaLanguage',1,'','2020-06-11 06:39:05'),(183,'LanguageSupportPageNames',3,'{\"moduleVersion\":10,\"pageNumUrlPrefix5751\":\"page\",\"useHomeSegment\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:39:39'),(184,'LanguageTabs',11,'{\"tabField\":\"title\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-06-11 06:40:01'),(187,'FieldtypeOptions',1,'','2020-06-16 13:01:54');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2017-02-04 22:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name5753` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status5753` int(10) unsigned NOT NULL DEFAULT '1',
  `name5754` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status5754` int(10) unsigned NOT NULL DEFAULT '1',
  `name5755` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status5755` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name5753_parent_id` (`name5753`,`parent_id`),
  UNIQUE KEY `name5754_parent_id` (`name5754`,`parent_id`),
  UNIQUE KEY `name5755_parent_id` (`name5755`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=6017 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1,'home',1,'2020-07-20 09:54:24',41,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',0,'ru-home',1,'fr-home',1,'sv-home',1),(2,1,2,'processwire',1035,'2020-07-24 07:35:00',40,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',5,NULL,1,NULL,1,NULL,1),(3,2,2,'page',21,'2011-03-29 17:37:06',41,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',0,NULL,1,NULL,1,NULL,1),(6,3,2,'add',21,'2017-02-06 02:28:37',40,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',1,NULL,1,NULL,1,NULL,1),(7,1,2,'trash',1039,'2011-08-14 18:04:52',41,'2010-02-07 03:29:39',2,'2010-02-07 05:29:39',6,NULL,1,NULL,1,NULL,1),(8,3,2,'list',21,'2020-06-11 06:27:54',40,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',0,NULL,1,NULL,1,NULL,1),(9,3,2,'sort',1047,'2011-03-29 17:37:06',41,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',3,NULL,1,NULL,1,NULL,1),(10,3,2,'edit',1045,'2017-02-06 02:28:42',41,'2017-02-04 22:00:00',2,'2017-02-05 00:00:00',4,NULL,1,NULL,1,NULL,1),(11,22,2,'template',21,'2011-03-29 17:37:06',41,'2010-02-01 09:04:54',2,'2010-02-01 11:04:54',0,NULL,1,NULL,1,NULL,1),(16,22,2,'field',21,'2011-03-29 17:37:06',41,'2010-02-01 10:44:07',2,'2010-02-01 12:44:07',2,NULL,1,NULL,1,NULL,1),(21,2,2,'module',21,'2011-03-29 17:37:06',41,'2010-02-02 08:02:24',2,'2010-02-02 10:02:24',2,NULL,1,NULL,1,NULL,1),(22,2,2,'setup',21,'2011-03-29 17:37:06',41,'2010-02-09 10:16:59',2,'2010-02-09 12:16:59',1,NULL,1,NULL,1,NULL,1),(23,2,2,'login',1035,'2011-05-03 19:38:10',41,'2010-02-17 07:59:39',2,'2010-02-17 09:59:39',4,NULL,1,NULL,1,NULL,1),(27,1,27,'http404',1027,'2020-06-25 03:52:58',41,'2010-06-02 14:53:03',3,'2010-06-02 18:53:03',6,NULL,1,NULL,1,NULL,1),(28,2,2,'access',13,'2011-05-03 19:38:10',41,'2011-03-19 17:14:20',2,'2011-03-19 19:14:20',3,NULL,1,NULL,1,NULL,1),(29,28,2,'users',29,'2011-04-04 20:39:08',41,'2011-03-19 17:15:29',2,'2011-03-19 19:15:29',0,NULL,1,NULL,1,NULL,1),(30,28,2,'roles',29,'2011-04-04 20:38:39',41,'2011-03-19 17:15:45',2,'2011-03-19 19:15:45',1,NULL,1,NULL,1,NULL,1),(31,28,2,'permissions',29,'2011-04-04 20:53:52',41,'2011-03-19 17:16:00',2,'2011-03-19 19:16:00',2,NULL,1,NULL,1,NULL,1),(32,31,5,'page-edit',25,'2011-09-06 11:34:24',41,'2011-03-19 17:17:03',2,'2011-03-19 19:17:03',2,NULL,1,NULL,1,NULL,1),(34,31,5,'page-delete',25,'2011-09-06 11:34:33',41,'2011-03-19 17:17:23',2,'2011-03-19 19:17:23',3,NULL,1,NULL,1,NULL,1),(35,31,5,'page-move',25,'2011-09-06 11:34:48',41,'2011-03-19 17:17:41',2,'2011-03-19 19:17:41',4,NULL,1,NULL,1,NULL,1),(36,31,5,'page-view',25,'2011-09-06 11:34:14',41,'2011-03-19 17:17:57',2,'2011-03-19 19:17:57',0,NULL,1,NULL,1,NULL,1),(37,30,4,'guest',25,'2011-04-04 21:37:19',41,'2011-03-19 17:18:41',2,'2011-03-19 19:18:41',0,NULL,1,NULL,1,NULL,1),(38,30,4,'superuser',25,'2011-08-17 10:34:39',41,'2011-03-19 17:18:55',2,'2011-03-19 19:18:55',1,NULL,1,NULL,1,NULL,1),(41,29,3,'yb',1,'2020-07-24 07:35:00',40,'2011-03-19 17:41:26',2,'2011-03-19 19:41:26',0,NULL,1,NULL,1,NULL,1),(40,29,3,'guest',25,'2020-06-11 06:38:48',41,'2011-03-20 15:31:59',2,'2011-03-20 17:31:59',1,NULL,1,NULL,1,NULL,1),(50,31,5,'page-sort',25,'2011-09-06 11:34:58',41,'2011-03-26 20:04:50',41,'2011-03-26 22:04:50',5,NULL,1,NULL,1,NULL,1),(51,31,5,'page-template',25,'2011-09-06 11:35:09',41,'2011-03-26 20:25:31',41,'2011-03-26 22:25:31',6,NULL,1,NULL,1,NULL,1),(52,31,5,'user-admin',25,'2011-09-06 11:35:42',41,'2011-03-29 20:06:47',41,'2011-03-30 00:06:47',10,NULL,1,NULL,1,NULL,1),(53,31,5,'profile-edit',1,'2011-08-16 18:32:48',41,'2011-04-25 20:02:22',41,'2011-04-26 00:02:22',13,NULL,1,NULL,1,NULL,1),(54,31,5,'page-lock',1,'2011-08-15 13:48:12',41,'2011-08-15 13:45:48',41,'2011-08-15 17:45:48',8,NULL,1,NULL,1,NULL,1),(5722,3,2,'search',1029,'2010-09-26 14:37:06',2,'2010-08-03 13:23:59',2,'2010-08-03 17:23:59',6,NULL,1,NULL,1,NULL,1),(5729,3,2,'trash',1031,'2010-09-27 13:39:55',2,'2010-09-27 13:39:30',2,'2010-09-27 17:39:30',6,NULL,1,NULL,1,NULL,1),(5731,3,2,'link',1025,'2010-09-30 13:05:31',2,'2010-09-30 13:03:56',2,'2010-09-30 17:03:56',7,NULL,1,NULL,1,NULL,1),(5733,3,2,'image',1025,'2010-10-12 12:23:20',2,'2010-10-12 11:56:48',2,'2010-10-12 15:56:48',8,NULL,1,NULL,1,NULL,1),(304,2,2,'profile',1025,'2011-05-03 19:38:10',41,'2011-04-25 19:57:18',41,'2011-04-25 23:57:18',5,NULL,1,NULL,1,NULL,1),(4111,5788,43,'persons',1,'2020-09-13 13:20:35',40,'2010-07-28 09:36:42',2,'2010-07-28 13:36:42',1,NULL,1,NULL,1,NULL,1),(5770,5767,46,'salvatore-ferrogama',1,'2020-07-24 07:07:14',40,'2020-06-15 06:36:33',41,'2020-06-15 08:37:09',1,NULL,1,NULL,1,NULL,1),(5771,5767,46,'tiffany',1,'2020-06-20 05:54:44',41,'2020-06-15 06:44:01',41,'2020-06-15 08:45:12',2,NULL,1,NULL,1,NULL,1),(5772,5767,46,'dior',1,'2020-06-15 06:49:11',41,'2020-06-15 06:46:00',41,'2020-06-15 08:49:11',3,NULL,1,NULL,1,NULL,1),(5773,5767,46,'nina-ricci',1,'2020-06-15 13:52:54',41,'2020-06-15 13:50:48',41,'2020-06-15 15:52:54',4,NULL,1,NULL,1,NULL,1),(5774,5767,46,'lanvin',1,'2020-06-15 13:54:53',41,'2020-06-15 13:54:25',41,'2020-06-15 15:54:53',5,NULL,1,NULL,1,NULL,1),(5775,5767,46,'baume-mercier',1,'2020-06-15 13:57:52',41,'2020-06-15 13:57:39',41,'2020-06-15 15:57:52',6,NULL,1,NULL,1,NULL,1),(5776,4111,14,'bali-barret',1,'2020-06-21 07:39:55',41,'2020-06-15 15:07:33',41,'2020-06-15 17:07:41',2,NULL,1,NULL,1,NULL,1),(5777,4111,14,'jean-louis-dumas',1,'2020-06-19 16:35:31',41,'2020-06-15 16:02:44',41,'2020-06-15 18:03:11',3,NULL,1,NULL,1,NULL,1),(5778,4111,14,'pierre-alexis-dumas',1,'2020-06-19 16:33:04',41,'2020-06-15 16:03:59',41,'2020-06-15 18:04:44',4,NULL,1,NULL,1,NULL,1),(5779,4111,14,'antoine-de-jacquelot',1,'2020-06-19 16:32:25',41,'2020-06-15 16:05:22',41,'2020-06-15 18:05:45',5,NULL,1,NULL,1,NULL,1),(5780,4111,14,'vladimir-rybalchenko',1,'2020-06-19 16:33:13',41,'2020-06-15 16:07:29',41,'2020-06-15 18:07:57',6,'vladimir-rybal-chenko',1,NULL,1,NULL,1),(5781,4111,14,'miro',1,'2020-06-19 19:48:31',41,'2020-06-15 16:09:08',41,'2020-06-15 18:09:30',7,'evgeniia-miroshnichenko',1,NULL,1,NULL,1),(5782,4111,14,'margo',1,'2020-06-19 16:32:54',41,'2020-06-15 16:42:00',41,'2020-06-15 18:43:30',8,NULL,1,NULL,1,NULL,1),(5783,4111,14,'xavier-de-poret',1,'2020-06-19 16:33:33',41,'2020-06-15 16:50:29',41,'2020-06-15 18:59:12',9,NULL,1,NULL,1,NULL,1),(5784,4111,14,'cathy-latham-audibert',1,'2020-06-19 16:32:36',41,'2020-06-16 06:01:13',41,'2020-06-16 08:01:49',10,NULL,1,NULL,1,NULL,1),(5764,4111,14,'loic-dubigeon',1,'2020-07-24 07:07:14',40,'2020-06-13 12:01:43',41,'2020-06-13 14:01:43',210,NULL,0,NULL,0,NULL,0),(5723,1,28,'all',1029,'2020-06-16 16:41:35',41,'2010-09-05 12:42:07',2,'2010-09-05 16:42:07',3,NULL,1,NULL,1,NULL,1),(5724,5788,26,'search',1,'2020-09-13 13:20:35',40,'2010-09-05 13:05:28',2,'2010-09-05 17:05:28',2,NULL,1,NULL,1,NULL,1),(5735,30,4,'artwork-editor',1,'2020-09-15 06:00:17',5972,'2011-09-24 06:23:39',41,'2011-09-24 10:23:39',2,NULL,1,NULL,1,NULL,1),(5738,31,5,'page-lister',1,'2017-02-06 02:27:26',40,'2017-02-06 02:27:26',40,'2017-02-06 04:27:26',9,NULL,1,NULL,1,NULL,1),(5739,3,2,'lister',1,'2017-02-06 02:27:26',40,'2017-02-06 02:27:26',40,'2017-02-06 04:27:26',9,NULL,1,NULL,1,NULL,1),(5740,3,2,'recent-pages',1,'2017-02-06 02:27:46',40,'2017-02-06 02:27:46',40,'2017-02-06 04:27:46',10,NULL,1,NULL,1,NULL,1),(5741,31,5,'page-edit-recent',1,'2017-02-06 02:27:46',40,'2017-02-06 02:27:46',40,'2017-02-06 04:27:46',10,NULL,1,NULL,1,NULL,1),(5742,22,2,'logs',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',2,NULL,1,NULL,1,NULL,1),(5743,31,5,'logs-view',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',11,NULL,1,NULL,1,NULL,1),(5744,31,5,'logs-edit',1,'2017-02-06 02:28:04',40,'2017-02-06 02:28:04',40,'2017-02-06 04:28:04',12,NULL,1,NULL,1,NULL,1),(5745,22,2,'upgrades',1,'2017-02-06 02:29:11',41,'2017-02-06 02:29:11',41,'2017-02-06 04:29:11',3,NULL,1,NULL,1,NULL,1),(5749,31,5,'lang-edit',1,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',13,NULL,1,NULL,1,NULL,1),(5750,22,2,'languages',16,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',4,NULL,1,NULL,1,NULL,1),(5751,5750,45,'default',16,'2020-10-11 15:22:07',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',0,NULL,1,NULL,1,NULL,1),(5752,22,2,'language-translator',1040,'2020-06-11 06:38:48',41,'2020-06-11 06:38:48',41,'2020-06-11 10:38:48',5,NULL,1,NULL,1,NULL,1),(5753,5750,45,'russian',1,'2020-09-18 08:14:55',41,'2020-06-11 06:42:03',41,'2020-06-11 10:42:03',1,NULL,1,NULL,1,NULL,1),(5754,5750,45,'french',1,'2020-09-18 12:03:40',41,'2020-06-11 06:50:10',41,'2020-06-11 10:50:10',2,NULL,1,NULL,1,NULL,1),(5755,5750,45,'swedish',1,'2020-09-18 12:10:42',41,'2020-06-11 06:50:44',41,'2020-06-11 10:50:44',3,NULL,1,NULL,1,NULL,1),(5759,5787,24,'brazil',1,'2020-07-24 07:05:08',40,'2020-06-12 06:41:47',41,'2020-06-12 08:45:01',0,'braziliia',1,NULL,1,NULL,1),(5762,5787,24,'mongol-fer',1,'2020-07-24 07:05:08',40,'2020-06-12 08:31:02',41,'2020-06-12 10:32:09',1,'ru-mongol',1,'fr-mongol',1,'sv-mongol',1),(5763,5787,24,'en-cortege',1,'2020-07-24 07:05:08',40,'2020-06-12 16:08:29',41,'2020-06-12 18:10:07',2,'ru-cortege',1,'fr-cortege',1,'sv-cortege',1),(5767,5788,47,'brands',1,'2020-09-13 13:20:35',40,'2020-06-14 15:24:33',41,'2020-06-14 17:24:33',8,NULL,1,NULL,1,NULL,1),(5769,5767,46,'brand',1,'2020-07-24 07:07:14',40,'2020-06-14 15:49:51',41,'2020-06-14 17:50:54',0,'ru-brand',1,'fr-brand',1,'sv-brand',1),(5785,4111,14,'thierry-hermes',1,'2020-06-21 07:41:26',41,'2020-06-21 07:41:11',41,'2020-06-21 09:41:26',10,NULL,1,NULL,1,NULL,1),(5786,1,56,'countries',1,'2020-07-24 07:05:06',40,'2020-07-24 07:05:06',40,'2020-07-24 09:05:06',8,NULL,0,NULL,0,NULL,0),(5787,5788,58,'artworks',2080,'2020-09-13 16:49:05',5972,'2020-07-24 07:05:08',40,'2020-07-24 09:05:08',9,NULL,1,NULL,1,NULL,1),(5788,1,59,'spot',3077,'2020-10-02 16:38:54',5972,'2020-09-13 13:20:35',40,'2020-09-13 15:20:35',9,NULL,1,NULL,1,NULL,1),(5789,1,61,'h_spot',32,'2020-10-21 18:53:32',41,'2020-09-13 13:20:37',40,'2020-09-13 15:20:37',6,NULL,1,NULL,1,NULL,1),(5790,5789,62,'h_search',1,'2020-09-13 13:20:38',40,'2020-09-13 13:20:38',40,'2020-09-13 15:20:38',0,NULL,1,NULL,1,NULL,1),(5791,5789,64,'h_persons',1,'2020-09-13 13:20:42',40,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',1,NULL,1,NULL,1,NULL,1),(5792,5791,70,'167-christiane-vauzelles',32,'2020-10-13 20:13:24',41,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',0,NULL,1,NULL,1,NULL,1),(5793,5791,70,'168-cathy-latham-audibert',32,'2020-10-13 20:07:16',41,'2020-09-13 13:20:42',40,'2020-09-13 15:20:42',1,NULL,1,NULL,1,NULL,1),(5794,5791,70,'171-evgenia-miro-miroshnichenko',32,'2020-09-17 14:10:26',41,'2020-09-13 13:20:43',40,'2020-09-13 15:20:43',2,NULL,1,NULL,1,NULL,1),(5795,5791,70,'186-dimitri-rybaltchenko',32,'2020-10-13 20:08:05',41,'2020-09-13 13:20:43',40,'2020-09-13 15:20:43',3,NULL,1,NULL,1,NULL,1),(5796,5791,70,'187-aleksandr-zybin',32,'2020-10-13 20:08:50',41,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',4,NULL,1,NULL,1,NULL,1),(5797,5791,70,'188-vladimir-rybaltchenko',32,'2020-09-13 13:21:05',40,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',5,NULL,1,NULL,1,NULL,1),(5798,5791,70,'199-hugo-grygkar',32,'2020-09-17 14:00:49',41,'2020-09-13 13:20:44',40,'2020-09-13 15:20:44',6,NULL,1,NULL,1,NULL,1),(5799,5791,70,'224-philippe-ledoux',32,'2020-09-13 13:20:45',40,'2020-09-13 13:20:45',40,'2020-09-13 15:20:45',7,NULL,1,NULL,1,NULL,1),(5800,5791,70,'226-loc-dubigeon',32,'2020-10-13 20:06:47',41,'2020-09-13 13:20:45',40,'2020-09-13 15:20:45',8,NULL,1,NULL,1,NULL,1),(5801,5791,70,'242-margo',32,'2020-10-11 15:29:22',41,'2020-09-13 13:20:46',40,'2020-09-13 15:20:46',9,NULL,1,NULL,1,NULL,1),(5802,5791,70,'282-franoise-de-la-perrire',32,'2020-10-13 20:11:50',41,'2020-09-13 13:20:46',40,'2020-09-13 15:20:46',10,NULL,1,NULL,1,NULL,1),(5803,5791,70,'301-michel-duchne',32,'2020-09-13 13:20:47',40,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',11,NULL,1,NULL,1,NULL,1),(5804,5791,70,'309-cyrille-diatkine',32,'2020-09-13 13:20:47',40,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',12,NULL,1,NULL,1,NULL,1),(5805,5791,70,'310-jean-de-fougerolle',32,'2020-10-13 20:12:29',41,'2020-09-13 13:20:47',40,'2020-09-13 15:20:47',13,NULL,1,NULL,1,NULL,1),(5806,5791,70,'313-julia-abadie',32,'2020-09-13 13:20:48',40,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',14,NULL,1,NULL,1,NULL,1),(5807,5791,70,'314-henri-dorigny',32,'2020-09-13 13:20:48',40,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',15,NULL,1,NULL,1,NULL,1),(5808,5791,70,'315-henri-de-linars',32,'2020-09-13 13:20:48',40,'2020-09-13 13:20:48',40,'2020-09-13 15:20:48',16,NULL,1,NULL,1,NULL,1),(5809,5791,70,'316-joachim-metz',32,'2020-09-13 13:20:49',40,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',17,NULL,1,NULL,1,NULL,1),(5810,5791,70,'317-daphne-duchesne',32,'2020-09-13 13:20:49',40,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',18,NULL,1,NULL,1,NULL,1),(5811,5791,70,'318-xavier-de-poret',32,'2020-09-14 10:03:16',41,'2020-09-13 13:20:49',40,'2020-09-13 15:20:49',19,NULL,1,NULL,1,NULL,1),(5812,5791,70,'319-bali-barret',32,'2020-10-13 20:11:07',41,'2020-09-13 13:20:50',40,'2020-09-13 15:20:50',20,NULL,1,NULL,1,NULL,1),(5813,5791,70,'320-benot-pierre-emery',32,'2020-09-15 16:57:11',41,'2020-09-13 13:20:50',40,'2020-09-13 15:20:50',21,NULL,1,NULL,1,NULL,1),(5814,5791,70,'321-franoise-heron',32,'2020-09-13 13:20:51',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',22,NULL,1,NULL,1,NULL,1),(5815,5791,70,'322-catherine-baschet',32,'2020-09-13 13:20:51',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',23,NULL,1,NULL,1,NULL,1),(5816,5791,70,'323-laurence-bourthoumieux',32,'2020-09-13 13:20:51',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',24,NULL,1,NULL,1,NULL,1),(5817,5791,70,'324-antoine-de-jacquelot',32,'2020-09-13 13:20:52',40,'2020-09-13 13:20:51',40,'2020-09-13 15:20:51',25,NULL,1,NULL,1,NULL,1),(5818,5791,70,'325-alice-shirley',32,'2020-09-13 13:20:52',40,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',26,NULL,1,NULL,1,NULL,1),(5819,5791,70,'326-hubert-de-watrigant',32,'2020-09-13 13:20:52',40,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',27,NULL,1,NULL,1,NULL,1),(5820,5791,70,'327-pierre-alexis-dumas',32,'2020-09-15 16:55:28',41,'2020-09-13 13:20:52',40,'2020-09-13 15:20:52',28,NULL,1,NULL,1,NULL,1),(5821,5791,70,'328-jean-louis-dumas',32,'2020-09-16 12:59:26',41,'2020-09-13 13:20:53',40,'2020-09-13 15:20:53',29,NULL,1,NULL,1,NULL,1),(5822,5791,70,'329-annie-faivre',32,'2020-09-13 13:20:53',40,'2020-09-13 13:20:53',40,'2020-09-13 15:20:53',30,NULL,1,NULL,1,NULL,1),(5823,5791,70,'330-thierry-herms',32,'2020-09-15 16:34:08',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',31,NULL,1,NULL,1,NULL,1),(5824,5791,70,'2298-robert-dumas',32,'2020-09-15 16:52:00',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',32,NULL,1,NULL,1,NULL,1),(5825,5791,70,'2307-mile-maurice-herms',32,'2020-09-15 16:35:03',41,'2020-09-13 13:20:54',40,'2020-09-13 15:20:54',33,NULL,1,NULL,1,NULL,1),(5826,5791,70,'2308-charles-mile-herms',32,'2020-09-15 16:52:54',41,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',34,NULL,1,NULL,1,NULL,1),(5827,5789,65,'h_sellers',1,'2020-09-18 12:20:03',41,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',2,NULL,1,NULL,1,NULL,1),(5828,5827,71,'172-gifts',32,'2020-09-13 13:20:55',40,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',0,NULL,1,NULL,1,NULL,1),(5829,5827,71,'174-march-de-plainpalais',32,'2020-10-02 15:16:12',41,'2020-09-13 13:20:55',40,'2020-09-13 15:20:55',1,NULL,1,NULL,1,NULL,1),(5830,5827,71,'175-bukowskis',1,'2020-10-02 15:03:21',41,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',2,NULL,1,NULL,1,NULL,1),(5831,5827,71,'178-myrorna',32,'2020-09-13 13:20:56',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',3,NULL,1,NULL,1,NULL,1),(5832,5827,71,'179-stockholms-auktionsverk',32,'2020-09-13 13:20:56',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',4,NULL,1,NULL,1,NULL,1),(5833,5827,71,'182-stockholms-stadsmission',32,'2020-09-13 13:20:56',40,'2020-09-13 13:20:56',40,'2020-09-13 15:20:56',5,NULL,1,NULL,1,NULL,1),(5834,5789,66,'h_brands',1,'2020-09-18 12:19:21',41,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',3,NULL,1,NULL,1,NULL,1),(5835,5834,69,'185-herms',1,'2020-09-17 14:28:47',41,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',0,NULL,1,NULL,1,NULL,1),(5836,5834,69,'196-salvatore-ferrogamo',32,'2020-10-11 17:41:12',41,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',1,NULL,1,NULL,1,NULL,1),(5837,5834,69,'243-tiffany-co',32,'2020-10-01 19:37:16',41,'2020-09-13 13:20:57',40,'2020-09-13 15:20:57',2,NULL,1,NULL,1,NULL,1),(5838,5834,69,'246-nina-ricci',1,'2020-10-13 20:02:26',41,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',3,NULL,1,NULL,1,NULL,1),(5839,5834,69,'280-baume-mercier',32,'2020-09-28 16:50:28',41,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',4,NULL,1,NULL,1,NULL,1),(5840,5834,69,'2279-lanvin',32,'2020-10-02 14:41:21',41,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',5,NULL,1,NULL,1,NULL,1),(5841,5834,69,'2297-christian-dior',32,'2020-09-23 17:28:32',41,'2020-09-13 13:20:58',40,'2020-09-13 15:20:58',6,NULL,1,NULL,1,NULL,1),(5842,5789,63,'197-maison-carr-foundation',1025,'2020-09-13 13:24:04',41,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',4,NULL,1,NULL,1,NULL,1),(5843,5789,67,'h_artworks',1,'2020-09-13 13:20:59',40,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',5,NULL,1,NULL,1,NULL,1),(5844,5843,60,'169-cheval-turc',1,'2020-09-15 05:52:17',5972,'2020-09-13 13:20:59',40,'2020-09-13 15:20:59',0,NULL,1,NULL,1,NULL,1),(5845,5842,60,'198-hemisphaerium-coeli-boreale',1,'2020-09-13 13:21:00',40,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',0,NULL,1,NULL,1,NULL,1),(5846,5842,60,'202-jeu-de-omnibus-et-dameblanche',1,'2020-09-13 13:21:00',40,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',1,NULL,1,NULL,1,NULL,1),(5847,5843,60,'227-les-folies-du-ciel',1,'2020-09-14 08:27:52',5972,'2020-09-13 13:21:00',40,'2020-09-13 15:21:00',1,NULL,1,NULL,1,NULL,1),(5848,5843,60,'244',32,'2020-09-13 13:21:01',40,'2020-09-13 13:21:01',40,'2020-09-13 15:21:01',2,NULL,1,NULL,1,NULL,1),(5849,5843,60,'281-les-voitures-transformation',1,'2020-09-16 06:17:33',41,'2020-09-13 13:21:01',40,'2020-09-13 15:21:01',3,NULL,1,NULL,1,NULL,1),(5850,5843,60,'284-brides-de-gala',1,'2020-09-13 13:21:02',40,'2020-09-13 13:21:02',40,'2020-09-13 15:21:02',4,NULL,1,NULL,1,NULL,1),(5851,5843,60,'298-grand-cortge-a-moscou',1,'2020-09-16 14:09:02',41,'2020-09-13 13:21:02',40,'2020-09-13 15:21:02',5,NULL,1,NULL,1,NULL,1),(5852,5842,60,'2285-bolduc',1,'2020-09-15 05:55:02',5972,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',2,NULL,1,NULL,1,NULL,1),(5853,5789,68,'h_possessions',1,'2020-09-18 12:20:25',41,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',6,NULL,1,NULL,1,NULL,1),(5854,5853,72,'223-purchase-2010-05-04',32,'2020-09-19 11:42:31',41,'2020-09-13 13:21:03',40,'2020-09-13 15:21:03',0,NULL,1,NULL,1,NULL,1),(5855,5853,72,'241-purchase-2018-04-28',32,'2020-09-19 11:43:04',41,'2020-09-13 13:21:04',40,'2020-09-13 15:21:04',1,NULL,1,NULL,1,NULL,1),(5856,5853,72,'304-purchase-2017-10-05',32,'2020-09-16 15:41:46',41,'2020-09-13 13:21:04',40,'2020-09-13 15:21:04',2,NULL,1,NULL,1,NULL,1),(5857,1,79,'a_spot',1,'2020-10-19 09:43:11',41,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',7,NULL,1,NULL,1,NULL,1),(5858,5857,82,'a_persons',1,'2020-09-13 13:21:09',40,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',0,NULL,1,NULL,1,NULL,1),(5859,5858,74,'13-rembrandt-van-rijn',32,'2020-09-13 13:21:10',40,'2020-09-13 13:21:09',40,'2020-09-13 15:21:09',0,NULL,1,NULL,1,NULL,1),(5863,5858,74,'14-jan-van-eyck',32,'2020-09-13 13:21:11',40,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',1,NULL,1,NULL,1,NULL,1),(5861,5857,81,'a_schools',1,'2020-09-13 13:21:10',40,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',1,NULL,1,NULL,1,NULL,1),(5862,5861,73,'dutch-school',1,'2020-09-13 13:21:21',40,'2020-09-13 13:21:10',40,'2020-09-13 15:21:10',0,NULL,1,NULL,1,NULL,1),(5866,5858,74,'15-valentin-de-boulogne',32,'2020-09-13 13:21:11',40,'2020-09-13 13:21:11',40,'2020-09-13 15:21:11',2,NULL,1,NULL,1,NULL,1),(5865,5861,73,'flemish-painting-school',1,'2020-09-13 13:21:49',40,'2020-09-13 13:21:11',40,'2020-09-13 15:21:11',1,NULL,1,NULL,1,NULL,1),(5867,5858,74,'17-unknown-artist',32,'2020-09-13 13:21:12',40,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',3,NULL,1,NULL,1,NULL,1),(5868,5858,74,'18-raffaele-frigerio',32,'2020-09-13 13:21:12',40,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',4,NULL,1,NULL,1,NULL,1),(5869,5858,74,'55-viacheslav-kalinin',32,'2020-09-13 13:21:12',40,'2020-09-13 13:21:12',40,'2020-09-13 15:21:12',5,NULL,1,NULL,1,NULL,1),(5875,5858,74,'206-abraham-storck',32,'2020-09-13 13:21:15',40,'2020-09-13 13:21:15',40,'2020-09-13 15:21:15',10,NULL,1,NULL,1,NULL,1),(5871,5858,74,'73-christer-edwardson-schmiterlw',32,'2020-09-13 13:21:13',40,'2020-09-13 13:21:13',40,'2020-09-13 15:21:13',7,NULL,1,NULL,1,NULL,1),(5872,5858,74,'74-a-collomb',32,'2020-09-13 13:21:13',40,'2020-09-13 13:21:13',40,'2020-09-13 15:21:13',8,NULL,1,NULL,1,NULL,1),(5873,5858,74,'116-l-vilardi',32,'2020-09-13 13:21:14',40,'2020-09-13 13:21:14',40,'2020-09-13 15:21:14',9,NULL,1,NULL,1,NULL,1),(5874,5858,74,'158-salomon-koninck',32,'2020-09-13 13:21:14',40,'2020-09-13 13:21:14',40,'2020-09-13 15:21:14',10,NULL,1,NULL,1,NULL,1),(5878,5858,74,'276-robert-falk',32,'2020-09-13 13:21:16',40,'2020-09-13 13:21:16',40,'2020-09-13 15:21:16',12,NULL,1,NULL,1,NULL,1),(5877,5858,74,'233-peter-joseph-minjon',32,'2020-09-13 13:21:16',40,'2020-09-13 13:21:15',40,'2020-09-13 15:21:15',11,NULL,1,NULL,1,NULL,1),(5879,5858,74,'286-basil-samoylov',32,'2020-09-13 13:21:16',40,'2020-09-13 13:21:16',40,'2020-09-13 15:21:16',13,NULL,1,NULL,1,NULL,1),(5880,5858,74,'293-andries-vermeulen',32,'2020-09-13 13:21:17',40,'2020-09-13 13:21:17',40,'2020-09-13 15:21:17',14,NULL,1,NULL,1,NULL,1),(5883,5858,74,'2299-abraham-teniers',32,'2020-09-13 13:21:49',40,'2020-09-13 13:21:18',40,'2020-09-13 15:21:18',16,NULL,1,NULL,1,NULL,1),(5882,5858,74,'2163-haik-mhitaryan',32,'2020-09-13 13:21:18',40,'2020-09-13 13:21:17',40,'2020-09-13 15:21:17',15,NULL,1,NULL,1,NULL,1),(5885,5858,74,'2306-david-teniers-ii-the-younger',32,'2020-09-13 13:21:49',40,'2020-09-13 13:21:19',40,'2020-09-13 15:21:19',17,NULL,1,NULL,1,NULL,1),(5887,5858,74,'2314-vladimir-makovskiy',1,'2020-09-13 13:21:20',40,'2020-09-13 13:21:20',40,'2020-09-13 15:21:20',18,NULL,1,NULL,1,NULL,1),(5892,5858,74,'3410-marcel-genay',32,'2020-09-13 13:21:22',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',21,NULL,1,NULL,1,NULL,1),(5889,5858,74,'2917-unknown-dutch-artist',32,'2020-09-13 13:21:21',40,'2020-09-13 13:21:20',40,'2020-09-13 15:21:20',20,NULL,1,NULL,1,NULL,1),(5893,5857,83,'a_sellers',1,'2020-09-13 13:21:22',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',2,NULL,1,NULL,1,NULL,1),(5891,5858,74,'2918-unknown-flemish-artist',32,'2020-09-13 13:21:22',40,'2020-09-13 13:21:21',40,'2020-09-13 15:21:21',21,NULL,1,NULL,1,NULL,1),(5894,5893,78,'4-bukowskis-auction',1,'2020-09-13 13:21:22',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',0,NULL,1,NULL,1,NULL,1),(5895,5893,78,'5-metropol-auction',1,'2020-09-13 13:21:22',40,'2020-09-13 13:21:22',40,'2020-09-13 15:21:22',1,NULL,1,NULL,1,NULL,1),(5896,5893,78,'115-own-auktion',1,'2020-09-13 13:21:23',40,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',2,NULL,1,NULL,1,NULL,1),(5897,5893,78,'130-uppsala-auktionskammare',1,'2020-09-13 13:21:23',40,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',3,NULL,1,NULL,1,NULL,1),(5898,5893,78,'176-stockholms-auktionsverk',32,'2020-09-13 13:21:23',40,'2020-09-13 13:21:23',40,'2020-09-13 15:21:23',4,NULL,1,NULL,1,NULL,1),(5899,5857,80,'a_collections',1,'2020-09-13 13:21:24',40,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',3,NULL,1,NULL,1,NULL,1),(5900,5899,75,'121-gemldegalerie-old-masters',1,'2020-09-13 13:21:24',40,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',0,NULL,1,NULL,1,NULL,1),(5901,5899,75,'122-unknown-collection',32,'2020-09-13 13:21:24',40,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',1,NULL,1,NULL,1,NULL,1),(5902,5899,75,'123-non-leiden-collection',32,'2020-09-13 13:21:24',40,'2020-09-13 13:21:24',40,'2020-09-13 15:21:24',2,NULL,1,NULL,1,NULL,1),(5903,5899,75,'124-non-leiden-collection-2',1,'2020-09-13 13:21:25',40,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',3,NULL,1,NULL,1,NULL,1),(5904,5899,75,'166-louvre',1,'2020-09-13 13:21:25',40,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',4,NULL,1,NULL,1,NULL,1),(5905,5899,75,'234-lost-auctions',1,'2020-09-13 13:21:25',40,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',5,NULL,1,NULL,1,NULL,1),(5906,5857,84,'a_artworks',1,'2020-09-13 13:21:26',40,'2020-09-13 13:21:25',40,'2020-09-13 15:21:25',4,NULL,1,NULL,1,NULL,1),(5907,5906,77,'10-card-sharpers',1,'2020-09-13 13:21:26',40,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',0,NULL,1,NULL,1,NULL,1),(5908,5906,77,'23-italian-portrait-of-the-man',32,'2020-09-13 13:21:26',40,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',1,NULL,1,NULL,1,NULL,1),(5909,5906,77,'26-italian-portrait-of-the-man',32,'2020-09-13 13:21:43',40,'2020-09-13 13:21:26',40,'2020-09-13 15:21:26',2,NULL,1,NULL,1,NULL,1),(5910,5906,77,'29-card-sharpers',1,'2020-09-13 13:21:43',40,'2020-09-13 13:21:27',40,'2020-09-13 15:21:27',3,NULL,1,NULL,1,NULL,1),(5911,5906,77,'39-proud-rider',1,'2020-09-13 13:21:43',40,'2020-09-13 13:21:28',40,'2020-09-13 15:21:28',4,NULL,1,NULL,1,NULL,1),(5912,5906,77,'45-in-the-sea-1',1,'2020-09-13 13:21:44',40,'2020-09-13 13:21:28',40,'2020-09-13 15:21:28',5,NULL,1,NULL,1,NULL,1),(5913,5906,77,'56-street-life',1,'2020-09-13 13:21:44',40,'2020-09-13 13:21:29',40,'2020-09-13 15:21:29',6,NULL,1,NULL,1,NULL,1),(5914,5906,77,'62-musician-and-gamblers',1,'2020-09-13 13:21:45',40,'2020-09-13 13:21:29',40,'2020-09-13 15:21:29',7,NULL,1,NULL,1,NULL,1),(5915,5906,77,'2950-a-boor-playing-a-lute-in-an',1,'2020-09-13 13:21:30',40,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',8,NULL,1,NULL,1,NULL,1),(5916,5906,77,'68-trip-to-japan',1,'2020-09-13 13:21:45',40,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',9,NULL,1,NULL,1,NULL,1),(5917,5906,77,'109-juuls-bastion',1,'2020-09-13 13:21:46',40,'2020-09-13 13:21:30',40,'2020-09-13 15:21:30',10,NULL,1,NULL,1,NULL,1),(5918,5906,77,'112-swedish-weather',1,'2020-09-13 13:21:46',40,'2020-09-13 13:21:31',40,'2020-09-13 15:21:31',11,NULL,1,NULL,1,NULL,1),(5919,5906,77,'125-pub-scenes',1,'2020-09-13 13:21:32',40,'2020-09-13 13:21:31',40,'2020-09-13 15:21:31',12,NULL,1,NULL,1,NULL,1),(5920,5906,77,'131-house-and-master',1,'2020-09-13 13:21:46',40,'2020-09-13 13:21:32',40,'2020-09-13 15:21:32',13,NULL,1,NULL,1,NULL,1),(5921,5906,77,'147-butterfly',1,'2020-09-13 13:21:47',40,'2020-09-13 13:21:32',40,'2020-09-13 15:21:32',14,NULL,1,NULL,1,NULL,1),(5922,5906,77,'152-philosopher-in-meditation',32,'2020-09-13 13:21:33',40,'2020-09-13 13:21:33',40,'2020-09-13 15:21:33',15,NULL,1,NULL,1,NULL,1),(5923,5906,77,'155-philosopher-with-an-open-book',1,'2020-09-13 13:21:33',40,'2020-09-13 13:21:33',40,'2020-09-13 15:21:33',16,NULL,1,NULL,1,NULL,1),(5924,5906,77,'159-philosopher-with-an-open-book',1,'2020-09-13 13:21:47',40,'2020-09-13 13:21:33',40,'2020-09-13 15:21:33',17,NULL,1,NULL,1,NULL,1),(5925,5906,77,'189-pastoral-landscape',1,'2020-09-13 13:21:48',40,'2020-09-13 13:21:34',40,'2020-09-13 15:21:34',18,NULL,1,NULL,1,NULL,1),(5926,5906,77,'205-harbor',1,'2020-09-13 13:21:35',40,'2020-09-13 13:21:35',40,'2020-09-13 15:21:35',19,NULL,1,NULL,1,NULL,1),(5927,5906,77,'235-city-in-winter',1,'2020-09-13 13:21:35',40,'2020-09-13 13:21:35',40,'2020-09-13 15:21:35',20,NULL,1,NULL,1,NULL,1),(5928,5906,77,'238-city-in-summer',1,'2020-09-13 13:21:36',40,'2020-09-13 13:21:36',40,'2020-09-13 15:21:36',21,NULL,1,NULL,1,NULL,1),(5929,5906,77,'248-in-the-tavern',1,'2020-09-13 13:21:37',40,'2020-09-13 13:21:36',40,'2020-09-13 15:21:36',22,NULL,1,NULL,1,NULL,1),(5930,5858,74,'2911-flemish-painting-school',32,'2020-10-02 16:40:22',5972,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',22,NULL,1,NULL,1,NULL,1),(5931,5906,77,'277-paris',1,'2020-09-13 13:21:37',40,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',23,NULL,1,NULL,1,NULL,1),(5932,5906,77,'287-friends',1,'2020-09-13 13:21:48',40,'2020-09-13 13:21:37',40,'2020-09-13 15:21:37',24,NULL,1,NULL,1,NULL,1),(5933,5906,77,'294-winter',1,'2020-09-13 13:21:38',40,'2020-09-13 13:21:38',40,'2020-09-13 15:21:38',25,NULL,1,NULL,1,NULL,1),(5934,5906,77,'1770-andalusia',1,'2020-09-13 13:21:39',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',26,NULL,1,NULL,1,NULL,1),(5935,5906,77,'2291-in-the-sea-2',1,'2020-09-13 13:21:44',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',27,NULL,1,NULL,1,NULL,1),(5936,5906,77,'2300-a-musical-gathering-of-cats',1,'2020-09-13 13:21:40',40,'2020-09-13 13:21:39',40,'2020-09-13 15:21:39',28,NULL,1,NULL,1,NULL,1),(5937,5906,77,'2309-the-backgammon-players',1,'2020-09-13 13:21:48',40,'2020-09-13 13:21:40',40,'2020-09-13 15:21:40',29,NULL,1,NULL,1,NULL,1),(5938,5906,77,'2312-the-tric-trac-players',32,'2020-09-13 13:21:41',40,'2020-09-13 13:21:41',40,'2020-09-13 15:21:41',30,NULL,1,NULL,1,NULL,1),(5939,5906,77,'2945-party',1,'2020-09-13 13:21:48',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',31,NULL,1,NULL,1,NULL,1),(5940,5906,77,'2950-a-boor-playing-a-lute-in-an-1',1,'2020-09-13 13:21:42',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',32,NULL,1,NULL,1,NULL,1),(5941,5857,85,'a_possessions',1,'2020-09-13 13:21:42',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',5,NULL,1,NULL,1,NULL,1),(5942,5941,76,'52-purchase-2017-01-16',32,'2020-09-13 13:21:43',40,'2020-09-13 13:21:42',40,'2020-09-13 15:21:42',0,NULL,1,NULL,1,NULL,1),(5943,5941,76,'53-purchase-2018-02-13',32,'2020-09-13 13:21:43',40,'2020-09-13 13:21:43',40,'2020-09-13 15:21:43',1,NULL,1,NULL,1,NULL,1),(5944,5941,76,'95-purchase-2017-11-11',32,'2020-09-13 13:21:43',40,'2020-09-13 13:21:43',40,'2020-09-13 15:21:43',2,NULL,1,NULL,1,NULL,1),(5945,5941,76,'106-purchase-2016-08-29',32,'2020-09-13 13:21:44',40,'2020-09-13 13:21:44',40,'2020-09-13 15:21:44',3,NULL,1,NULL,1,NULL,1),(5946,5941,76,'93-purchase-2010-12-26',32,'2020-09-13 13:21:44',40,'2020-09-13 13:21:44',40,'2020-09-13 15:21:44',4,NULL,1,NULL,1,NULL,1),(5947,5941,76,'67-purchase-2010-04-11',32,'2020-09-13 13:21:45',40,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',5,NULL,1,NULL,1,NULL,1),(5948,5941,76,'92-purchase-2010-12-11',32,'2020-09-13 13:21:45',40,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',6,NULL,1,NULL,1,NULL,1),(5949,5941,76,'118-purchase-2001-01-26',32,'2020-09-13 13:21:46',40,'2020-09-13 13:21:45',40,'2020-09-13 15:21:45',7,NULL,1,NULL,1,NULL,1),(5950,5941,76,'117-purchase-2001-01-26',32,'2020-09-13 13:21:46',40,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',8,NULL,1,NULL,1,NULL,1),(5951,5941,76,'136-purchase-2017-07-31',32,'2020-09-13 13:21:46',40,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',9,NULL,1,NULL,1,NULL,1),(5952,5941,76,'148-purchase-2010-12-11',32,'2020-09-13 13:21:47',40,'2020-09-13 13:21:46',40,'2020-09-13 15:21:46',10,NULL,1,NULL,1,NULL,1),(5953,5941,76,'165-purchase-2018-02-19',32,'2020-09-13 13:21:47',40,'2020-09-13 13:21:47',40,'2020-09-13 15:21:47',11,NULL,1,NULL,1,NULL,1),(5954,5941,76,'225-purchase-2018-04-24',32,'2020-09-13 13:21:48',40,'2020-09-13 13:21:47',40,'2020-09-13 15:21:47',12,NULL,1,NULL,1,NULL,1),(5955,5941,76,'289-purchase-2010-03-12',32,'2020-09-13 13:21:48',40,'2020-09-13 13:21:48',40,'2020-09-13 15:21:48',13,NULL,1,NULL,1,NULL,1),(5956,5941,76,'2870-purchase-2018-06-17',32,'2020-09-13 13:21:48',40,'2020-09-13 13:21:48',40,'2020-09-13 15:21:48',14,NULL,1,NULL,1,NULL,1),(5957,1,88,'d_spot',1,'2020-10-19 09:40:24',41,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',8,NULL,1,NULL,1,NULL,1),(5958,5957,89,'d_persons',1,'2020-09-13 13:21:51',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,1),(5959,5958,87,'2857-lyudmila-vereshchagina',32,'2020-09-13 13:21:51',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,1),(5960,5957,90,'d_artworks',32,'2020-09-13 13:21:51',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',1,NULL,1,NULL,1,NULL,1),(5961,5960,92,'2865-shchuka',32,'2020-09-13 13:21:52',40,'2020-09-13 13:21:51',40,'2020-09-13 15:21:51',0,NULL,1,NULL,1,NULL,1),(5972,29,3,'margo',1,'2020-09-13 16:04:05',41,'2020-09-13 16:03:24',41,'2020-09-13 18:04:05',2,NULL,1,NULL,1,NULL,1),(5974,5843,60,'afrika',1,'2020-09-13 16:59:42',5972,'2020-09-13 16:59:12',5972,'2020-09-13 18:59:42',10,NULL,1,NULL,1,NULL,1),(5965,5843,60,'armes-de-paris',1,'2020-09-13 14:47:14',41,'2020-09-13 14:46:01',41,'2020-09-13 16:47:14',6,NULL,1,NULL,1,NULL,1),(5966,5843,60,'armes-de-chasse',1,'2020-11-01 18:27:23',41,'2020-09-13 14:51:24',41,'2020-09-13 16:52:12',7,NULL,1,NULL,1,NULL,1),(5967,5791,70,'marie-francoise-faconnet',1,'2020-09-13 15:04:28',41,'2020-09-13 15:00:34',41,'2020-09-13 17:00:49',35,NULL,1,NULL,1,NULL,1),(5968,5791,70,'la-torre',1,'2020-09-15 16:58:27',41,'2020-09-13 15:09:36',41,'2020-09-13 17:10:02',36,NULL,1,NULL,1,NULL,1),(5969,5843,60,'astrologie-nouvelle',1,'2020-09-13 15:15:47',41,'2020-09-13 15:13:19',41,'2020-09-13 17:13:23',8,NULL,1,NULL,1,NULL,1),(5971,5843,60,'azulejos',1,'2020-09-13 15:24:52',41,'2020-09-13 15:23:07',41,'2020-09-13 17:23:15',9,NULL,1,NULL,1,NULL,1),(5973,5791,70,'robert-dallet',1,'2020-09-13 16:56:37',5972,'2020-09-13 16:55:19',5972,'2020-09-13 18:56:10',37,NULL,1,NULL,1,NULL,1),(5975,5843,60,'avenue-des-acacias',1,'2020-09-13 17:08:38',5972,'2020-09-13 17:07:50',5972,'2020-09-13 19:08:38',11,NULL,1,NULL,1,NULL,1),(5976,5843,60,'brazil',1,'2020-09-17 08:02:05',41,'2020-09-14 08:17:38',5972,'2020-09-14 10:17:46',12,NULL,1,NULL,1,NULL,1),(5977,5843,60,'bride-de-cour',1,'2020-09-16 06:06:28',41,'2020-09-14 14:14:07',5972,'2020-09-14 16:15:12',13,NULL,1,NULL,1,NULL,1),(5978,5843,60,'bride-de-gala',1,'2020-09-14 14:21:52',5972,'2020-09-14 14:19:55',5972,'2020-09-14 16:21:09',14,NULL,1,NULL,1,NULL,1),(5979,5843,60,'casse-noisette',1,'2020-09-16 05:43:52',41,'2020-09-14 14:23:16',5972,'2020-09-14 16:24:31',15,NULL,1,NULL,1,NULL,1),(5980,5843,60,'cavalcadur',1,'2020-09-16 07:05:15',5972,'2020-09-14 14:26:16',5972,'2020-09-14 16:28:46',16,NULL,1,NULL,1,NULL,1),(5981,5843,60,'cavaliers-peuls',1,'2020-09-16 07:04:34',5972,'2020-09-14 14:39:47',5972,'2020-09-14 16:41:09',17,NULL,1,NULL,1,NULL,1),(5982,5843,60,'charreada',1,'2020-09-16 07:03:32',5972,'2020-09-14 14:42:35',5972,'2020-09-14 16:42:46',18,NULL,1,NULL,1,NULL,1),(5983,5844,27,'clefs',1,'2020-09-14 14:46:21',5972,'2020-09-14 14:45:42',5972,'2020-09-14 16:46:14',0,NULL,1,NULL,1,NULL,1),(5984,5843,60,'clefs',1,'2020-09-16 07:03:57',5972,'2020-09-14 14:47:34',5972,'2020-09-14 16:48:11',19,NULL,1,NULL,1,NULL,1),(5985,5843,60,'clic-clac',1,'2020-09-16 06:59:48',5972,'2020-09-14 14:49:22',5972,'2020-09-14 16:49:52',20,NULL,1,NULL,1,NULL,1),(5986,5843,60,'coqs',1,'2020-09-16 05:47:02',41,'2020-09-14 14:51:11',5972,'2020-09-14 16:53:57',21,NULL,1,NULL,1,NULL,1),(5987,5843,60,'couvee-d-hermes',1,'2020-09-14 14:57:44',5972,'2020-09-14 14:56:24',5972,'2020-09-14 16:57:40',22,NULL,1,NULL,1,NULL,1),(5988,5843,60,'cuillers-d-afrique',1,'2020-09-14 15:01:11',5972,'2020-09-14 15:00:06',5972,'2020-09-14 17:01:06',23,NULL,1,NULL,1,NULL,1),(5989,5843,60,'cuivreries-variant',1,'2020-09-14 15:06:54',5972,'2020-09-14 15:05:15',5972,'2020-09-14 17:06:08',24,NULL,1,NULL,1,NULL,1),(5990,5843,60,'eperon-d-or',1,'2020-11-01 18:36:06',41,'2020-09-14 15:07:57',5972,'2020-09-14 17:08:57',25,NULL,1,NULL,1,NULL,1),(5991,5843,60,'equitation-japonaise',1,'2020-09-14 15:12:01',5972,'2020-09-14 15:11:01',5972,'2020-09-14 17:11:57',26,NULL,1,NULL,1,NULL,1),(5992,5843,60,'escuela-andalusa',1,'2020-09-14 15:14:26',5972,'2020-09-14 15:13:20',5972,'2020-09-14 17:14:21',27,NULL,1,NULL,1,NULL,1),(5993,5843,60,'etriers',1,'2020-09-14 15:17:05',5972,'2020-09-14 15:15:31',5972,'2020-09-14 17:17:02',28,NULL,1,NULL,1,NULL,1),(5994,5843,60,'ex-libris-gavroche',1,'2020-09-14 15:22:14',5972,'2020-09-14 15:19:11',5972,'2020-09-14 17:21:27',29,NULL,1,NULL,1,NULL,1),(5995,5843,60,'etude-pour-une-parure',1,'2020-09-16 06:59:10',5972,'2020-09-14 15:23:51',5972,'2020-09-14 17:26:53',30,NULL,1,NULL,1,NULL,1),(5996,5791,70,'florance-manlik',1,'2020-09-14 15:31:20',5972,'2020-09-14 15:29:29',5972,'2020-09-14 17:31:04',38,NULL,1,NULL,1,NULL,1),(5997,5843,60,'fafandole',1,'2020-09-14 15:34:32',5972,'2020-09-14 15:33:09',5972,'2020-09-14 17:34:17',31,NULL,1,NULL,1,NULL,1),(5998,5843,60,'festival-des-amazones',1,'2020-09-14 15:38:13',5972,'2020-09-14 15:37:17',5972,'2020-09-14 17:38:09',32,NULL,1,NULL,1,NULL,1),(5999,5843,60,'flore',1,'2020-09-14 15:41:16',5972,'2020-09-14 15:39:13',5972,'2020-09-14 17:40:20',33,NULL,1,NULL,1,NULL,1),(6000,5843,60,'gibiers',1,'2020-09-14 15:44:23',5972,'2020-09-14 15:43:05',5972,'2020-09-14 17:43:55',34,NULL,1,NULL,1,NULL,1),(6001,5843,60,'grand-manege',1,'2020-09-14 15:46:46',5972,'2020-09-14 15:45:31',5972,'2020-09-14 17:46:41',35,NULL,1,NULL,1,NULL,1),(6002,5843,60,'grand-tenue',1,'2020-09-14 15:48:25',5972,'2020-09-14 15:47:51',5972,'2020-09-14 17:48:25',36,NULL,1,NULL,1,NULL,1),(6003,5786,57,'france',1,'2020-09-28 17:10:20',41,'2020-09-17 14:00:49',41,'2020-09-17 16:00:49',0,NULL,0,NULL,0,NULL,0),(6004,5786,57,'ukraine',1,'2020-09-17 14:07:07',41,'2020-09-17 14:06:28',41,'2020-09-17 16:07:07',1,'ukraina',1,NULL,0,'ukraina',1),(6005,5843,60,'libre-comme-lair',1,'2020-09-19 05:25:47',41,'2020-09-18 15:50:38',41,'2020-09-18 17:50:57',37,NULL,1,NULL,1,NULL,1),(6006,5834,69,'chanel',1,'2020-09-23 17:25:36',41,'2020-09-23 17:05:50',41,'2020-09-23 19:06:21',7,NULL,1,NULL,1,NULL,1),(6007,5786,57,'italie',1,'2020-09-28 17:09:34',41,'2020-09-28 17:00:49',41,'2020-09-28 19:00:49',2,NULL,0,NULL,0,NULL,0),(6008,5834,69,'gucci',1,'2020-10-01 18:57:11',41,'2020-09-28 17:13:30',41,'2020-09-28 19:13:36',8,NULL,1,NULL,1,NULL,1),(6009,5786,57,'usa',1,'2020-10-01 19:50:12',41,'2020-10-01 18:46:25',41,'2020-10-01 20:46:25',3,NULL,0,NULL,0,NULL,0),(6010,5786,57,'sweden',1,'2020-10-11 15:32:44',41,'2020-10-11 15:29:22',41,'2020-10-11 17:29:22',4,NULL,0,NULL,0,NULL,0),(6011,5834,69,'kenzo',1,'2020-10-11 15:43:37',41,'2020-10-11 15:42:43',41,'2020-10-11 17:43:37',9,NULL,1,NULL,1,NULL,1),(6012,5786,57,'russia',1,'2020-10-13 20:10:03',41,'2020-10-13 20:08:50',41,'2020-10-13 22:08:50',5,NULL,0,NULL,0,NULL,0),(6013,5843,60,'lanvin',1,'2020-11-01 16:02:51',41,'2020-11-01 16:01:52',41,'2020-11-01 17:02:51',38,NULL,1,NULL,1,NULL,1),(6014,5843,60,'tiger',1,'2020-11-01 16:05:26',41,'2020-11-01 16:04:56',41,'2020-11-01 17:05:26',39,NULL,1,NULL,1,NULL,1),(6015,5834,69,'yves-saint-laurent',1,'2020-11-01 16:35:22',41,'2020-11-01 16:25:09',41,'2020-11-01 17:25:46',10,NULL,1,NULL,1,NULL,1),(6016,5843,60,'ysl',1,'2020-11-01 16:47:33',41,'2020-11-01 16:43:38',41,'2020-11-01 17:46:07',40,NULL,1,NULL,1,NULL,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES (5751,2,'2020-09-18 12:30:40'),(5753,2,'2020-09-18 12:30:40'),(5754,2,'2020-09-18 12:30:40'),(5755,2,'2020-09-18 12:30:40'),(37,2,'2020-09-18 12:30:40'),(38,2,'2020-09-18 12:30:40'),(5735,2,'2020-09-18 12:30:40'),(32,2,'2020-09-18 12:30:40'),(34,2,'2020-09-18 12:30:40'),(35,2,'2020-09-18 12:30:40'),(36,2,'2020-09-18 12:30:40'),(50,2,'2020-09-18 12:30:40'),(51,2,'2020-09-18 12:30:40'),(52,2,'2020-09-18 12:30:40'),(53,2,'2020-09-18 12:30:40'),(54,2,'2020-09-18 12:30:40'),(5738,2,'2020-09-18 12:30:40'),(5741,2,'2020-09-18 12:30:40'),(5743,2,'2020-09-18 12:30:40'),(5744,2,'2020-09-18 12:30:40'),(5749,2,'2020-09-18 12:30:40'),(6007,1,'2020-09-28 17:00:49'),(6009,1,'2020-10-01 18:46:25'),(6010,1,'2020-10-11 15:29:22'),(6012,1,'2020-10-13 20:08:50');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28),(4111,5788),(5750,2),(5750,22),(5767,5788),(5787,5788),(5791,5789),(5827,5789),(5834,5789),(5842,5789),(5843,5789),(5844,5789),(5844,5843),(5853,5789),(5858,5857),(5861,5857),(5893,5857),(5899,5857),(5906,5857),(5941,5857),(5958,5957),(5960,5957);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
INSERT INTO `pages_sortfields` VALUES (4111,'1');
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
INSERT INTO `session_login_throttle` VALUES ('yb',1,1604246416);
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1592243099}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',57,0,30,'{\"useRoles\":1,\"editRoles\":[5735],\"noParents\":1,\"childTemplates\":[79,56,88,61,59],\"slashUrls\":1,\"compile\":3,\"label\":\"Herm\\u00e8s and other\",\"modified\":1600149577,\"ns\":\"ProcessWire\",\"label5753\":\"Herm\\u00e8s \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435\",\"label5755\":\"Herm\\u00e8s och andra\",\"label5754\":\"Herm\\u00e8s et des autres\",\"roles\":[37,5735]}'),(14,'person',68,0,604800,'{\"childTemplates\":[24],\"parentTemplates\":[43],\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"noCacheGetVars\":\"sort\",\"label\":\"Person\",\"modified\":1599804351,\"ns\":\"ProcessWire\"}'),(24,'artwork',78,0,2419200,'{\"useRoles\":1,\"editRoles\":[5735],\"addRoles\":[5735],\"createRoles\":[5735],\"sortfield\":\"name\",\"noChildren\":1,\"parentTemplates\":[58],\"slashUrls\":1,\"compile\":3,\"label\":\"Scarf\",\"modified\":1600149617,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043e\\u043a\",\"roles\":[37,5735]}'),(26,'search',80,0,0,'{\"noChildren\":1,\"noParents\":1,\"parentTemplates\":[59],\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Artwork Search Results\",\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(27,'basic-page',81,0,0,'{\"childTemplates\":[27],\"slashUrls\":1,\"compile\":2,\"label\":\"Basic Page\",\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(28,'list-all',82,0,86400,'{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"noCacheGetVars\":\"sort\",\"label\":\"All Artworks Index\",\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(43,'persons',97,0,86400,'{\"noParents\":1,\"childTemplates\":[14],\"parentTemplates\":[59],\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"All Persons Index\",\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(45,'language',99,8,0,'{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1591864728}'),(47,'brands',101,0,0,'{\"childTemplates\":[46],\"parentTemplates\":[59],\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"All Brands Index\",\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(46,'brand',100,0,0,'{\"childTemplates\":[24],\"parentTemplates\":[47],\"slashUrls\":1,\"compile\":3,\"label\":\"Brand\",\"modified\":1598014032,\"tabContent\":\"Brand\",\"tabChildren\":\"Brand\",\"nameLabel\":\"Brand\",\"ns\":\"ProcessWire\",\"tabContent5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\",\"tabChildren5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\",\"nameLabel5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\",\"label5753\":\"\\u0424\\u0438\\u0440\\u043c\\u0430\"}'),(48,'seller',102,0,0,'{\"childTemplates\":[24],\"parentTemplates\":[49],\"slashUrls\":1,\"compile\":3,\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(49,'sellers',103,0,0,'{\"childTemplates\":[48],\"parentTemplates\":[59],\"slashUrls\":1,\"compile\":3,\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(54,'possession',108,0,0,'{\"childTemplates\":[24],\"parentTemplates\":[55],\"slashUrls\":1,\"compile\":3,\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(55,'possessions',109,0,0,'{\"noParents\":1,\"childTemplates\":[54],\"parentTemplates\":[59],\"slashUrls\":1,\"compile\":3,\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(56,'countries',110,0,0,'{\"childTemplates\":[57],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"countries\",\"compile\":3,\"modified\":1598014032,\"ns\":\"ProcessWire\"}'),(57,'country',111,0,0,'{\"parentTemplates\":[56],\"slashUrls\":1,\"altFilename\":\"country\",\"compile\":3,\"modified\":1602431441,\"ns\":\"ProcessWire\"}'),(58,'artworks',112,0,0,'{\"childTemplates\":[24],\"parentTemplates\":[59],\"slashUrls\":1,\"altFilename\":\"artworks\",\"compile\":3,\"modified\":1600003235,\"ns\":\"ProcessWire\"}'),(59,'spot',113,0,0,'{\"childTemplates\":[58,47,43,55,26,49],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"spot\",\"compile\":3,\"label\":\"Example\",\"modified\":1600003451,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\",\"label5755\":\"Exempel\",\"label5754\":\"Exemple\"}'),(60,'h_artwork',114,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"noInherit\":1,\"parentTemplates\":[67,63],\"slashUrls\":1,\"altFilename\":\"h_artwork\",\"compile\":3,\"label\":\"Scarf\",\"modified\":1600492806,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043e\\u043a\",\"label5754\":\"Foular\",\"roles\":[37,5735]}'),(61,'h_spot',115,0,0,'{\"childTemplates\":[67,66,63,64,68,62,65],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"h_spot\",\"compile\":3,\"label\":\"Herm\\u00e8s and other\",\"modified\":1602429590,\"ns\":\"ProcessWire\",\"label5753\":\"Herm\\u00e8s \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435\",\"label5755\":\"Herm\\u00e8s och andra\",\"label5754\":\"Herm\\u00e8s et des autres\"}'),(62,'h_search',116,0,0,'{\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_search\",\"compile\":3,\"modified\":1600069617,\"ns\":\"ProcessWire\"}'),(63,'h_collection',117,0,0,'{\"childTemplates\":[60],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_collection\",\"compile\":3,\"modified\":1600003241,\"ns\":\"ProcessWire\"}'),(64,'h_persons',118,0,0,'{\"childTemplates\":[70],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_persons\",\"compile\":3,\"label\":\"People\",\"modified\":1600003241,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041b\\u044e\\u0434\\u0438\",\"label5755\":\"M\\u00e4nniskor\",\"label5754\":\"Les gens\"}'),(65,'h_sellers',119,0,0,'{\"childTemplates\":[71],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_sellers\",\"compile\":3,\"label\":\"Providers\",\"modified\":1600003241,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"Leverant\\u00f6rer\",\"label5754\":\"Les fournisseurs\"}'),(66,'h_brands',120,0,0,'{\"childTemplates\":[69],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_brands\",\"compile\":3,\"label\":\"Brands\",\"modified\":1600003241,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b\",\"label5755\":\"M\\u00e4rken\",\"label5754\":\"Les marques\"}'),(67,'h_artworks',121,0,0,'{\"childTemplates\":[60],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_artworks\",\"compile\":3,\"label\":\"Scarves\",\"modified\":1600003473,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u043b\\u0430\\u0442\\u043a\\u0438\",\"label5755\":\"Halsdukar\",\"label5754\":\"Carr\\u00e9s\"}'),(68,'h_possessions',122,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"addRoles\":[5735],\"childTemplates\":[72],\"parentTemplates\":[61],\"slashUrls\":1,\"altFilename\":\"h_possessions\",\"compile\":3,\"label\":\"Possessions\",\"modified\":1600432240,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440\\u0438\\u044f\",\"label5755\":\"Fakturor\",\"label5754\":\"Les Factures\",\"roles\":[5735]}'),(69,'h_brand',123,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"parentTemplates\":[66],\"slashUrls\":1,\"altFilename\":\"h_brand\",\"compile\":3,\"modified\":1600150035,\"ns\":\"ProcessWire\",\"roles\":[37,5735]}'),(70,'h_person',124,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"noInherit\":1,\"parentTemplates\":[64],\"slashUrls\":1,\"altFilename\":\"h_person\",\"compile\":3,\"modified\":1600149959,\"ns\":\"ProcessWire\",\"roles\":[37,5735]}'),(71,'h_seller',125,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"parentTemplates\":[65],\"slashUrls\":1,\"altFilename\":\"h_seller\",\"compile\":3,\"modified\":1600150216,\"ns\":\"ProcessWire\",\"roles\":[37,5735]}'),(72,'h_possession',126,0,0,'{\"useRoles\":1,\"editRoles\":[5735],\"createRoles\":[5735],\"parentTemplates\":[68],\"slashUrls\":1,\"altFilename\":\"h_possession\",\"compile\":3,\"modified\":1600267512,\"ns\":\"ProcessWire\",\"roles\":[5735]}'),(73,'a_school',127,0,0,'{\"parentTemplates\":[\"a_schools\"],\"slashUrls\":1,\"altFilename\":\"a_school\",\"compile\":3,\"modified\":1600003268,\"ns\":\"ProcessWire\"}'),(74,'a_person',128,0,0,'{\"parentTemplates\":[\"a_persons\"],\"slashUrls\":1,\"altFilename\":\"a_person\",\"compile\":3,\"modified\":1600003268,\"ns\":\"ProcessWire\"}'),(75,'a_collection',129,0,0,'{\"childTemplates\":[77],\"parentTemplates\":[80,79],\"slashUrls\":1,\"altFilename\":\"a_collection\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}'),(76,'a_possession',130,0,0,'{\"parentTemplates\":[\"a_possessions\"],\"slashUrls\":1,\"altFilename\":\"a_possession\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}'),(77,'a_artwork',131,0,0,'{\"parentTemplates\":[84,75],\"slashUrls\":1,\"altFilename\":\"a_artwork\",\"compile\":3,\"label\":\"Painting\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u0430\"}'),(78,'a_seller',132,0,0,'{\"parentTemplates\":[\"a_sellers\"],\"slashUrls\":1,\"altFilename\":\"a_seller\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}'),(79,'a_spot',133,0,0,'{\"childTemplates\":[84,75,80,82,85,81,86,83],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"a_spot\",\"compile\":3,\"label\":\"Paintings & Painters\",\"modified\":1603100526,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b \\u0438 \\u0425\\u0443\\u0434\\u043e\\u0436\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"M\\u00e5lningar och Konstn\\u00e4rer\",\"label5754\":\"Chefs-d\'\\u0153uvre et Artistes\"}'),(80,'a_collections',134,0,0,'{\"childTemplates\":[75],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_collections\",\"compile\":3,\"label\":\"Collections\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u043e\\u043b\\u043b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"label5755\":\"Samlingar\",\"label5754\":\"Collections\"}'),(81,'a_schools',135,0,0,'{\"childTemplates\":[73],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_schools\",\"compile\":3,\"label\":\"Schools\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0428\\u043a\\u043e\\u043b\\u044b \\u0436\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u0438\",\"label5755\":\"Skolar\",\"label5754\":\"\\u00c9coles\"}'),(82,'a_persons',136,0,0,'{\"childTemplates\":[74],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_persons\",\"compile\":3,\"label\":\"Painters\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u0438\\u0438\",\"label5755\":\"Konstn\\u00e4rer\",\"label5754\":\"Les Artistes\"}'),(83,'a_sellers',137,0,0,'{\"childTemplates\":[78],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_sellers\",\"compile\":3,\"label\":\"My art depositories\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041c\\u043e\\u0438 \\u0438\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a\\u0438\",\"label5755\":\"Mina konstposter\",\"label5754\":\"Les d\\u00e9p\\u00f4ts d\'art\"}'),(84,'a_artworks',138,0,0,'{\"childTemplates\":[77],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_artworks\",\"compile\":3,\"label\":\"Paintings\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u044b\",\"label5755\":\"M\\u00e5lningar\",\"label5754\":\"Peintures\"}'),(85,'a_possessions',139,0,0,'{\"childTemplates\":[76],\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_possessions\",\"compile\":3,\"label\":\"Possessions\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440\\u0438\\u044f\",\"label5755\":\"Facturen\",\"label5754\":\"Factures d\'achat\"}'),(86,'a_search',140,0,0,'{\"parentTemplates\":[79],\"slashUrls\":1,\"altFilename\":\"a_search\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}'),(87,'d_person',141,0,0,'{\"parentTemplates\":[\"d_persons\"],\"slashUrls\":1,\"altFilename\":\"d_person\",\"compile\":3,\"modified\":1600003311,\"ns\":\"ProcessWire\"}'),(88,'d_spot',142,0,0,'{\"childTemplates\":[90,89,91],\"parentTemplates\":[1],\"slashUrls\":1,\"altFilename\":\"d_spot\",\"compile\":3,\"label\":\"Dymkovo toys\",\"modified\":1602141658,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0414\\u044b\\u043c\\u043a\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0430\",\"label5755\":\"Dymkovo leksaker\",\"label5754\":\"Dymkovo jouets\"}'),(89,'d_persons',143,0,0,'{\"childTemplates\":[87],\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"d_persons\",\"compile\":3,\"label\":\"People\",\"modified\":1600069763,\"ns\":\"ProcessWire\",\"label5753\":\"\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u0438\\u0438\",\"label5754\":\"Les gents\"}'),(90,'d_artworks',144,0,0,'{\"childTemplates\":[92],\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"d_artworks\",\"compile\":3,\"modified\":1600069763,\"ns\":\"ProcessWire\"}'),(91,'d_search',145,0,0,'{\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"d_search\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}'),(92,'d_artwork',146,0,0,'{\"parentTemplates\":[90],\"slashUrls\":1,\"altFilename\":\"d_artwork\",\"compile\":3,\"label\":\"Toy\",\"modified\":1600149690,\"ns\":\"ProcessWire\",\"label5753\":\"\\u0418\\u0433\\u0440\\u0443\\u0448\\u043a\\u0430\"}'),(93,'collection',75,0,0,'{\"parentTemplates\":[88],\"slashUrls\":1,\"altFilename\":\"collection\",\"compile\":3,\"modified\":1600149690,\"ns\":\"ProcessWire\"}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-18 19:19:07
