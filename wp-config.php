<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
/* define('DB_NAME', 'factoryhardcore-wp'); */
define('DB_NAME', 'factoryhardcore');

/** MySQL database username */
/* define('DB_USER', 'amhewins-wp'); */
define('DB_USER', 'root');

/** MySQL database password */
/* define('DB_PASSWORD', 'Para8dise'); */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '<DJ]frjak3:Kl+T/r,2tjYC-8@75xMoco<T$GSY}ML-j`hfw]uK4?yhwBajYcn]z');
define('SECURE_AUTH_KEY',  'U8l_bO3_{#]^Zlziy!Y7x4`/FQPZ}8l0Og(Gd<9H0WX%s|I=p8M?`^Pn3rQxlQe)');
define('LOGGED_IN_KEY',    'BLTH}7i(/o(Lg`L14IotYq?8xReuT%Q:_&S0V-y:#@4$*[z)ktG?_vn7N-]a+HQl');
define('NONCE_KEY',        'WgU*jqT+)eBQg@gf}wMGg;dMnjMb)D)dw72Fyg^Mfg}r9k/ko,0viE&%4#WBR/b%');
define('AUTH_SALT',        'h0 dx>w>zd~t4Oz27.]UYQ$[vP:1dk!O&xXx<&omTF/[VKN*5~h_6(!$2Ft)48Y8');
define('SECURE_AUTH_SALT', 'KLdysG5Sz/VBg<Xs=[#$pghy%TDFQ}k|zyV&+<`xpCT~RC*na1=NcgU-~d^D{MVg');
define('LOGGED_IN_SALT',   '5]17R*oWh2lYi$[hp(7LHnL5<h9pNX`_@;6j~NJ*;Tp[N4xC0JaSN;!?um6l:AXg');
define('NONCE_SALT',       'N5hRF~{IF&(Nxk 1ofW=7*heSd1ceYZ@T/W<mN)EQ#P<T{#@*&4(&gw$bI=tk9N$');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
