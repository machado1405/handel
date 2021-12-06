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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Wir9LHDLJOw8xV9V05LAgBqxJPt6Rsc4RV1Mdz2VkKYOlre66gsCEBH3tt7ESW/H81RBDJLYKXhAijylLFZvxQ==');
define('SECURE_AUTH_KEY',  '+/qB7ebQXS9VpezVlDzWU5eQpKeTN3WF8klL3ogpHh0zH3nGE2zQTx5sQOY4ycnhV3k1tCn+JYCQK1eOgdaxaw==');
define('LOGGED_IN_KEY',    'VYtIDFbfAHEO3tbdtpTWnb9Z1uv4fLq9lE9k41f/ub/V400PQwpvHY3goKjO5+4Ppge3cyBuymwF7t4hhWB1qA==');
define('NONCE_KEY',        'AsBpl9VZ7PGzdxzWo0/QyXCehsF24X5s6ODyVufnl1wP0MlQC8qjIR5zvr5WkHIb7iusiROTiiS5+QTvYDVBJg==');
define('AUTH_SALT',        'I8CRvDjzOrmLeJppeJcuDxHKcT/BtzBP/LYKjwp31u6VaFnCrBo2NxHIcUIG50X+aRDn4AB6wlCzE9Su1f5VDQ==');
define('SECURE_AUTH_SALT', 'gEm9KCbVDcfIEjQuk+OC8FoVXVA5F57S1ZNaE93Q5o/MZDyrhm4qzGB6TDuEPw+j0kdnXIAfxGDTL3H9J2gY/w==');
define('LOGGED_IN_SALT',   'xj8AK3z2wdmC4Wzk3lxEOzM5Ep2a/Ub7PyUcaoIyz+76+Ijwpo/XPigmxIzcClriWEX/powbZ03fYY9GgO1RHQ==');
define('NONCE_SALT',       'Xi+/Gb2t5hE7LCGZ+kP4qgQGbjWgLEwTVzPxzzfmJ7SvHREZyAhb/gFqrHy+a+c4SzGr1qm2cfOOq6/69jpC6g==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
