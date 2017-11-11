<?php
include('../funcs.db.php');
// Creating variables so that data can be returned.
if (isset($_POST['Class'])) {
    $Class = $_POST['Class'];
} else {
    $Class = 'Cleric';
}

if (isset($_POST['Level'])) {$Level = $_POST['Level'];} else {$Level = 'Cantrip';}
if (isset($_POST['School'])) {$School = $_POST['School'];} else {$School = 'All';}
if ($Level == 'All' && $Class == 'All' && $School == 'All') {
    $Query = '';
    $Limit = 'LIMIT 100';
} else {
    if ($Level == 'All') {
        $LevelQ = "NOT `Level` = '50'";
    } else {
        $LevelQ = "`Level` = '$Level'";
    }
    
    if ($School == 'All') {
        $SchoolQ = '';
    } else {
        $SchoolQ = " AND `School` = '$School'";
    }
    
    if ($Class == 'All') {
        $ClassQ = '';
    } else {
        $ClassQ = " AND `Class` LIKE '%$Class%'";
    }
    
    $Query = "WHERE $LevelQ $SchoolQ $ClassQ";
    $Limit = '';
}



$Spells = ReadInfo("*", "cms_dnd_spells", "$Query ORDER BY `ID` ASC $Limit", "all");

foreach($Spells as $S) {
print '<div class="card-body">
        <div class="spellName">'.$S['Name'].'</div>
        <p class="spellType">'.$S['Level'].', '.$S['School'].'</p>
        <div class="spellTable">
            <div class="row">
                <div class="col_6">
                    <p class="table-title">Casting Time</p>
                    <p class="tableCasting">'.$S['CastTime'].'</p>
                </div>
                <div class="col_6">
                    <p class="table-title">Range</p>
                    <p class="tableCasting">'.$S['CastRange'].'</p>
                </div>
            </div>
            <div class="row">
                <div class="col_6">
                    <p class="table-title">Components</p>
                    <p class="tableCasting">'.$S['Components'].'</p>
                </div>
                <div class="col_6">
                    <p class="table-title">Duration</p>
                    <p class="tableCasting">'.$S['Duration'].'</p>
                </div>
            </div>
        </div>
        <div class="spellDesc scrollbar-outer">
            <p>'.$S['Description'].'</p>
        </div>
        <div class="row">
            <div class="col_6 School">'.$S['School'].'</div>
            <div class="col_6 Source">'.$S['Source'].'</div>
        </div>
</div>';
}