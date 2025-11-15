<?php namespace ProcessWire;
/**
 */ 

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

exit;
/* ******************************************************************************************* */

$p = pages()->get("name=The Savana Dance");
print_r($p->title);
print_r($p->size->title);
$p = pages()->get(6165);
//print_r($p->title);
exit;

$p = pages()->get("title~='The Savana Dance', template=h_artwork");
print_r($p->size);

$size = $p->size->get('title');
printf('"%s"  "%s"'. "\n", $p->title, $size);

setKeyValue($p, 'size', 'Gavroche', $dryRun=true);

$size = $p->size->title;
printf("\"%s\"  \"%s\"\n", $p->title, $size);
exit;

/* ******************************************************************************************* */

foreach (['size','sizes','country','countries'] as $item) {
    ob_start();

    $tp = $templates->get($item);
    echo "template $item\n";
    print_r($tp);

    $f  = $fields->get($item);
    echo "field $item\n";
    print_r($f);

    foreach(pages()->find("limit=1, template=$item") as $page) {
        echo "page $item $page->name\n";
        if ($page->name == '90x90' && $page->parent != $pages->get('sizes')) {
            die("??????????????$page->parent\n");
            $page->parent = $pages->get('sizes');
            //$page->save();
        }
        print_r($page);
    }
    $output = ob_get_clean();
    file_put_contents("/tmp/$item.txt", $output);
}

echo "sdiff -sbB /tmp/size.txt /tmp/country.txt\n";
echo "sdiff -sbB /tmp/sizes.txt /tmp/countries.txt\n";
exit;

/* ******************************************************************************************* */

$options = ['G','ES','EL','Sold','T','MT'];

foreach(['countries', 'country', 'sizes', 'size'] as $tp) {
    echo "template \"$tp\"\n";
    $printed = false;
    foreach(pages()->find("template=$tp") as $page) {
        echo "   $page->id  $page->title\n";
        if (!$printed) { $printed=true; print_r($page); }
    }
}
exit;

/* ******************************************************************************************* */

// Loop
foreach(pages()->find('template=h_person, sort=h_av_firstname') as $page) {
    if (!$page->country->count) continue;
    print_r($page->country);
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
    print_r($items); exit;
    $field = $fields->get('h_aw_options');
    print_r($field->type->getOptions($field));
    foreach($field->type->getOptions($field) as $opt){
        if (!empty($value=$opt->getValue())) printf("%-25s %s\n", $p->title, $opt->title);
    }
    exit;
}elseif(0){
    foreach(pages()->find('template=h_artwork, sort=title, h_aw_options='.join('|',$options)) as $p) {
        //        if ($p->title=='Ex-libris') print_r($field=$p->h_aw_options); $ss=1;
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
