/*jslint indent: 4 */
/*global $, document */
$(document).ready(function () {
    var base = $(".preview img").attr("src");
    $(".preview img").attr("src", base + "?" + $("#createCharacter").serialize());
    $("#createCharacter input, textarea, select").stop().keyup(function () {
        $(".preview img").attr("src", base + "?" + $("#createCharacter").serialize());
    });
    $("#gender-male, #gender-female, #SkinColor, #EyeColor, #HairColor").change(function () {
        if ($("#gender-male").is(":checked")) {
            $(".preview img").attr("src", base + "?" + $("#createCharacter").serialize());
        } else if ($("#gender-female").is(":checked")) {
            $(".preview img").attr("src", base + "?" + $("#createCharacter").serialize());
        } else
            $(".preview img").attr("src", base + "?" + $("#createCharacter").serialize());
    });
    $("#Background").change(function () {
        $.ajax({
            type: "POST",
				url: "functions/dnd/dnd.statcheck.php",
				data: {
					BG: $("#Background").val()
				},
				success: function (data) {
                    $('#SkillList ul').html(data);
                }
        });
    });
		$("#createCharacter").change(function () {
			$.ajax({
				type: "POST",
				url: "functions/dnd/dnd.ajax.classes.php",
				data: {
					CharName: $("#CharName").val(),
					Surname: $("#Surname").val(),
					Title: $("#Title").val(),
					Class: $("#Class").val(),
                    Race: $("#race-field").val(),
				},
                dataType: "json",
				success: function (returndata) {
                    $("#char_class").html(returndata.Class);
                    $("#char_name,input[type=text][name=CharacterName]").val(returndata.Name);
                    $("#char_surname").html(returndata.Surname);
                    $("#char_title").html(returndata.Title);
                    $("#char_race").html(returndata.Race);
				}
			});
		});
        $("#race-field,#Str-Checked,#Dex-Checked,#Con-Checked,#Int-Checked,#Wis-Checked,#Cha-Checked").change(function () {
			$.ajax({
				type: "POST",
				url: "functions/dnd/dnd.ajax.racial.php",
				data: {
					Race: $("#race-field").val()
				},
				success: function (data) {
                    var result = data.split('|');
                    var StrRaceChk;
                    var DexRaceChk;
                    var ConRaceChk;
                    var IntRaceChk;
                    var WisRaceChk;
                    var ChaRaceChk;
                    
                    var StrVal = parseInt($('input[name="Str"]').val());
                    var DexVal = parseInt($('input[name="Dex"]').val());
                    var ConVal = parseInt($('input[name="Con"]').val());
                    var IntVal = parseInt($('input[name="Int"]').val());
                    var WisVal = parseInt($('input[name="Wis"]').val());
                    var ChaVal = parseInt($('input[name="Cha"]').val());
                    
                    var StrChk = $('input[id="Str-Checked"]');
                    var DexChk = $('input[id="Dex-Checked"]');
                    var ConChk = $('input[id="Con-Checked"]');
                    var IntChk = $('input[id="Int-Checked"]');
                    var WisChk = $('input[id="Wis-Checked"]');
                    var ChaChk = $('input[id="Cha-Checked"]');
                    
                    var Str = parseInt(result[0]);
                    var Dex = parseInt(result[1]);
                    var Con = parseInt(result[2]);
                    var Int = parseInt(result[3]);
                    var Wis = parseInt(result[4]);
                    var Cha = parseInt(result[5]);
                    
                    if (StrChk.is(':checked')) {StrRaceChk = 1;} else {StrRaceChk = 0;}
                    if (DexChk.is(':checked')) {DexRaceChk = 1;} else {DexRaceChk = 0;}
                    if (ConChk.is(':checked')) {ConRaceChk = 1;} else {ConRaceChk = 0;}
                    if (IntChk.is(':checked')) {IntRaceChk = 1;} else {IntRaceChk = 0;}
                    if (WisChk.is(':checked')) {WisRaceChk = 1;} else {WisRaceChk = 0;}
                    if (ChaChk.is(':checked')) {ChaRaceChk = 1;} else {ChaRaceChk = 0;}
                    
                    $("#Str-racial").val(Str+StrRaceChk);
                    $("#Dex-racial").val(Dex+DexRaceChk);
                    $("#Con-racial").val(Con+ConRaceChk);
                    $("#Int-racial").val(Int+IntRaceChk);
                    $("#Wis-racial").val(Wis+WisRaceChk);
                    $("#Cha-racial").val(Cha+ChaRaceChk);
                    
                    $("#Str-total,#Str-value").val(StrVal+Str+StrRaceChk);
                    $("#Dex-total,#Dex-value").val(DexVal+Dex+DexRaceChk);
                    $("#Con-total,#Con-value").val(ConVal+Con+ConRaceChk);
                    $("#Int-total,#Int-value").val(IntVal+Int+IntRaceChk);
                    $("#Wis-total,#Wis-value").val(WisVal+Wis+WisRaceChk);
                    $("#Cha-total,#Cha-value").val(ChaVal+Cha+ChaRaceChk);
				}
			});
		});
        $("#race-field").change(function () {
            $('input[id="Str-Checked"]').attr('checked', false);
            $('input[id="Dex-Checked"]').attr('checked', false);
            $('input[id="Con-Checked"]').attr('checked', false);
            $('input[id="Int-Checked"]').attr('checked', false);
            $('input[id="Wis-Checked"]').attr('checked', false);
            $('input[id="Cha-Checked"]').attr('checked', false);
        });
});