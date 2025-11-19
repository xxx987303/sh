<?php namespace ProcessWire;
/**
 */ 

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

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
