{* 

[xfvalue_x]
Значение дополнительного поля "x", где "x" название дополнительного поля

[xfvalue_X limit="X2"]
Выводит только текст дополнительного поля без HTML форматирования, при этом сам текст сокращается до указанного X2 количества символов. При этом сокращение текста происходит до последнего логического слова. Например [xfvalue_test limit="50"] выведет только первые 50 символов значения дополнительного поля c именем test

[xfnotgiven_X] [/xfnotgiven_X]
Выводят текст указанный в них если дополнительное поле не было задано при публикации новости, где "х" это имя дополнительного поля

[ifxfvalue tagname="tagvalue"] Текст [/ifxfvalue]
Выводят текст заключенный в них, если значение дополнительного поля совпадает с указанным. Где tagname это имя дополнительного поля, а tagvalue это его значение.

[ifxfvalue tagname!="tagvalue"] Текст [/ifxfvalue]
Выводят текст заключенный в них, если значение поля не совпадает с указанным. Где tagname это имя дополнительного поля, а tagvalue это его значение. 

[xfvalue_X image="Nr"]
Выводит загруженные для дополнительного поля с типом "Галерея" изображения, по отдельности. Где "X" это имя дополнительного поля, а "Nr" это номер изображения из галереи. Например, при использовании [xfvalue_test image="2"] будет выведено изображение номер два, загруженное в дополнительное поле с именем "test".


Новые опции https://dle-news.ru/release/1856-datalife-engine-v151-final-release.html 
25. Для шаблонов вывода публикаций (shortstory.tpl и fullstory.tpl) для дополнительных полей имеющих тип "Галерея изображений", добавлена поддержка новых тегов: [xfvalue_X image-url="Nr"] который выводит только URL выбранного изображения из галереи изображений, [xfvalue_X image-thumb-url="Nr"] который выводит только URL уменьшенной копии выбранного изображения из галереи изображений, [xfvalue_X image-description="Nr"] который выводит только описание выбранного изображения из галереи изображений. Где "X" это имя дополнительного поля, а "Nr" это номер изображения из галереи. Например, при использовании [xfvalue_test image-description="2"] будет выведено описание изображения номер два, загруженного в дополнительное поле с именем "test". Тем самым вы можете сделать полностью своё собственное оформление галереи изображений на своём сайте.

*}


<!-- UNITE gallery START -->
<section>

	<div id="gallery" style="display:none;">


		[xfgiven_manyfotos image-url="1"]
			<img alt='[xfvalue_manyfotos image-description="1"]'
			src='[xfvalue_manyfotos image-thumb-url="1"]'
			data-image='[xfvalue_manyfotos image-url="1"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="1"]

		[xfgiven_manyfotos image-url="2"]
			<img alt='[xfvalue_manyfotos image-description="2"]'
			src='[xfvalue_manyfotos image-thumb-url="2"]'
			data-image='[xfvalue_manyfotos image-url="2"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="2"]

		[xfgiven_manyfotos image-url="3"]
			<img alt='[xfvalue_manyfotos image-description="3"]'
			src='[xfvalue_manyfotos image-thumb-url="3"]'
			data-image='[xfvalue_manyfotos image-url="3"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="3"]

		[xfgiven_manyfotos image-url="4"]
			<img alt='[xfvalue_manyfotos image-description="4"]'
			src='[xfvalue_manyfotos image-thumb-url="4"]'
			data-image='[xfvalue_manyfotos image-url="4"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="4"]

		[xfgiven_manyfotos image-url="5"]
			<img alt='[xfvalue_manyfotos image-description="5"]'
			src='[xfvalue_manyfotos image-thumb-url="5"]'
			data-image='[xfvalue_manyfotos image-url="5"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="5"]

		[xfgiven_manyfotos image-url="6"]
			<img alt='[xfvalue_manyfotos image-description="6"]'
			src='[xfvalue_manyfotos image-thumb-url="6"]'
			data-image='[xfvalue_manyfotos image-url="6"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="6"]

		[xfgiven_manyfotos image-url="7"]
			<img alt='[xfvalue_manyfotos image-description="7"]'
			src='[xfvalue_manyfotos image-thumb-url="7"]'
			data-image='[xfvalue_manyfotos image-url="7"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="7"]

		[xfgiven_manyfotos image-url="8"]
			<img alt='[xfvalue_manyfotos image-description="8"]'
			src='[xfvalue_manyfotos image-thumb-url="8"]'
			data-image='[xfvalue_manyfotos image-url="8"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="8"]

		[xfgiven_manyfotos image-url="9"]
			<img alt='[xfvalue_manyfotos image-description="9"]'
			src='[xfvalue_manyfotos image-thumb-url="9"]'
			data-image='[xfvalue_manyfotos image-url="9"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="9"]

		[xfgiven_manyfotos image-url="10"]
			<img alt='[xfvalue_manyfotos image-description="10"]'
			src='[xfvalue_manyfotos image-thumb-url="10"]'
			data-image='[xfvalue_manyfotos image-url="10"]'
			data-description='{title} | {date} | {category}'
			itemprop="image"
			>
		[/xfgiven_manyfotos image-url="10"]
		

	</div>
</section>

<!-- UNITE gallery STOP -->

