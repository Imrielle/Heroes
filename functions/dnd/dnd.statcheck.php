<?php
include('../funcs.db.php');
if (isset($_POST['BG'])) {
    $BG = $_POST['BG'];
} else {
    $BG = '1';
}

$Skills = ReadInfo("*", "cms_dnd_skills", "", "all");
$BGSkills = ReadInfo("*", "cms_bg_skills", "WHERE `bg_id` = $BG", "all");

/*print "<pre>";
print_r($BGSkills);
print "</pre>";

print '<ul>';
*/
foreach ($Skills as $Skill) {
    print '<li>';
    print '<label class="control control--checkbox">'.$Skill['Name'].' ('.$Skill['AbilScore'].')';
    print '<input name="'.$Skill['Name'].'-save-prof[]" type="checkbox" class="check"';
    foreach ($BGSkills as $BGSkill) {
        if ($BGSkill['skill_id'] == $Skill['ID']) {echo 'checked';}
    }
    print ' />';
    print '<div class="control__indicator"></div>';
    print '</label>';
    print '<input name="'.$Skill['AbilScore'].'-modifier" type="text" value="-1" disabled />';
    print '</li>';
}
//print '</ul>';