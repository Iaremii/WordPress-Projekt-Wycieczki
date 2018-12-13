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
define('DB_NAME', 'WycieczkiDatabase');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'dq65`mt^cX[d=D2u+1eI(NMI`+kiYS I6T$1:AO95noJ1ZOY+i]biI(MmO{oG+R4');
	define('SECURE_AUTH_KEY',  'hJEXokVHNBUZdtL-=>u}Ew+wq8Y.#_iAQC?l Yg$`|YLdQZEd&r}CEJ&wm8e.i4;');
	define('LOGGED_IN_KEY',    'bS`;?|]9F0Vq 1vBfrb,<WwC5RIAnR_vb;A}z9H^W$H`4xYUZsU~4zcIl0l_oxGc');
	define('NONCE_KEY',        'HfORO=@Y?c.B]`,;h)uXigYhNK|)qb>]Zx89&#hXZ(l+MS-<c0+4Up)&=esU ((h');
	define('AUTH_SALT',        '{mgZr.X y|d{oB+o8JE*76g-1|UYc^iyFHk]cyKl,#IWC.+1u!^,)#]NLo$LWU+K');
	define('SECURE_AUTH_SALT', 'Ev~<*(IN f/E2Lj;:|M!wSnU&,-7UJR91rK;c{|1-Wg5)(>ltk,Uys}g{w8n%w}2');
	define('LOGGED_IN_SALT',   'n)LjD;*Alz-8*J|=^/-ml[uJ^E48#<}b>9wZx+=d.oTfg|=x^Ha+C1Ue.X4RSx}/');
	define('NONCE_SALT',       'v(S20*-|nQ=cV^|-?mgEk2YUMUcCA-|27.A3Bf +fz}K0_G;; 8*$2e_d]:/+|M+');

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
