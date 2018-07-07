class Player {
	constructor(playlistId, playlistName, playlistImg) {
		this.playlistId = playlistId;
		this.playlistName = playlistName;
		this.playlistImg = playlistImg;
		this.getSongs();
	}

	getSongs() {
		$.get('api/playlist/' + this.playlistId + '/songs', function(response) {
			$('.playing-div').remove();
			this.songs = response.data.songs;
			this.buildPlayer();
		}.bind(this));
	}

	buildPlayer() {
		var container = $('<div>', {
			class: 'playing-div'
		}).insertAfter('header')

		var playingPlaylist = $('<div>', {
			class: 'playing-playlist',
		}).appendTo(container)

		var row = $('<div>', {
			class: 'row rowDiv',
		}).appendTo(playingPlaylist)
		
		var imgDiv = $('<div>', {
			class: 'img-div col-sm-6'
		}).appendTo(row)

		var playingImg = $('<img>', {
			class: 'playing-img animateDisc',
			src: this.playlistImg
		}).appendTo(imgDiv)

		$(playingImg).on('error', function(event) {
		    event.preventDefault();
		    $(this).attr('src', 'images/image-placeholder.jpg')
		});

		var songsDiv = $('<div>', {
			class: 'playing-songs',
		}).appendTo(row)

		$('<h4>', {
			text: this.playlistName,
			class: 'player-name'
		}).appendTo(songsDiv)

		var nowPlayingDiv = $('<div>',{
			class: 'nowPlayingDiv'
		}).insertAfter('h4')

		$('<span>', {
			text: "NOW PLAYING: " + this.songs[0].name, 
			class: "playing-now",
		}).appendTo(nowPlayingDiv);

		var currentSongs = $('<div>', {
			class: 'songsList'
		}).appendTo(songsDiv);

		
		var player = $('<audio>', {
			class: 'player',
			controls: true,
			autoplay: true,
			src: this.songs[0].url,
			controlsList: "nodownload",
			'data-song_id': 0,
		}).on('ended', this.playNext.bind(this))

		player.on('pause', this.matchCssPause);
		player.on('play', this.matchCssPlay);

		var deleteEditDiv = $('<div>' ,{
			class: 'deleteEditDiv',
		}).appendTo(container)

		var deletePlayerBtn = $('<button>' ,{
			class: 'deletePlayerBtn btn fas fa-trash-alt',
			click: (function(event) {
				event.preventDefault();
				var popup = new DynamicPopup('deletePopup.html', this.playlistId);
				popup.closeWithEsc();
				popup.build();

			}.bind(this))
		}).appendTo(deleteEditDiv)

		var editBtn = $('<button>' ,{
			class: 'editBtn btn fas fa-edit',
			click: this.editSongsform.bind(this)
		}).appendTo(deleteEditDiv)

		player.insertBefore('h4');

		songsDiv.append(this.addSongs.bind(this));
		$('[data-song_index="0"]').addClass("bold");


	}

	matchCssPause() {
		$('.animateDisc').css('animation-play-state', 'paused');
	}

	matchCssPlay() {
		$('.animateDisc').css('animation-play-state', 'running');
	}

	addSongs(e) {
		$.each(this.songs, function(index, val) {
			var newIndex = index + 1 + '. ';
			var songRow = $('<span>', {
				text: newIndex + val.name,
				class: 'songs-row',
				'data-song_index': index,
				click: function(e) {
					$('.player').attr({
						src: val.url,
						'data-song_id': index
					});
					$('.playing-now').text("NOW PLAYING: " + val.name);
					$('.bold').removeClass('bold');
					$('[data-song_index='+index+']').addClass("bold");
				}
			}).appendTo($('.songsList'))
		});
	}

	playSign(index) {

		$("['song_index'="+index+"]").css("font-weight", "bold")
		$('<span>', {
			class: "play-sign",
			text: "▶",
		}).prependTo($("['song_index'=index]"));
	}

	playNext(e) {
		var index = ++e.target.dataset.song_id;
		if (index >= this.songs.length) {return false;}
		e.target.src = this.songs[index].url;
		e.target.play();
		$('.playing-now').text("NOW PLAYING: " + this.songs[index].name);
		$('.bold').removeClass('bold');
		$('[data-song_index='+index+']').addClass("bold");
	}

	editSongsform()	{
		localStorage.setItem('songsList', JSON.stringify(this.songs));
		const editSongsform = new DynamicPopup('edit_songs_form.html', this.playlistId);
		editSongsform.build();
		editSongsform.closeWithEsc();

	}

}