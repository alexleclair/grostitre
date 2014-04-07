titles = [
	'Chef du directeur de la création cohésive organique biologique locale.',
	'Vice-président, directeur de la stratégie de l\'innovation systématique ',
	'Parrain de la cohésion des marques et des écosystèmes créatifs',
	'Figure de proue de la stratégie interactive de créativité organique',
	'Associé, prophète de la planification digitale',
	'Leader en chef senior, planification stratégique et engagement social ',
	'Grand manitou des tendances consommateur, chef du "growth hacking"',
	'Gros bonnet du "big data" et des tendances de visibilité synergiques',
	'Magnat de l\'avant-garde, spécialiste des millénials',
	'Adjudant de la direction client, développement durable des affaires',
	'Commandant en chef des relations agence-client, section "gamification"',
	'Boss des bécosses de la transfiguration des marques',
	'Meneur mondial des opérations de personnel 360',
	'Locomotive créative et pionnier de l\'innovation stratégique',
	'Maître incontesté du faisage de différence et du marketing agile',
	'Grand Clerc de l\'Internet des objets synergiques',
	'Virtuose, président du département des conteurs d\'histoires disruptives',
	'Spécialiste de l\'idéation et vice-président création de contenu',
	'Connaisseur viral, responsable du contenu cohésif et des indicateurs de performance sociale',
	'Sommelier créatif et spécialiste des expériences immersives',
	'Hacker stratégique du marketing contextuel ',
	'Champion de la cliquabilité et de la conversation à deux vitesses.',
	'VP stratégie, contenu digeste et retour sur investissement',
	'État-major de l\'expérience « deuxième-écran »',
	'Magistrat du SoLoMo, Baron de la disruption',
	'Grand sachem du média mérité, devin social',
	'Chef visionnaire, expérience de marque expérientielle'
	];
$ ->
	# $('.btn-success').on 'click', (e)->
	# 	e.preventDefault();
	# 	adjectives = ['Super', 'méga', 'Uber', 'Giga', 'Top', 'Extra']
	# 	additions = [' De la mort qui tue', ', mais encore meilleur', ' avec expérience', ' qui est vraiment meilleur']
	# 	alert (adjectives[Math.floor(Math.random()*adjectives.length)] + ' '+ $('input.title').val() + additions[Math.floor(Math.random()*additions.length)]).toLowerCase();
	# 	return false;


	$('.btn-submit').on 'click', (e)->
		e.preventDefault();
		$result = $('div.result');
		$form = $('div.form');
		company = $.trim($form.find('input.company').val());
		firstname = $.trim($form.find('input.firstname').val())
		lastname = $.trim($form.find('input.lastname').val())

		if firstname.length == 0
			$form.find('input.firstname').focus()
			return false;
		else if lastname.length == 0
			$form.find('input.lastname').focus()
			return false;
		if company.length == 0
			company = 'Gros Conglomérat Mondial Inc.';

		$result.find('.firstname').text(firstname)
		$result.find('.lastname').text(lastname)
		$result.find('.company').text(company)
		$result.find('.title').text(titles[Math.floor(Math.random()*titles.length)]);
		titleHtml = $result.find('.title').html();
		titleHtml = titleHtml.split('« ').join('«&nbsp;').split(' »').join('&nbsp;»')
		$result.find('.title').html(titleHtml);
		ga('send','pageview', '/resultats')
		$form.fadeOut 'fast', ()->
			$result.slideDown('fast')
		return false;

	$('.btn-retry').on 'click', (e)->
		e.preventDefault();
		$result = $('div.result');
		$form = $('div.form');
		$('.btn-submit').trigger 'click'
		# $result.fadeOut 'fast', ->
		# 	# $form.find('input').val('')
		# 	# $form.slideDown 'fast'
		ga('send','pageview', '/retry')

		return false;
	$('.btn-share').on 'click', (e)->
		e.preventDefault();
		$share = $('div.share');
		$share.slideDown 'fast'
		ga('send','pageview', '/partage')

		return false;