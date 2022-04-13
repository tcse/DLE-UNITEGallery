
 <?php
/*
 * UNITE Gallery - плагин галереи картинок - https://tcse-cms.com/works/ 
 *
 * @author     Talik <talik@tcse-cms.com>
 */

if (!defined('DATALIFEENGINE') || !defined('LOGGED_IN')) {
	die('Hacking attempt!');
}
/**
 * @global $member_id
 */

define('MODULE_DIR', ENGINE_DIR . '/modules/mod_tcse/unitegallery');

echoheader('unitegallery', 'UNITE Gallery - плагин галереи картинок');

include MODULE_DIR . '/admin/main.php';

include MODULE_DIR . '/admin/footer.php';

echofooter();

