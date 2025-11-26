<?php namespace ProcessWire;
/**
 */ 

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

tidy_dump(pages()->get(5844)->h_aw_popularity->value);
tidy_dump(pages()->get(5850)->h_aw_rarity->value);
exit;
/*
foreach([5844,5850] as $id){
    echo "============================ id=$id\n";
    foreach(pages()->get($id) as $pp) {
	if (!is_object($pp)) continue;
	foreach($pp as $p) {
 */
foreach(pages()->find("template=h_artwork") as $p) {	    
    if (( empty($p->h_aw_popularity) &&  empty($p->h_aw_rarity) &&  empty($p->size) &&  empty($p->h_aw_size)) ||
	(!count($p->h_aw_popularity) && !count($p->h_aw_rarity) && !count($p->size))) continue;
    echo sprintf("%4d %-30s %-5s %-5s h_aw_popularity='%s' h_aw_rarity='%s'\n",
		 $p->id,$p->title, (empty($s=$p->size)?"":$s->last->name), $p->aw_size, $p->h_aw_popularity, $p->h_aw_rarity);
}

exit;

// size field...
foreach(pages()->find("template=h_artwork, size=90x90") as $p) {
    printf("%s\n", $p->title);
}
exit;

if (0){
$p = pages()->get("template=h_artwork");
$c = 0;
b_debug::_dbg("--------------------------------------------- ".(++$c));
setKeyValue($p,'size', '90x90', false);
b_debug::_dbg("--------------------------------------------- ".(++$c));
setKeyValue($p,'size', '45x45', true);
b_debug::_dbg("--------------------------------------------- ".(++$c));
setKeyValue($p,'size', 'Twilly', false);
b_debug::_dbg("--------------------------------------------- ".(++$c));
setKeyValue($p,'size', 'Gavroche', false);
b_debug::_dbg("--------------------------------------------- ".(++$c));
setKeyValue($p,'size', 'gavroch', false);
b_debug::_dbg("--------------------------------------------- ".(++$c));

foreach(pages()->get("template=sizes")->children as $p){
    echo ">>>>>>>>>>>>>>>>> ".$p->name."\n";
    echo "                  ".$p->title."\n";
}
//tidy_dump(pages()->get("template=sizes")->children->each);
exit;
}

foreach([
    //"template=h_artwork, h_aw_rarity=3",
    "template=h_artwork, h_aw_rarity=R|1|2",
    "template=h_artwork, h_aw_rarity%=R 1 2",
    "template=h_artwork, h_aw_rarity~|=R 1 2",
    //"template=h_artwork, h_aw_brand=hermes",
    //"template=h_brand, title=Dior"
    ] as $selector) {
echo "----------------------- selector = $selector\n";
    foreach($pages->find($selector) as $p) {
//        echo tidy_dump($p);
	printf("%s = '%s' %s\n", 'h_aw_rarity', $p->h_aw_rarity->title, $p->title); 
    }
}
exit;
$page = $pages->get("template=h_person");
echo tidy_dump($page->h_av_duty);
setKeyValue($page, 'h_av_duty', 'Artist', false);
setKeyValue($page, 'h_av_duty', 'Artist', false);
setKeyValue($page, 'h_av_duty', 'Unnown', false);
setKeyValue($page, 'h_av_duty', 'Owner', true);
echo tidy_dump($page->h_av_duty);
exit;
/*
// Find the option by title OR by value OR by id
$option = $page->h_av_duty->getOptions()->get("title=Artist");
echo tidy_dump($option);

if(!$option) {
    $field = $fields->get('h_av_duty');
    $option = $field->addOption('Artist'); // creates new option
    $field->save();
}

// Assign the option
$page->h_av_duty = [$option->id]; // array of option IDs
echo tidy_dump($p);

exit;
*/
#$sizes = pages()->get("template=sizes");
$p = pages()->get("template=h_artwork");
echo tidy_dump($p); exit;
echo tidy_dump($p->size);
setKeyValue($p, 'size', '40x40', $saveToDB=false);
echo tidy_dump($p->size);
exit;

/* ******************************************************************************************* */

if (0) {
    $p = pages()->get("name=The Savana Dance");
    echo tidy_dump($p->title);
    echo tidy_dump($p->size);
    $p = pages()->get(6165);
    //echo tidy_dump($p->title);
    exit;
}

/* ******************************************************************************************* */

if (0) {
    $p = pages()->get("template=h_person, title=Christiane Vauzelles");
echo tidy_dump($p);exit;
    setKeyValue($p, 'h_av_url', 'https://dn.se', $saveToDB=false);
    echo tidy_dump($p->h_av_url);
    echo "h_av_url = ".$p->h_av_url."\n";
    exit;
    $size = $p->size->get('title');
    printf('"%s"  "%s"'. "\n", $p->title, $size);
    
    setKeyValue($p, 'size', 'Gavroche', $saveToDB=false);
    
    $size = $p->size->title;
    printf("\"%s\"  \"%s\"\n", $p->title, $size);
    exit;
}

/* ******************************************************************************************* */

if (1) {
    //echo tidy_dump(pages()->get(6163));
    foreach (['size','sizes','country','countries'] as $item) {
	ob_start();

	if (in_array($item,['sizes','countries'])) echo tidy_dump(pages()->get("template=$item"));
	
	$tp = $templates->get($item);
	echo "template $item\n";
	echo tidy_dump($tp);
	
	$f  = $fields->get($item);
	echo "field $item\n";
	echo tidy_dump($f);
	
	foreach(pages()->find("limit=1, template=$item") as $page) {
            echo "page $item $page->name\n";
            if ($page->name == '90x90' && $page->parent != $pages->get('sizes')) {
		die("??????????????$page->parent\n");
		$page->parent = $pages->get('sizes');
		//$page->save();
            }
            echo tidy_dump($page);
	}
	$output = ob_get_clean();
	$output = str_replace(['countries','sizes'], 'NAMEs',$output);
	$output = str_replace(['country',  'size'],  'NAME', $output);
	$output = str_replace(['Countries',    'Sizes'],'Labels', $output);
	$output = str_replace(['Country',      'Size'], 'Label', $output);
	$output = str_replace(['90x90',    'france'],'page', $output);
	file_put_contents("/tmp/$item.txt", $output);
    }
    
    echo "sdiff -sbB /tmp/size.txt /tmp/country.txt\n";
    echo "sdiff -sbB /tmp/sizes.txt /tmp/countries.txt\n";
    exit;
}

/* ******************************************************************************************* */

$options = ['G','ES','EL','Sold','T','MT'];

foreach(['countries', 'country', 'sizes', 'size'] as $tp) {
    echo "template \"$tp\"\n";
    $printed = false;
    foreach(pages()->find("template=$tp") as $page) {
        echo "   $page->id  $page->title\n";
        if (!$printed) { $printed=true; echo tidy_dump($page); }
    }
}
exit;

/* ******************************************************************************************* */

// Loop
foreach(pages()->find('template=h_person, sort=h_av_firstname') as $page) {
    if (!$page->country->count) continue;
    echo tidy_dump($page->country);
    echo "$page->title ".$page->country->name."\n";
    foreach($page->country as $item) {
        echo "<li><a href='$item->url'>$item->title</a></li>\n";
    }

    echo "Same with alternate syntax\n";
    echo $page->country->each(
        "<li><a href='{url}'>{title}</a></li>\n"
    );
    break;
}

exit;

/* ******************************************************************************************* */


if (0) {
    $items = $fieldtypeOptions->getOptions($field);
    echo tidy_dump($items); exit;
    $field = $fields->get('h_aw_options');
    echo tidy_dump($field->type->getOptions($field));
    foreach($field->type->getOptions($field) as $opt){
        if (!empty($value=$opt->getValue())) printf("%-25s %s\n", $p->title, $opt->title);
    }
    exit;
}elseif(0){
    foreach(pages()->find('template=h_artwork, sort=title, h_aw_options='.join('|',$options)) as $p) {
        //        if ($p->title=='Ex-libris') echo tidy_dump($field=$p->h_aw_options); $ss=1;
        foreach ($options as $v) {
            if ($opt = ($field=$p->h_aw_options)->getByValue($v)) {
                printf("%-25s %s\n", $p->title, $opt->title);
            }
        }
    }
}else{
    foreach(pages()->find('template=h_artwork, sort=title, h_aw_options='.join('|',$options)) as $p) {
        printf("%-25s %s\n", $p->title, '');
        foreach ($p->h_aw_options->each('value') as $v) echo "   $v\n";
        //$p->h_aw_options = new SelectableOptionArray();
        //$p->save();
    }
}

exit;

/* ******************************************************************************************* */

//first remove the fields from 'user' template before deleting them.
$t = $templates->get('h_artwork');
$t = $templates->get('h_search');

$pp=pages()->find(($selector="template=h_search"));
if ($pp->count) {
    foreach($pp as $p) {
        var_dump($p);
        echo "page '".$p->title."'\n";
    }
}else{
    echo "nothing for '$selector'\n";
}

$fg = $t->fieldgroup;
echo "template '".$t->name."'\n";
echo "fieldgroup '".$fg->name."'\n";
//$fg->remove($fields->get('your_field'));
//$fg->save();

//delete the fields
$f = $fields->get('h_aw_day0');
echo "field '".$f->name."'\n";

//$fields->delete($f);
