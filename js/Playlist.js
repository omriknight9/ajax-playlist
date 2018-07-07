class Playlist {
	constructor(data) {
		this.id = data.id;
		this.name = data.name;
		this.image = data.image;
		this.container = null;
	}

	getId() {
		return this.id;
	}


	build() {
		this.container = $('<div>', {
			class: 'playlist',
			'data-p_id': this.id
		}).appendTo($('main'))

		var h3 = $('<h3>', {
			text: this.name,
			class: 'playlist-name'
		}).appendTo(this.container)

		h3.arctext({radius: 90});

		var playlistDiv = $('<div>', {
			class: 'playlistDiv'
		}).appendTo(this.container)

		$('<img>', {
			class: 'playlist-image',
			src: this.image
		}).appendTo(playlistDiv)

		 $(".playlist-image").bind("error",function(){
		  	$(this).attr("src","images/image-placeholder.jpg");
		 });

		var playBtn = $('<button>', {
			class: 'playlist-play-btn btn fas fa-play',
		}).appendTo(playlistDiv);

		var editDelete = $('<div>', {
			class: 'edit-delete',
		}).appendTo(playlistDiv)

		var deleteBtn = $('<button>', {
			class: 'playlist-delete-btn btn fas fa-trash-alt',
			'data-playlist_id': this.id,
			click: (function(event) {
				event.preventDefault();
				var popup = new DynamicPopup('deletePopup.html', this.id);
				popup.closeWithEsc();
				popup.build();

			}.bind(this))
		}).appendTo(editDelete)

		var editBtn = $('<button>', {
			class: 'playlist-edit-btn btn fas fa-edit',
			'data-playlist_id': this.id,
			click: this.editPlaylistform,
		}).appendTo(editDelete)
	}

	registerPlaying() {
		this.container.find('.playlist-play-btn').click(function(event) {
			event.preventDefault();
			  	$("html, body").animate({ scrollTop: 0 }, "slow");
			var player = new Player(this.id, this.name, this.image);
		}.bind(this));
	}

	editPlaylistform (e){
		var id = e.target.dataset.playlist_id;
		const formPopup = new DynamicPopup('edit_playlist_form.html', id);
		formPopup.build();
	}

	UpdatePlaylist (updateData) {
		delete updateData["id"];
		var updateObj = JSON.stringify(updateData);
		console.log(updateObj);
		return new Promise(function (res,rej) {
			$.post('api/playlist/' + this.id, updateObj, function (data) {
				res()
			});
		}.bind(this))
	}

	// deletePlaylist(id) {
	// 	$.ajax({
	// 		method: 'DELETE',
	// 		url: "api/playlist/" + id,
	// 		success: function(response) {
	// 		    this.container.empty();
			    
	// 		}.bind(this)

	// 	})
	// }
}