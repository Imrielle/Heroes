<?php
include('../funcs.utilities.php');
$Name = $_GET["Name"];
$Surname = $_GET["Surname"];
$Gender = $_GET["Gender"];
$Title = $_GET["Title"];
$SkinC = hex2RGB("#".$_GET["SkinColor"]);
$EyeC = hex2RGB("#".$_GET["EyeColor"]);
$HairC = hex2RGB("#".$_GET["HairColor"]);
$Race = 'Human';
$ImgPath = '';

$Eyes_Shape = "Base";

$base = imagecreatetruecolor(300, 430);
$transparent = imagecolorallocatealpha($base, 0, 255, 0, 127);
imagefill($base, 0, 0, $transparent);
imagesavealpha($base, true);

$white = imagecolorallocatealpha($base, 255, 255, 255, 20);
$grey = imagecolorallocate($base, 155, 155, 155);
$black = imagecolorallocatealpha($base, 0, 0, 0, 70);
$font_path = './SotA.ttf';

// CardFrame
$CardBG = imagecreatefrompng("../../images/avatars/CardBG.png");
$CardFill = imagecreatefrompng("../../images/avatars/CardFill.png");
$CardFrame = imagecreatefrompng("../../images/avatars/CardFrame.png");

$body = imagecreatefrompng("../../images/avatars/".$Race."_".$Gender."_body.png");
//$body = imagecolortransparent($body, 0, 255, 0);
$undies = imagecreatefrompng("../../images/avatars/".$Race."_".$Gender."_undies.png");
$Eyes01 = imagecreatefrompng("../../images/avatars/".$Race."_".$Gender."_Eyes_".$Eyes_Shape."01.png");
$Eyes02 = imagecreatefrompng("../../images/avatars/".$Race."_".$Gender."_Eyes_".$Eyes_Shape."02.png");
imagefilter($body,IMG_FILTER_COLORIZE, $SkinC['red'], $SkinC['green'], $SkinC['blue']);
imagefilter($Eyes01,IMG_FILTER_COLORIZE, $SkinC['red'], $SkinC['green'], $SkinC['blue']);
imagefilter($Eyes02,IMG_FILTER_COLORIZE, $EyeC['red'], $EyeC['green'], $EyeC['blue']);

//imagecopy(dest_im, src_im, dst_x, dst_y, src_x, src_y, src_w, src_h);
imagecopy($base, $CardBG, 0, 0, 0, 0, 300, 430);
imagecopy($base, $CardFill, 0, 0, 0, 0, 300, 430);
imagecopy($base, $body, 25, 50, 0, 0, 250, 368);
imagecopy($base, $undies, 25, 50, 0, 0, 250, 368);
imagecopy($base, $Eyes01, 25, 50, 0, 0, 250, 368);
imagecopy($base, $Eyes02, 25, 50, 0, 0, 250, 368);
imagecopy($base, $CardFrame, 0, 0, 0, 0, 300, 430);


// Print Text On Image
imagettftext($base, 12, 0, 20, 26, $black, $font_path, $Name);
imagettftext($base, 12, 0, 20, 25, $white, $font_path, $Name);
imagettftext($base, 12, 0, 100, 40, $grey, $font_path, $Surname);
imagettftext($base, 8, 0, 25, 485, $black, $font_path, $Title);

//$base = LoadPNG('../../images/Cleric.png');

header('Content-type: image/png');
imagepng($base);
imagedestroy($base);
exit;
