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

