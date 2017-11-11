$(document).ready(function () {
    $("#Level,#Class,#School").change(function () {
        $.ajax({
            type: "POST",
				url: "functions/dnd/dnd.ajax.spells.php",
				data: {
					Level: $("#Level").val(),
                    School: $("#School").val(),
                    Class: $("#Class").val()
				},
				success: function (data) {
                    $('#test').html(data);
                }
        });
    });
    jQuery('.scrollbar-outer').scrollbar();
    
    $(".spellDesc").shorten({
        "showChars" : 200,
        moreText: '>> More'
    });
});
