<?php
$row = 1;
$Races = array();
//$data2 = GetMeInfo("*", "cms_races", "WHERE `rName` = '$data[0]'", "a");

$SrcLA = array('UA:Ebr1.1', 'UA:GH', 'UA:Water3', 'UA:TOBM');
$SrcLB = array('UA', 'UA', 'UA', 'UA');

if (($handle = fopen("data/races.csv", "r")) !== FALSE) {
    while (($data = fgetcsv($handle, 4000, ",")) !== FALSE) {
        $num = count($data);
        $row++;
		if($data[0] == 'race' && $data[1] == 'subrace') {}
		else {
			$Src = explode(" ",$data[13]);

			$Langs = ucwords($data[4]);
			if ($Langs == '+1'| $Langs == '1') {$Lang = 'Common|Choice';}
			elseif ($Langs == '+2'| $Langs == '2') {$Lang = 'Common|Choice2';}
			elseif ($Langs == 'Elvish +1') {$Lang = 'Common|Elvish|Choice';}
			elseif ($Langs == 'Merfolk +1') {$Lang = 'Common|Merfolk|Choice';}
			elseif ($Langs == 'Auran (mimicry)') {$Lang = 'Auran|Mimicry';}
			elseif ($Langs == 'Kor Silent Speech') {$Lang = 'Kor|Silent Speech';}
			elseif ($Langs == '') {$Lang = 'Common';}
			else {$Lang = "Common|".str_replace(", ", "|", ucwords($data[4]));}

			if ($data[5] == NULL) {$Str = '0';} else {$Str = $data[5];}
			if ($data[6] == NULL) {$Dex = '0';} else {$Dex = $data[6];}
			if ($data[7] == NULL) {$Con = '0';} else {$Con = $data[7];}
			if ($data[8] == NULL) {$Int = '0';} else {$Int = $data[8];}
			if ($data[9] == NULL) {$Wis = '0';} else {$Wis = $data[9];}
			if ($data[10] == NULL) {$Cha = '0';} else {$Cha = $data[10];}

			$Races[] = array(
				"Name" => $data[0],
				"SubName" => $data[1],
				"Size" => ucwords($data[2]),
				"Speed" => $data[3],
				"Lang" => $Lang,
				"Str" => $Str,
				"Dex" => $Dex,
				"Con" => $Con,
				"Int" => $Int,
				"Wis" => $Wis,
				"Cha" => $Cha,
				"DV" => $data[11],
				"Features" => $data[12],
				"Source" => str_replace($SrcLA, $SrcLB, $Src[0]),
			);
		}
    }
    fclose($handle);
}
$cols = '1';
$Content .= "<div class='row'>
	<div class='col col_2 th'>Race Name</div><div class='col col_$cols th'>Race</div><div class='col col_$cols th'>SubRace</div>
	<div class='col col_$cols th'>Size</div><div class='col col_$cols th'>Speed</div><div class='col col_$cols th'>Language</div>
	<div class='col col_$cols th'>Darkvision</div><div class='col col_$cols th'>Scores</div><div class='col col_$cols th'>Source</div>
</div>";
foreach ($Races as $r) {
	$Name = ucwords($r['Name']);
	$Name = str_replace('-', '', $Name);
	if($r['SubName'] == '') {
		$SubName = '';
	} else {
		if($r['SubName'] == 'gray (Duergar)') {$SubName = "_Duergar";
		} elseif($r['SubName'] == 'Dark (drow)') {$SubName = "_Drow";
		} elseif($r['SubName'] == 'deep (svirfneblin)') {$SubName = "_Deep";
		} else {$SubName = "_".ucwords($r['SubName']);
		}
		if($r['Name'] == 'half-elf') {
			if($r['SubName'] == 'half-wood') {$SubName = "_Wood";
			} elseif($r['SubName'] == 'half-moon/sun') {$SubName = "_MoonSun";
			} elseif($r['SubName'] == 'half-drow') {$SubName = "_Drow";
			}  elseif($r['SubName'] == 'half-aquatic') {$SubName = "_Aquatic";
			}  elseif($r['SubName'] == 'none') {$SubName = "";
			}
		}
	}

	if ($Name == 'Minotaur (Krynn)') {
		$Race = 'Minotaur';
		$SubName = '_Krynn';
		$SubRace = 'Krynn';}
	else {
		$Race = $Name;
		$SubRace = $r['SubName'];}

	$FullName = $Race.str_replace(array('-', ' (', ')'), array('', '_', ''), $SubName);
	$data2 = GetMeInfo("*", "cms_races", "WHERE `rFullName` = '$FullName'", "a");
	if (!$data2) {
		$Content .= "<div class='row border'>";
	} else {
		$Content .= "<div class='row border success'>";
	}
		$Content .= "<div class='col col_2'>$FullName</div>";
		$Content .= "<div class='col col_$cols'>$Race</div>";
		$Content .= "<div class='col col_$cols'>$SubRace</div>";
		$Content .= "<div class='col col_$cols'>$r[Size]</div>";
		$Content .= "<div class='col col_$cols'>$r[Speed]</div>";
		$Content .= "<div class='col col_2'>$r[Lang]</div>";
		if ($r['DV'] == '') {
			$Content .= "<div class='col col_$cols'>0</div>";
		} else {
			$Content .= "<div class='col col_$cols'>$r[DV]</div>";
		}
		$Content .= "<div class='col col_$cols'>$r[Str]|$r[Dex]|$r[Con]|$r[Int]|$r[Wis]|$r[Cha]</div>";
		$Content .= "<div class='col col_$cols'>$r[Source]</div>";
		$Content .= "</div>";

	$stmt = $dbh->prepare('INSERT INTO cms_races (
		`rName`, `rFullName`, `rSubName`,  `rSize`,  `rSpeed`,  `rAbilScore`,  `Darkvision`,  `rLanguages`,  `rSource`
		) VALUES (
		:name, :fullname, :subname, :size, :speed, :scores, :vision, :langs, :source)
		ON DUPLICATE KEY UPDATE `rSource`= :source');
	$stmt->execute([
		'name'		 => $Race,
		'fullname'	 => $FullName,
		'subname'	 => $SubRace,
		'size'		 => $r['Size'],
		'speed'		 => $r['Speed'],
		'scores'	 => "$r[Str]|$r[Dex]|$r[Con]|$r[Int]|$r[Wis]|$r[Cha]",
		'vision'	 => $r['DV'],
		'langs'		 => $r['Lang'],
		'source'	 => $r['Source'],
	]);
}