$(function(){
	// Добавляем элемент select 
	$('<select />').appendTo('#fdw');

	//Добавляем опции в элемент select
	$('<option />', {
		'selected': 'selected',
		'value' : '',
		'text': 'Нажмите, чтобы выбрать рубрику...'
	}).appendTo('nav select');

	$('nav ul li a').each(function(){
		var target = $(this);

		$('<option />', {
			'value' : target.attr('href'),
			'text': target.text()
		}).appendTo('nav select');

	});

	// Событие onclicking при нажатии на ссылку
	$('nav select').on('change',function(){
		window.location = $(this).find('option:selected').val();
	});
});

// Выводим и скрываем подменю
$(function(){
	$('ul li').hover(
		function () {
			// Выводим подменю
			$('ul', this).slideDown(150);
		}, 
		function () {
			// Скрываем подменю
			$('ul', this).slideUp(150);			
		}
	);
});
