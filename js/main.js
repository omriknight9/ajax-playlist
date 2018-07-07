fetch("api/playlist")
.then(response => response.json())
.then(playlists => {
	console.log(playlists.data);
	init(playlists.data);
	
	$('input[type=search]').keyup(function(event) {
		init(playlists.data.filter(pl => pl.name.toLowerCase().includes($(event.target).val().toLowerCase())))
	});
})


function init(playlists) {
	$('main').empty();
	playlists.forEach(playlistObj => {
		var playlists = new Playlist(playlistObj);
		playlists.build();
		playlists.registerPlaying();
	})
}

$('.addPlaylistBtn').click(function() {
	const formPopup = new DynamicPopup('addPlaylistForm.html');
	formPopup.build();
	formPopup.closeWithEsc();

});



