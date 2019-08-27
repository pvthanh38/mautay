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
define('DB_NAME', 'wp_models');

/** MySQL database username */
define('DB_USER', 'models');

/** MySQL database password */
define('DB_PASSWORD', '123456789');

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
define('AUTH_KEY',         ']Gy/iH{6!z)wkvJT1 k97VTG +Gy$OSixpu%Q1zpJ1s&p!(}fHO60N-ZQsrQXEU^');
define('SECURE_AUTH_KEY',  '-923MkPrf$q)<1]b3kdF3LF>,IH=Dn^OCk^Bx4Js6HDv 9*I54z~82s$!)BlYkB5');
define('LOGGED_IN_KEY',    'eg*T`f-Z0VUoL9EX(l^CxB+ucdwB+S(ll,UYtkr7B/S-FuHWiDnl[#*_w$q2r|cr');
define('NONCE_KEY',        'I;*Q4ap3E5]tz|G:,<evRE/qTC/Hzm/(X6GS~|HK|5$OZ7?!JzE6m5YZaC%P3wM8');
define('AUTH_SALT',        '4*@,sme`iBds{WrHc~P_Y//(ftyv?ybpJd$TGV359rBdtcixcoUXn&3(CPn-C,dk');
define('SECURE_AUTH_SALT', 'k!5;7>0u3)S`3U)d#gx0uI8Nvv/&$>>oq?$DgR#QaZeTp;o#OugDfABv-+mg_^9K');
define('LOGGED_IN_SALT',   'K*83G}lUEt_fX3FGJlCB]?1#OSJkOd)Lz{xRv[-C  .tW1qLwiJO%|UnQQQ]Vjlo');
define('NONCE_SALT',       'zhm]zKd[Zt<5jZiHcz`g]3[n,aTo5iW*N~N1Ri:.Eb~WX3N.(;!J&XnJPV?xk~3R');

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

