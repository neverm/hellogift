<<<<<<< HEAD
function removeItems(){
	$(".del_but").each(function(){
			$(this).click(function(){
				countItems=$(".del_but").size();
				if(countItems!=1){
					$(this).parents(".litem").remove();
				}

			});
		});
}

$(document).ready(function() {

	$("#addp").click(function(){
		$(".litem:last").clone().appendTo(".wrap_litem").find("input").val("");

		removeItems();
	});

	removeItems();

	$(".lock").each(function(){
		$(this).click(function(){
			$(this).parents(".litem").toggleClass("closed");
			inp=$(this).parents(".litem").find("input");

			if (inp.attr('disabled')) inp.removeAttr('disabled');
            else inp.attr('disabled', 'disabled');

		});
	});

});
=======
// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
>>>>>>> 9b8c3c65153097d1c7894f5a1bb22d8f43ad5183
