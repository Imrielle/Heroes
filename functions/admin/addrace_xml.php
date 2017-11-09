<?php
$i = 0;
$xmlf = 'data/Character/Races.xml';

$Common = array("You can speak, read, and write Common and ", "You can speak, read, and write Common, ", ", and ", "and ",
	"one extra language of your choice", "one other language of your choice");
$LangRep = array('Common|', 'Common|', '|', '|','Choice','Choice');
$RaceClean = array('-', 'Wood Elf Descent','Moon Elf or Sun Elf Descent', ' Descent', 'Aquatic Elf', ' ');
$RaceCleanW = array('', 'Wood', 'MoonSun','','Aquatic','_');


if (file_exists($xmlf)) {
	$xml = simplexml_load_file($xmlf);

	$AScor = array('Str', 'Dex', 'Con', 'Int', 'Wis', 'Cha');
	$Languages = array();
	$sqld = array ();
	foreach ($xml->race as $a) {
		$i = $i+1;
		$Name0 = str_replace(')', '', $a->name->__toString());
		$NameA = explode("(", $Name0);
		$NameB = count($NameA);
		if($NameB >= 2) {
			$NameC = str_replace(' ', '', $NameA[0]);
			$NameD = str_replace('', '_', $NameA[1]);
			$NameFull = str_replace($RaceClean, $RaceCleanW, $NameC);
			$NameFull .= "_".str_replace($RaceClean, $RaceCleanW, $NameD);
		} else {
			$NameC = $NameA[0];
			$NameD = '';
			$NameFull = str_replace($RaceClean, $RaceCleanW, $NameC);
			$NameFull .= str_replace($RaceClean, $RaceCleanW, $NameD);
		}

		if ($NameC === 'Human') {
			if ($NameD === '') {
				$Scores = "1|1|1|1|1|1";
			} elseif ($NameD === 'Variant') {
				$Scores = "0|0|0|0|0|0";
			}
		} elseif ($NameC !=='Human') {
			$Scores = str_replace(', ', ' ', $a->ability->__toString());
			$ScoresS = explode(' ', $Scores);
			$Scores = count($ScoresS);

			foreach($AScor as $as) {
				if ($ScoresS[0] == $as) {
					$$as = $ScoresS[1];
				} elseif ($Scores == 4 && $ScoresS[2] == $as) {
					$$as = $ScoresS[3];
				} else {
					$$as = 0;
				}
			}
			$Scores = "$Str|$Dex|$Con|$Int|$Wis|$Cha";
		} else {

		}

		$sqld[$i] = array (
			"NameFull" => $NameFull,
			"Name"	 => $NameC,
			"Sub"	 => str_replace(array('Moon Elf or Sun Elf Descent', 'Drow Descent', 'Aquatic Elf Descent', 'Wood Elf Descent'), array('Moon or Sun Elf', 'Drow', 'Aquatic', 'Wood'), $NameD),
			"Size"	 => $a->size->__toString(),
			"Speed"	 => $a->speed->__toString(),
			"Scores" => $Scores,
		);
		foreach ($a->trait as $b) {
			$cc = count($a->trait);
			//echo "$NameC $cc<br />";
			if($NameC === 'Kenku'){
				$sqld[$i]["Language"] = 'Kenku|Mimicry';
			} elseif ($b->name->__toString() == 'Languages' || $b->name->__toString() == 'Language') {
				$Lang2 = explode('.', $b->text->__toString());
				$LangC = count($Lang2);
				for ($lnc = 0; $lnc <= ($LangC); $lnc++) {
					if($lnc == 0) {
						$sqld[$i]["Language"] = str_replace($Common, $LangRep, $Lang2[$lnc]);
					} else {
					}
				}
			} else {
			}
			$sqld[$i]['Traits'][] = array (
				"Trait"	 => str_replace("'", "&rsquo;", $b->name->__toString()),
				"Text"	 => str_replace("'", "&rsquo;", $b->text->__toString()),
			);
		}
	}

	$fgh = 0;
	$Content .= "<div class='row'>
			<div class='col'>[#]</div>
			<div class='col'>Name</div>
			<div class='col'>Sub Race</div>
			<div class='col'>Size</div>
			<div class='col'>Speed</div>
			<div class='col'>Abil. Scores</div>
			<div class='col'>Language</div>
		</div>";
	//print "<pre>"; print_r($sqld); print "</pre>";
	//print "<pre>"; print_r($Languages); print "</pre>";

	foreach ($sqld as $data) {
		if (!isset($data['Name'])) {

		} else {
			$fgh = $fgh+1;
			$SQL = "'$data[NameFull]', '$data[Sub]', '$data[Name]', '$data[Size]', '$data[Speed]', '$data[Scores]', '$data[Language]'";
			$ins = "INSERT INTO `cms_races` (`rFullName`, `rSubName`, `rName`, `rSize`, `rSpeed`, `rAbilScore`, `rLanguages`)
			VALUES ($SQL)";
			$Content .= "<div class='row'><div class='col full'>$ins</div></div>";
			$insert=$dbh->query($ins);
		}
	}
} else {
	exit('Failed to open test.xml.');
}
?>