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
		var lst_id = $(".litem:last").find("input").attr("id");
		var	lid = lst_id.match(/\d/);

		$(".litem:last").clone()
		.appendTo(".wrap_litem")
		.find("input")
		.attr("id","list_gifts_attributes_"+(parseInt(lid)+1)+"_text")
		.attr("name","list[gifts_attributes]["+(parseInt(lid)+1)+"][text]")
		.val("");

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

	$(".tdgif").each(function(){
		$(this).find("span").click(function(){
			var giftId=$(this).next("input").val();
			$.ajax({
			  url: "test.html",
			  success: function(){
			    $(this).addClass("done");
			  }
			});
		})
	})

});
