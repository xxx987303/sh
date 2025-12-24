<?php namespace ProcessWire;
/**
 * include "0_fields.txt";
 */ 
require_once __dir__ . '/debug.php';
require_once __dir__ . '/../site/templates/_func.php';
require_once "/Users/yb/Sites/sh/index.php";

$saveToDB = false;
$user = Users()->get('yb');

foreach([5922,5923,5924] as $id) tidy_dump(pages()->get($id)); exit;

//tidy_dump(($b=pages()->get("template=h_artwork, title=Brazil"))->h_aw_variant); exit;
//tidy_dump(pages()->get("template=h_search"));

if (0) {
    if (!($p = new Page(templates()->get("search")))->id) {
	$p->title = "Search results";
	$p->name = "search";
	$p->status = "hidden";
	//$p->save();
    }
    tidy_dump($p);
    exit;
}


if (0) {
    $root = pages()->get("template=h_artwork, title=Brazil");
    $var  = pages()->get("template=h_artwork, title=Brazil II");
    if ($root->id && $var->id) {
	$root->h_aw_variant->add($var);
    }
    //$root->save();
    tidy_dump($root);
    exit;
}

if (0) {
    function createAdminPage(String $name, String $o) {
	global $saveToDB;
	if (empty(($page=pages()->get($name))->id)) {
	    echo "------------------------------------------- Creating $o('$name')\n";
	    $page = ($o == 'role'
		? new Role(templates()->get($o))
		: new Permission(templates()->get($o)));
	    $page->name = $name;
	    $page->parent = "/processwire/access/{$o}s/";
	    //  $page->status = systemID, system
	    $page->template = $o;
	    $page->status5753 = 1;
	    $page->status5754 = 1;
	    $page->status5755 = 1;
	    if ($o == 'Role') $page->permissions = pageArray();
	    if (true || $saveToDB) $page->save();
	    tidy_dump($page);
	} else {
	    echo "------------------------------------------- Already exists $o('$name')\n";
	}
	return $page;
    }
    
    $r_editor    = createAdminPage('artwork-editor', 'role');
    $r_fmember   = createAdminPage('family-member',  'role');
    $p_full_menu = createAdminPage('see-full-menu',  'permission');
    $p_restricted= createAdminPage('see-restricted', 'permission');
    
    //foreach(['yb','ab','mb','vb','tb','ib','margo'] as $name) {
    foreach(['yb','ib','margo'] as $name) {
	if (($u=users()->get($name))->id) {
	    echo "------------------------------------------------------- $u->name already exists\n";
	} else {
	    echo "------------------------------------------------------- Creating user $name\n";
	    $u = new User();
	    $u->name = $name;
	    $u->roles = PageArray(Roles()->get(37)); // Guest
	}
	
	$u->roles->add($r_fmember);

	// Clean roles
	if ($name == 'margo') {
	    $u->roles->remove(Roles()->get(38)); // Superuser
	    $u->roles->add($r_editor);
	}elseif ($name == 'yb') {
	    $u->roles->add($r_editor);
	    tidy_dump($u);
	}
	
	// Save
	if ($saveToDB) $u->save();

	// Show roles
	foreach ($u->roles as $r) {
	    echo "  -- Role $r->name\n";
	    foreach ($r->permissions as $p) {
		echo "    -- Perm $p->name\n";
		//tidy_dump($p);
	    }
	}
	// tidy_dump($u->roles);    
    }
    exit;
    //foreach(users()->find("name^=m|y") as $u) { tidy_dump($u->roles); } exit;
}

if (0) {
    foreach(['Верещагина','Кузьминых'] as $n){
	foreach(pages()->find("title~=$n") as $p) {
	    echo "---------------------- id=$p->id\n";
	    foreach($p->fields as $f) {
		if ($f->name == 'body') continue;
		$v = $p->$f;
		echo "$f->name: $v\n";
	    }
	    $p->parent='/d_spot/d_persons/';
	    if ($saveToDB) $p->save();
	    tidy_dump($p,$p->title);
	}
    }
    exit;
    tidy_dump(pages()->get("title~=Верещагина")); exit;
}
    
if (0) {
    foreach (pages()->find("h_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    foreach (pages()->find("a_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    foreach (pages()->find("d_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    exit;
}

if (0){
    foreach(pages()->find("template=h_artwork") as $p) {
	if (empty($p->h_aw_url)) continue;
	echo "$p->h_aw_url\n";
    }
    exit;
}

if (0) {
    $page->nicePictures = pages()->get(5847)->images;
    $pwpswp = $modules->get('MarkupProcesswirePhotoswipe');
    echo str_replace('/site/', '/sh/site/',$pwpswp->renderGallery($page->nicePictures))."\n";
    exit;
}

if (1) {
    // Set all the pages to be visible in 2 langs
    $allTP = ['a_artwork',
	      'a_artworks',
	      'a_collection',
	      'a_collections',
	      'a_person',
	      'a_persons',
	      'a_possession',
	      'a_possessions',
	      'a_school',
	      'a_schools',
	      'a_search',
	      'a_seller',
	      'a_sellers',
	      'a_spot',
	      'countries',
	      'country',
	      'd_artwork',
	      'd_artworks',
	      'd_person',
	      'd_persons',
	      'd_search',
	      'd_spot',
	      'h_artwork',
	      'h_artworks',
	      'h_brand',
	      'h_brands',
	      'h_collection',
	      'h_person',
	      'h_persons',
	      'h_possession',
	      'h_possessions',
	      'h_search',
	      'h_seller',
	      'h_sellers',
	      'h_size',
	      'h_sizes',
	      'h_spot',
	      'search',];

    pages()->setOutputFormatting(false);
    
    foreach($allTP as $tp) {
	$count = 0;
	foreach(pages()->find("template=$tp") as $p) {
	    $count++;
	    echo "id={$p->id} {$p->name}\n";
	    foreach($languages as $lang) {
		if($lang->isDefault()) continue;
		$status = in_array($lang->name, ['french','swedish']) ? 0 : 1;
		$p->set("status$lang", $status);
		$p->save();
	    }
	} 
	printf ("=================================================== %3d $tp\n",$count);
    }
    exit;
}

if(0){
    $languageTranslator = wire('LanguageTranslator');
    var_dump($languageTranslator);
    foreach($languages as $language) {
	$languageTranslator->setCurrentLanguage($language);
	//LanguageTranslator::setCurrentLanguage($language);
	foreach(['Do it yourself',
		 'may be class name',
		 'Проверка',
		 'Help me'] as $f) {
	    printf("%-15s --> %s\n",$f,__($f));
	    printf("%-15s --> %s\n",$f,_x($f,'context'));
	}
    }
    exit;
}

if (0) {
    $f_format = "   %-15s = %s\n";
    foreach(pages()->find("template=h_artwork") as $p) {
	echo"page::$p->name\n";
	printf($f_format, 'id', $p->id);
	foreach($p->fields as $f) {
	    if (!empty($x=(string)$p->$f)) printf($f_format, $f->name, $x);
	}
    }
    exit;
}

//var_dump(pages()->get(5800)->h_aw_url); exit;
foreach(pages()->fine("template=h_artwork") as $p) {
    if (empty($p->h_aw_url)) continue;
    if ($p->h_aw_url === "") continue;
    var_dump($p->h_aw_url);
    echo "$p->title    $p->h_aw_url\n";
}
exit;

var_dump(pages()->get(5847)->h_aw_url); exit;

$a = [];
//foreach(pages()->find("template=h_person, sort=title") as $p){
foreach(pages()->find("template=h_artwork, sort=title") as $p){
    $n = strToLower($sanitizer->transliterate((string)$p->title));
    //echo "$n\n";
    if (!empty($a[$n])) echo "$n\n";
    @$a[$n]++;
}
tidy_dump($a);
exit;

tidy_dump((string)pages()->get("template=h_artwork")->h_aw_brand);
tidy_dump((string)(pages()->get("template=h_artwork")->h_aw_brand));
tidy_dump(pages()->get("template=h_artwork")->h_aw_brand->id); exit;
tidy_dump(pages()->get("title~=Magic Kelly")->h_aw_options); exit;
tidy_dump(pages()->get("template=h_artwork")->h_aw_person); exit;

//print_r(fields()->get('title')); exit;
print_r(pages()->get("template=h_artwork")->h_aw_brand); exit;
print_r(pages()->get("template=h_person")->h_av_duty);
//print_r(fields()->get('h_aw_sizeX')); exit;
if(1){
    foreach (pages()->find("template=h_brand, title^=5") as $p) {
	echo "{$p->name}\n";
	//$p->delete();
	exit;
    }
    exit;
}

if(0){
    $p = pages()->get("title~=Moscou");
    foreach($p->fields as $f) {
	echo " *  ".$f->type."\n";
    }
    exit;
}

if(0){
    $f=fields()->get('h_aw_size');
    /*
       tidy_dump($p->h_aw_size);
       tidy_dump(
       tidy_dump(
       tidy_dump(getType($p->h_aw_size));
     */
    echo getType($f,'h_aw_size');
    echo getType($f->type,'h_aw_size');
    echo getType($p, 'p');
    echo getType($p->h_aw_size->type,'p->h_aw_size');
    exit;
}


if(1) {
    echo " *\n";
    printf (($fmt=" *   %-20s %-25s %1s %-10s %-10s\n"),'name','type','derefAsPage','inputfield','inputfieldClass');
    echo " *\n";
    foreach(fields() as $f){
	if ($f->derefAsPage == 2){
	    echo "{$f->name} derefAsPage={$f->derefAsPage}\n";
	    $f->derefAsPage = 1;
	    $f->save();
	}
	printf ($fmt, $f->name, $f->type, $f->derefAsPage, $f->inputfield, $f->inputfieldClass);
		
	//	if (in_array($f->name,["h_aw_size","h_aw_sizes"])) tidy_dump($f);
    }
    exit;
}


if(0){
    foreach(pages()->find("template=h_artwork, sort=title") as $p){
	echo "h_aw_size={$p->h_aw_size} {$p->id} {$p->template} title={$p->title}\n";
    }
    exit;
}


// Set sizes after move size->h_aw_size
if (1) {
    foreach(['90x90' => [5844, 5847, 5849, 5850, 5851, 6024, 6038, 6144], // 90x90
	     '45x45' => [6147, 6092],                                     // 45x45
	     '42x42' => [6159]] as $size => $pages) {                     // 42x42
	echo "\n========== $size\n";
	foreach($pages  as $id) {
	    $page = pages()->get($id);
	    $key = $page->h_aw_size;
	    echo "\n  ---------------------- {$page->id} {$page->title} \n";
	    setKeyValue($page, 'h_aw_size', $size, $saveToDB);
	}
    }
    exit;
}

// Dump old/new size fields
if(1) {
    $size    = templates()->get('size');
    $sizes   = templates()->get('sizes');
    $h_size  = templates()->get('h_size');
    $h_sizes = templates()->get('h_sizes');
    // tidy_dump(pages()->get("template=sizes")->parent);
    
    if($h_size->parentTemplates != [$h_sizes->id]) {
	$h_size->parentTemplates = [$h_sizes->id];
	$h_size->save();
	echo ">>>>>>>> set h_size->parentTemplates\n";
    }else{
	echo "!!!!!!!! OK h_size parentTemplates ".$h_size->parentTemplates[0]." \n";
    }
    
    if($h_sizes->childTemplates != [$h_size->id]) {
	$h_sizes->childTemplates = [$h_size->id];
	$h_sizes->save();
	echo ">>>>>>>> set h_sizes->childTemplates\n";
    }else{
	echo "!!!!!!!! OK h_sizes parentTemplates ".$h_sizes->parentTemplates[0]." \n";
    }
    
    foreach([$size, $sizes, $h_size, $h_sizes] as $tp){
	if (empty($tp)) {
	    echo "------- template empty...\n";
	    continue;
	}
	
	$item = $tp->name;
	echo "------- template $item\n";
	//$tp = templates()->get($item);
	$data=''; foreach(['parentTemplates','childTemplates'] as $pc) if(!empty($p=$tp->$pc)) $data .= " $pc=[".join(',',$p)."]";
	echo " Template id={$tp->id} name={$tp->name} $data\n";
	foreach(pages()->find("template=$item") as $ps) {
	    $parent = pages()->get($ps->parent_id);
	    echo "   Page id={$ps->id} template={$ps->template} name={$ps->name} title={$ps->title} parent={$parent->title}\n";
	    if (in_array($item,['sizes','h_sizes'])){
		foreach(pages()->get("template=$item")->children as $p) {
		    echo "     Child {$p->title}\n";
		}
		tidy_dump(fields()->get($item), "Field $item");
	    }
	    /*
	       foreach(pages()->find($s="template=h_artwork h_aw_size={$ps->id}") as $p) {
	       echo "  Page id={$p->id} template={$p->template} name={$p->name} title={$p->title}\n";
	       }
	       echo "     $s\n";
	     */
	}
    }
    exit;
}


    /*
tidy_dump(pages()->get(5844)->h_aw_popularity->value);
tidy_dump(pages()->get(5850)->h_aw_rarity->value);
exit;
*/

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
setKeyValue($page, 'h_av_duty', 'Designer', false);
setKeyValue($page, 'h_av_duty', 'Designer', false);
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
setKeyValue($p, 'size', '40x40', $saveToDB);
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
