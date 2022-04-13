<?php
if (!defined('DATALIFEENGINE') || !defined('LOGGED_IN')) {
    die('Hacking attempt!');
}
?>


<div class="panel-body">
    <p>
    	В архиве с модулей есть готовый шаблон для вывода галереи картинок. Но вам необходимо предварительно создать новое дополнительное поле <br>В разделе <a href="<?php echo $config['admin_path']; ?>?mod=xfields&xfieldsaction=configure" target="_blank">Дополнительные поля новостей <i class="fa fa-external-link"></i></a>
    </p>
    <div class="alert alert-info">
	    <p>
	    	Название поля: <b>manyfotos</b><br>
	    	Тип поля: <b>Загружаемая галерея изображений</b>
	    </p>
    </div>
    <p>
    	Остальные параметры дополнительного поля по своему усмотрению.
    </p>
    <div class="alert alert-warning">
    	<p>Если Вы используете DLE версии 13.0 - 15.0 то</p>
	    <p>
	    	Обязательным условием работы плагина UNITE Gallery и дополнительных полей типа "Галерея" является наличие плагина 
	    	<a href="https://lazydev.pro/fcode/26-url-xfield-gallery-plugin.html" target="_blank">Ссылки картинок с дополнительного поля типа Галерея <i class="fa fa-external-link"></i></a> от <b>lazydev.pro</b>
	    </p>
	    <p>Для DLE 15.1 дополнительный плагин не требуется! Синтаксис вывода картинок реализуется штатными средствами движка.</p>
    </div>



    <h3>Подключение модуля в шаблон сайта</h3>
    <p>
		В главном шаблоне сайта <b>main.tpl</b> перед загрывающим тегом 
		<code>&lt;/head></code> 
		добавить код
	</p>
	<code>
&lt;link href="{THEME}/assets/unitegallery/css/unite-gallery.css" rel="stylesheet">
&lt;link href="{THEME}/assets/unitegallery/themes/default/ug-theme-default.css" rel="stylesheet">
	</code>
	<p>
		Для активации галереи необходимо в главном шаблоне сайта <b>main.tpl</b> перед загрывающим тегом 
		<code>&lt;/body></code> 
		добавить код
	</p>
	<code>
&lt;script src="{THEME}/assets/unitegallery/js/unitegallery.min.js">&lt;/script>
&lt;script src="{THEME}/assets/unitegallery/themes/grid/ug-theme-grid.js">&lt;/script>

{* активация плагина unitegallery *}
&lt;script type="text/javascript"> 
    jQuery(document).ready(function(){ 
        jQuery("#galleryBase").unitegallery(); 
        jQuery("#alterGallery").unitegallery({
            gallery_autoplay:true,
            slider_transition: "slide",
            slider_control_zoom:false,
            gallery_width:1110,
            gallery_height:675,
            slider_scale_mode_fullscreen: "down",
            gallery_theme: "grid",
            theme_panel_position: "bottom",
            gallery_control_thumbs_mousewheel:true
        }); 
        jQuery("#partsGallery").unitegallery({
            gallery_autoplay:true,
            slider_transition: "slide",
            slider_scale_mode_media: "down",
            theme_panel_position: "left"
        });
    });  
&lt;/script>
	</code>


<h3>Примеры</h3>
<p>
	1. В шаблоне полной новости  (<b>fullstory.tpl</b>) в нужном месте добавить код для вывода готовой галереи с id <b>gallery</b>
</p>
	<code>
[xfgiven_manyfotos]
	{include file="assets/unitegallery/tpl/showfull-xfields.tpl"}
[/xfgiven_manyfotos]
	</code>
	<p>
		2. В шаблоне полной новости  (<b>fullstory.tpl</b>) в нужном месте добавить код для вывода готовой галереи с id <b>alterGallery</b>
	</p>
	<code>
[xfgiven_manyfotos]
	{include file="assets/unitegallery/tpl/xfields_altergallery.tpl"}
[/xfgiven_manyfotos]
	</code>
	<p>
		3. В шаблоне полной новости  (<b>fullstory.tpl</b>) в нужном месте добавить код для вывода готовой галереи с id <b>partsGallery</b>
	</p>
	<code>
[xfgiven_manyfotos]
	{include file="assets/unitegallery/tpl/xfields_partsgallery.tpl"}
[/xfgiven_manyfotos]
	</code>
	<p>
		Данный код отобразит готовую галерею картинок загруженную через дополнительное поле с именем <b>manyfotos</b>. <bR>
		Если же доп.поле пустое - то данный блок не будет загружен в шаблоне полной новости.
	</p>
	
</div>
