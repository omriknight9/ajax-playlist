class FormPopup {
	constructor() {

	}

	build() {
		var popupContainer = $('<div>', {
			id: 'popupContainer',
		});

		var popup = $('<div>', {
			class: 'popup',
		}).appendTo(popupContainer)

		$('<button>', {
			id: 'close',
			text: '✘',
			click: this.closePopup.bind(this), 
		}).appendTo(popup)

		$('body').append(popupContainer);
	}	

	closeWithEsc() {
		$(document).keydown(function(e) {
		    if (e.keyCode == 27) {
		        this.closePopup();
		    }
		}.bind(this));
	}

	closePopup() {
		$('#popupContainer').remove();
	}
}
