-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2017 at 06:31 AM
-- Server version: 5.6.31
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canvas`
--

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts`
--

CREATE TABLE IF NOT EXISTS `canvas_posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_raw` text COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'canvas::frontend.blog.post',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canvas_posts`
--

INSERT INTO `canvas_posts` (`id`, `user_id`, `slug`, `title`, `subtitle`, `content_raw`, `content_html`, `page_image`, `meta_description`, `is_published`, `layout`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 'hello-world', 'Hello World', 'Canvas is a simple, powerful blog publishing platform that lets you to share your stories with the world. Its beautifully designed interface allows you to create and publish your own blog, giving you tools that make it easy and even fun to do.', 'Welcome to Canvas! I''m your first post demonstrating Markdown integration. Don''t delete me, I''m very helpful! If you do delete me though, I can be recovered. Just grab me from:\n\n```language-markup\nresources/views/shared/helpers/welcome.blade.php\n```\n\n<div class="section-divider"></div>\n\n## The Basics\n---\n\nBefore I tell you about all the extra syntaxes and capabilities you have available to you, I''ll introduce you to the basics of standard markdown. If you already know markdown, and want to jump straight to learning about the fancier things I can do, feel free to skip this section. Lets jump right in!\n\nMarkdown is a plain text formatting syntax created by John Gruber, aiming to provide a easy-to-read and feasible markup. The original Markdown syntax specification can be found [here](http://daringfireball.net/projects/markdown/syntax).\n\n<div class="section-divider"></div>\n\n## Typography\n---\n\n# Heading 1\n## Heading 2\n### Heading 3\n#### Heading 4\n##### Heading 5\n###### Heading 6\n\nJust put angle brackets around an email and it becomes clickable: <user@example.com> `<user@example.com>`\n\nSame thing with urls: <http://example.com> `<http://example.com>`\n\nPerhaps you want to some link text like this: [Example Website](http://example.com "Title")\n`[Example Website](http://example.com "Title")` (The title is optional)\n\nMake [a link][arbitrary_id] `[a link][arbitrary_id]` then on it''s own line anywhere else in the file:\n`[arbitrary_id]: http://example.com "Title"`\n\nIf the link text itself would make a good id, you can link [like this][] `[like this][]`, then on it''s own line anywhere else in the file:\n`[like this]: http://example.com`\n\n[arbitrary_id]: http://example.com "Title"\n[like this]: http://example.com\n\nOption name         | Markup           | Result\n--------------------|------------------|-------------------------\nIntra-word emphasis | `Intra-word em\\*pha\\*sis`   | Intra-word em<em>pha</em>sis\nStrikethrough       | `\\~~Strikethrough\\~~`   | <del>Strikethrough</del>\nUnderline  | `\\_Underline\\_`      | <u>Underline</u>\nQuote      | `\\"Quote\\"`  | <q>Quote</q>\nHighlight           | `\\==Highlight\\==`    | <mark>Highlight</mark>\nSuperscript         | `Some\\^(superscript)`     | Some<sup>superscript</sup>\nItalics            | `**Italics**`      | <em>Italics</em>\nBold | `*Bold text*`   | <strong>Bold text</strong>\nHTML Entities | ``&copy;`` ``&#402;`` ``&#8482;`` ``&reg;`` | © ƒ ™ ®\n\n<div class="section-divider"></div>\n\n## Tables\n---\n\n##### **Markup**:\n```language-markup\nKey | Value\n--- | ---\nSSH Host | `example.com`\nSSH User | `username`\nSSH Password | `secret`\nDatabase Host | `127.0.0.1`\nDatabase User | `username`\nDatabase Password | `secret`\n```\n\n<div class="section-divider"></div>\n\n##### **Result**:\nKey                 | Value\n------------------- | ---\nSSH Host            | `example.com`\nSSH User            | `username`\nSSH Password        | `secret`\nDatabase Host       | `127.0.0.1`\nDatabase User       | `username`\nDatabase Password   | `secret`\n\n<div class="section-divider"></div>\n\n## Code Blocks\n---\n\n`Inline code` is indicated by surrounding it with backticks:\n`` `Inline code` ``\n\nIf your ``code has `backticks` `` that need to be displayed, you can use double backticks:\n```` ``Code with `backticks` `` ````  (mind the spaces preceding the final set of backticks)\n\nGitHub''s fenced code blocks are supported in canvas::\n\n```php\nnamespace App;\n\nclass Canvas extends Blog\n{\n\n    /**\n    * Dreaming of a world without WordPress?\n    *\n    * @with  Canvas\n    */\n    public function create()\n    {\n        // Make something awesome...\n    }\n}\n```\n\nYou can also use waves (`~`) instead of back ticks (`` ` ``):\n\n~~~php\nprint(''Hello world!'')\n~~~\n\n<div class="section-divider"></div>\n\n## Lists\n---\n\n##### **Markup**:\n```language-markup\n* Lists must be preceded by a blank line (or block element)\n* Unordered lists start each item with a `*`\n- `-` Works too\n* Indent a level to make a nested list\n1. Ordered lists are supported.\n2. Start each item (number-period-space) like `1.`\n42. It doesn''t matter what number you use, it will render sequentially\n```\n\n<div class="section-divider"></div>\n\n##### **Result**:\n* Lists must be preceded by a blank line (or block element)\n* Unordered lists start each item with a `*`\n- `-` Works too\n* Indent a level to make a nested list\n1. Ordered lists are supported.\n2. Start each item (number-period-space) like `1`\n3. It doesn''t matter what number you use, it will render sequentially\n\n<div class="section-divider"></div>\n\n## Block Quotes\n---\n\n##### **Markup**:\n```language-markup\n> Angle brackets `>` are used for block quotes.\nTechnically not every line needs to start with a `>` as long as\nthere are no empty lines between paragraphs.\n> Looks kinda ugly though.\n> > Block quotes can be nested.\n> > > Multiple Levels\n>\n> Most markdown syntaxes work inside block quotes.\n```\n\n<div class="section-divider"></div>\n\n##### **Result**:\n> Angle brackets `>` are used for block quotes.\nTechnically not every line needs to start with a `>` as long as\nthere are no empty lines between paragraphs.\n> Looks kinda ugly though.\n> > Block quotes can be nested.\n> > > Multiple Levels\n>\n> Most markdown syntaxes work inside block quotes.\n\n<div class="section-divider"></div>\n\n## Horizontal Rules\n---\n\nIf you type three asterisks `***`, you will get a horizontal rule. Three dashes `---` will make the same rule.\n\n<div class="section-divider"></div>\n\n## Task List Syntax\n---\n\n1. [x] Support for rendering checkbox list syntax\n    * [x] Support for nesting\n    * [x] Support for ordered *and* unordered lists\n2. [ ] No support for clicking checkboxes directly in the HTML window\n\n<div class="section-divider"></div>\n\n## Markdown Extra\n---\n\nCanvas supports **Markdown Extra**, which extends traditional **Markdown** syntax with some nice features. If you need some help or just want a refresher, read more about [Markdown syntax](https://daringfireball.net/projects/markdown/syntax) and [Markdown Extra](https://michelf.ca/projects/php-markdown/extra/).\n\n<div class="section-divider"></div>\n\n## Hack On\n---\n\nThat’s about it. The best way to be proficient in anything is to know what tools you have available to you. You''re one step ahead of the game now. Happy coding!', '<p>Welcome to Canvas! I''m your first post demonstrating Markdown integration. Don''t delete me, I''m very helpful! If you do delete me though, I can be recovered. Just grab me from:</p>\n<pre><code class="language-language-markup">resources/views/shared/helpers/welcome.blade.php</code></pre>\n<div class="section-divider"></div>\n<h2>The Basics</h2>\n<hr />\n<p>Before I tell you about all the extra syntaxes and capabilities you have available to you, I''ll introduce you to the basics of standard markdown. If you already know markdown, and want to jump straight to learning about the fancier things I can do, feel free to skip this section. Lets jump right in!</p>\n<p>Markdown is a plain text formatting syntax created by John Gruber, aiming to provide a easy-to-read and feasible markup. The original Markdown syntax specification can be found <a href="http://daringfireball.net/projects/markdown/syntax">here</a>.</p>\n<div class="section-divider"></div>\n<h2>Typography</h2>\n<hr />\n<h1>Heading 1</h1>\n<h2>Heading 2</h2>\n<h3>Heading 3</h3>\n<h4>Heading 4</h4>\n<h5>Heading 5</h5>\n<h6>Heading 6</h6>\n<p>Just put angle brackets around an email and it becomes clickable: <a href="mailto:user@example.com">user@example.com</a> <code>&lt;user@example.com&gt;</code></p>\n<p>Same thing with urls: <a href="http://example.com">http://example.com</a> <code>&lt;http://example.com&gt;</code></p>\n<p>Perhaps you want to some link text like this: <a href="http://example.com" title="Title">Example Website</a>\n<code>[Example Website](http://example.com "Title")</code> (The title is optional)</p>\n<p>Make <a href="http://example.com" title="Title">a link</a> <code>[a link][arbitrary_id]</code> then on it''s own line anywhere else in the file:\n<code>[arbitrary_id]: http://example.com "Title"</code></p>\n<p>If the link text itself would make a good id, you can link <a href="http://example.com">like this</a> <code>[like this][]</code>, then on it''s own line anywhere else in the file:\n<code>[like this]: http://example.com</code></p>\n<table>\n<thead>\n<tr>\n<th>Option name</th>\n<th>Markup</th>\n<th>Result</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Intra-word emphasis</td>\n<td><code>Intra-word em\\*pha\\*sis</code></td>\n<td>Intra-word em<em>pha</em>sis</td>\n</tr>\n<tr>\n<td>Strikethrough</td>\n<td><code>\\~~Strikethrough\\~~</code></td>\n<td><del>Strikethrough</del></td>\n</tr>\n<tr>\n<td>Underline</td>\n<td><code>\\_Underline\\_</code></td>\n<td><u>Underline</u></td>\n</tr>\n<tr>\n<td>Quote</td>\n<td><code>\\"Quote\\"</code></td>\n<td><q>Quote</q></td>\n</tr>\n<tr>\n<td>Highlight</td>\n<td><code>\\==Highlight\\==</code></td>\n<td><mark>Highlight</mark></td>\n</tr>\n<tr>\n<td>Superscript</td>\n<td><code>Some\\^(superscript)</code></td>\n<td>Some<sup>superscript</sup></td>\n</tr>\n<tr>\n<td>Italics</td>\n<td><code>**Italics**</code></td>\n<td><em>Italics</em></td>\n</tr>\n<tr>\n<td>Bold</td>\n<td><code>*Bold text*</code></td>\n<td><strong>Bold text</strong></td>\n</tr>\n<tr>\n<td>HTML Entities</td>\n<td><code>&amp;copy;</code> <code>&amp;#402;</code> <code>&amp;#8482;</code> <code>&amp;reg;</code></td>\n<td>© ƒ ™ ®</td>\n</tr>\n</tbody>\n</table>\n<div class="section-divider"></div>\n<h2>Tables</h2>\n<hr />\n<h5><strong>Markup</strong>:</h5>\n<pre><code class="language-language-markup">Key | Value\n--- | ---\nSSH Host | `example.com`\nSSH User | `username`\nSSH Password | `secret`\nDatabase Host | `127.0.0.1`\nDatabase User | `username`\nDatabase Password | `secret`</code></pre>\n<div class="section-divider"></div>\n<h5><strong>Result</strong>:</h5>\n<table>\n<thead>\n<tr>\n<th>Key</th>\n<th>Value</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>SSH Host</td>\n<td><code>example.com</code></td>\n</tr>\n<tr>\n<td>SSH User</td>\n<td><code>username</code></td>\n</tr>\n<tr>\n<td>SSH Password</td>\n<td><code>secret</code></td>\n</tr>\n<tr>\n<td>Database Host</td>\n<td><code>127.0.0.1</code></td>\n</tr>\n<tr>\n<td>Database User</td>\n<td><code>username</code></td>\n</tr>\n<tr>\n<td>Database Password</td>\n<td><code>secret</code></td>\n</tr>\n</tbody>\n</table>\n<div class="section-divider"></div>\n<h2>Code Blocks</h2>\n<hr />\n<p><code>Inline code</code> is indicated by surrounding it with backticks:\n<code>`Inline code`</code></p>\n<p>If your <code>code has `backticks`</code> that need to be displayed, you can use double backticks:\n<code>``Code with `backticks` ``</code>  (mind the spaces preceding the final set of backticks)</p>\n<p>GitHub''s fenced code blocks are supported in canvas::</p>\n<pre><code class="language-php">namespace App;\n\nclass Canvas extends Blog\n{\n\n    /**\n    * Dreaming of a world without WordPress?\n    *\n    * @with  Canvas\n    */\n    public function create()\n    {\n        // Make something awesome...\n    }\n}</code></pre>\n<p>You can also use waves (<code>~</code>) instead of back ticks (<code>`</code>):</p>\n<pre><code class="language-php">print(''Hello world!'')</code></pre>\n<div class="section-divider"></div>\n<h2>Lists</h2>\n<hr />\n<h5><strong>Markup</strong>:</h5>\n<pre><code class="language-language-markup">* Lists must be preceded by a blank line (or block element)\n* Unordered lists start each item with a `*`\n- `-` Works too\n* Indent a level to make a nested list\n1. Ordered lists are supported.\n2. Start each item (number-period-space) like `1.`\n42. It doesn''t matter what number you use, it will render sequentially</code></pre>\n<div class="section-divider"></div>\n<h5><strong>Result</strong>:</h5>\n<ul>\n<li>Lists must be preceded by a blank line (or block element)</li>\n<li>Unordered lists start each item with a <code>*</code></li>\n<li><code>-</code> Works too</li>\n<li>Indent a level to make a nested list\n<ol>\n<li>Ordered lists are supported.</li>\n<li>Start each item (number-period-space) like <code>1</code></li>\n<li>It doesn''t matter what number you use, it will render sequentially</li>\n</ol></li>\n</ul>\n<div class="section-divider"></div>\n<h2>Block Quotes</h2>\n<hr />\n<h5><strong>Markup</strong>:</h5>\n<pre><code class="language-language-markup">&gt; Angle brackets `&gt;` are used for block quotes.\nTechnically not every line needs to start with a `&gt;` as long as\nthere are no empty lines between paragraphs.\n&gt; Looks kinda ugly though.\n&gt; &gt; Block quotes can be nested.\n&gt; &gt; &gt; Multiple Levels\n&gt;\n&gt; Most markdown syntaxes work inside block quotes.</code></pre>\n<div class="section-divider"></div>\n<h5><strong>Result</strong>:</h5>\n<blockquote>\n<p>Angle brackets <code>&gt;</code> are used for block quotes.\nTechnically not every line needs to start with a <code>&gt;</code> as long as\nthere are no empty lines between paragraphs.\nLooks kinda ugly though.</p>\n<blockquote>\n<p>Block quotes can be nested.</p>\n<blockquote>\n<p>Multiple Levels</p>\n</blockquote>\n</blockquote>\n<p>Most markdown syntaxes work inside block quotes.</p>\n</blockquote>\n<div class="section-divider"></div>\n<h2>Horizontal Rules</h2>\n<hr />\n<p>If you type three asterisks <code>***</code>, you will get a horizontal rule. Three dashes <code>---</code> will make the same rule.</p>\n<div class="section-divider"></div>\n<h2>Task List Syntax</h2>\n<hr />\n<ol>\n<li>[x] Support for rendering checkbox list syntax\n<ul>\n<li>[x] Support for nesting</li>\n<li>[x] Support for ordered <em>and</em> unordered lists</li>\n</ul></li>\n<li>[ ] No support for clicking checkboxes directly in the HTML window</li>\n</ol>\n<div class="section-divider"></div>\n<h2>Markdown Extra</h2>\n<hr />\n<p>Canvas supports <strong>Markdown Extra</strong>, which extends traditional <strong>Markdown</strong> syntax with some nice features. If you need some help or just want a refresher, read more about <a href="https://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> and <a href="https://michelf.ca/projects/php-markdown/extra/">Markdown Extra</a>.</p>\n<div class="section-divider"></div>\n<h2>Hack On</h2>\n<hr />\n<p>That’s about it. The best way to be proficient in anything is to know what tools you have available to you. You''re one step ahead of the game now. Happy coding!</p>', '/vendor/canvas/assets/images/mocha.jpg', 'Let''s get you up and running with Canvas!', 1, 'canvas::frontend.blog.post', '2017-05-20 16:47:48', '2017-05-20 16:47:48', '2017-05-20 16:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `canvas_post_tag`
--

CREATE TABLE IF NOT EXISTS `canvas_post_tag` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canvas_post_tag`
--

INSERT INTO `canvas_post_tag` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-05-20 16:47:48', '2017-05-20 16:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `canvas_settings`
--

CREATE TABLE IF NOT EXISTS `canvas_settings` (
  `id` int(10) unsigned NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canvas_settings`
--

INSERT INTO `canvas_settings` (`id`, `setting_name`, `setting_value`) VALUES
(1, 'blog_author', 'Anusorn Tansun'),
(2, 'blog_title', 'visitThailand'),
(3, 'blog_subtitle', 'visit Thailand'),
(4, 'blog_description', 'Not just another blog...'),
(5, 'blog_seo', 'simple,powerful,blog,publishing,platform'),
(6, 'disqus_name', NULL),
(7, 'ga_id', NULL),
(8, 'twitter_card_type', 'none'),
(9, 'canvas_version', 'v3.3.0'),
(10, 'installed', '1495298923'),
(11, 'social_header_icons_user_id', '1'),
(12, 'latest_release', 'Unknown'),
(13, 'blog_author', 'Anusorn Tansun'),
(14, 'blog_title', 'Visit Thailand'),
(15, 'blog_subtitle', 'Zujipuli Visit Thailand'),
(16, 'blog_description', 'Not just another blog...'),
(17, 'blog_seo', 'simple,powerful,blog,publishing,platform'),
(18, 'disqus_name', NULL),
(19, 'ga_id', NULL),
(20, 'twitter_card_type', 'none'),
(21, 'installed', '1496135212'),
(22, 'social_header_icons_user_id', '1');

-- --------------------------------------------------------

--
-- Table structure for table `canvas_tags`
--

CREATE TABLE IF NOT EXISTS `canvas_tags` (
  `id` int(10) unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'canvas::frontend.blog.index',
  `reverse_direction` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canvas_tags`
--

INSERT INTO `canvas_tags` (`id`, `tag`, `title`, `subtitle`, `meta_description`, `layout`, `reverse_direction`, `created_at`, `updated_at`) VALUES
(1, 'Getting Started', 'Getting Started', 'Getting started with Canvas', 'Meta content for this tag.', 'canvas::frontend.blog.index', 0, '2017-05-20 16:47:48', '2017-05-20 16:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `canvas_users`
--

CREATE TABLE IF NOT EXISTS `canvas_users` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume_cv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canvas_users`
--

INSERT INTO `canvas_users` (`id`, `first_name`, `last_name`, `display_name`, `role`, `url`, `twitter`, `facebook`, `github`, `linkedin`, `resume_cv`, `address`, `city`, `country`, `bio`, `job`, `phone`, `gender`, `relationship`, `birthday`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anusorn', 'Tansun', 'Anusorn Tansun', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'philosopherking8@gmail.com', '$2y$10$mBYimbKzbCqCW.lqt3y6su5BKwukRNS3/cUEomDMt5oLnJYwZalEi', 'mnsYj37ieyxTg6X3CsLE9tGdGmlP18XcoMNpidWqd9I2vd9e9ecrion3IrV3', '2017-05-20 16:48:17', '2017-05-29 21:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_canvas_users_table', 1),
(2, '2015_06_21_174427_create_canvas_posts_table', 1),
(3, '2015_06_27_074414_create_canvas_tags_table', 1),
(4, '2015_06_27_074433_create_canvas_post_tag_pivot', 1),
(5, '2016_08_08_231059_create_canvas_post_tag_table', 1),
(6, '2016_08_08_234447_drop_canvas_post_tag_pivot_table', 1),
(7, '2016_08_28_195321_add_linkedin_column_to_canvas_users_table', 1),
(8, '2016_08_29_082858_add_cv_column_to_canvas_users_table', 1),
(9, '2016_09_02_231259_create_canvas_password_resets_table', 1),
(10, '2016_09_07_091203_create_canvas_settings_table', 1),
(11, '2016_09_22_165717_update_canvas_page_image_paths', 1),
(12, '2016_11_07_144904_update_canvas_posts_table_to_include_author_id', 1),
(13, '2016_11_08_072246_create_canvas_roles_table', 1),
(14, '2016_11_08_080456_add_roles_column_to_canvas_users_table', 1),
(15, '2016_11_14_070030_drop_canvas_roles_table', 1),
(16, '2016_12_17_203122_update_canvas_setting_value_type', 1),
(17, '2017_02_18_101232_update_canvas_posts_rename_is_draft_column_to_is_published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canvas_posts`
--
ALTER TABLE `canvas_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_posts_slug_unique` (`slug`),
  ADD KEY `canvas_posts_published_at_index` (`published_at`),
  ADD KEY `canvas_posts_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_post_tag`
--
ALTER TABLE `canvas_post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `canvas_post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `canvas_settings`
--
ALTER TABLE `canvas_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canvas_settings_setting_name_index` (`setting_name`);

--
-- Indexes for table `canvas_tags`
--
ALTER TABLE `canvas_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_tags_tag_unique` (`tag`);

--
-- Indexes for table `canvas_users`
--
ALTER TABLE `canvas_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_users_email_unique` (`email`),
  ADD KEY `canvas_users_id_index` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canvas_posts`
--
ALTER TABLE `canvas_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `canvas_settings`
--
ALTER TABLE `canvas_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `canvas_tags`
--
ALTER TABLE `canvas_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `canvas_users`
--
ALTER TABLE `canvas_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `canvas_post_tag`
--
ALTER TABLE `canvas_post_tag`
  ADD CONSTRAINT `canvas_post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `canvas_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `canvas_post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `canvas_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
