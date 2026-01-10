<?php namespace ProcessWire;
/**
 * include "0_fields.txt";
 */ 
require_once __dir__ . '/debug.php';
require_once __dir__ . '/../site/templates/_func.php';
require_once "/Users/yb/Sites/sh/index.php";

$saveToDB = false;

//tidy_dump(pages()->get(5906)); exit;
//foreach(pages()->find("template=a_artwork") as $p){if($p->parent->id!=5906)$p->parent='/a_spot/a_artworks/';$p->save();tidy_dump($p);} exit;
//foreach(pages()->find("template=a_artwork") as $p){if($p->parent->id!=5906) tidy_dump($p);} exit;
foreach(pages()->find("title^=A boor playing a lute") as $p) {echo "{$p->id};  {$p->title};  {$p->name}\n";tidy_dump($p);} exit;

if (1){
// Rename the originals to "variation" (here it is called "{name}-copy-of-{id}")
    $copies = ['Philosopher with an Open Book' => 'Philosopher with an Open Book',
	       'Portrait of italian'   => 'Italian portrait of the man',
	       'The Backgammon'        => 'The Tric-Trac',
	       'Card-sharpers'         => 'Card sharpers',
	       'Musician and gamblers' => 'A boor playing a lute in an interior',
	       
    ];
    foreach($copies as $c=>$donorTitle){
	$p = pages()->get("title^=$c");
tidy_dump($p);
	$donorOld = pages()->get("title^=$donorTitle");
	echo "$donorOld->id $donorOld->name $donorOld->title\n";
	$donorName = "{$p->name}-donor-of";
	if (!($donor = pages()->get("name=$donorName"))->id)  $donor = new Page(templates()->get("a_artwork"));
	$donor->name = $donorName;
	$donor->title = $donorOld->title;
	$donor->status5753 = 1;
	$donor->status5754 = 1;
	$donor->parent = '/a_spot/a_artworks/';
	if (!$donor->id) if (!$saveToDB) $donor->id = 111111; else $donor->save();
tidy_dump($donor, $donorName);
exit;
	
	foreach($donorOld->fields as $f) {
	    if (str_starts_with($f->name, 'a_p_') ||
		in_array($f->name,['id','name','a_aw_copy_artwork'])) continue;
	    if (empty($donorOld->$f)) continue; // isEmpty
	    $donor->$f = $donorOld->f;
	    continue;
	    
	    echo "{$f->name}: {$donorOld->$f}\n";
	    switch($f->name){
		case 'images':
		    foreach (explode('|',$donorOld->$f) as $img){
			foreach(explode("\n",shell_exec("mdfind -name $img 2>errors")) as $line){
			    if (strpos($line, 'Archive') || empty($line)) continue;
			    echo "  $line\n";
			}
		    }
		    break;
		default:
	    }
	    $value = (is_numeric($v=$donorOld->$f) && (($p=pages()->get($v)))->id) ? $p : $v;
	    setKeyValue($donor, $f, $value, $saveToDB=false);
	}
	if ($saveToDB) $donor->save();
	tidy_dump($donor,'donor');
    exit;
    }
    exit;
}


if(0) {
    $limit = 0;
    foreach(pages()->find("title~=Non-Leiden collection") as $c) {
	echo "$c->id $c-title\n";
	foreach (pages()->find("template=a_artwork, a_aw_collection={$c->id}") as $p){
	    if ($limit++ > 3) exit;
	    echo "  $p->title\n";
	    $pos  = pages()->get("template=a_possession, id={$p->a_aw_possession}");
	    $pos2 = pages()->get("template=a_possession, a_p_artwork=$p->id");
	    if ($pos->id != $pos2->id) die("??? {$pos->id} == {$pos2->id}\n");
	    if (empty($pos->fields)) { tidy_dump($pos,"????? no a_possession fields"); continue;}
	    foreach($pos->fields as $pf){
		if (in_array($pf->name, ['title','body'])) continue;
		if (is_object($p->$pf)) echo "    {$pf->name}: {$pos->$pf} in_page:{$p->$pf}\n";
		//tidy_dump($p->$pf);
	    }
	    $p->a_p_seller = $pos->a_p_seller;
	    $p->a_p_date = $pos->a_p_date;
	    $p->save();
	    exit;
	}
    }
    exit;
}

if(0){
    foreach(pages()->find("h_aw_options=ES|EL|Remix|Sold, sort=h_aw_options") as $p)
	tidy_dump($p->images);
	echo "{$p->h_aw_options->value} {$p->title} \n";
    exit;
}


if(0){
    foreach(['*','~','^'] as $op) {
	$s = "name$op=plumes-variations";
	$s = "title$op=1821";
	$s = "title$op=Hommage a l'Amitié";
	tidy_dump(pages()->get($s)->title,"operation: $s");
    }
    exit;
}

if(0){
    foreach (pages()->find("template=h_artwork, name*=variation|voyage|bolduc, sort=name") as $p){;
	echo "$p->name \n";
    }
    //tidy_dump(pages()->get('voyage-en-etoffes'));
    $name = "bolduc-au-carre-variations1"; 
    if (!($page = pages()->get($name))->id) {
	$page = new Page(templates()->get('h_artwork'));
	$page->name = $name;
	$page->save();
    } else {
	$page->parent = '/h_spot/h_artworks/';
    }
    $donor = pages()->get('voyage-en-etoffes');
    foreach ($donor->fields as $f) {
	if (!in_array($f->name, ['name','parent'])) $page->$f = str_replace('voyage-en-etoffes',$name,$donor->$f);
    }
    $page->title = "Bolduc au carre";
    $page->save();
    tidy_dump($page);
    exit;
}

if(0){
    $k = 1;
    $pp = [];
    foreach (pages()->find("template=h_artwork, title=tsubas") as $p){;
	$pp[$k] = $p;
	if ($k == 2) {
	    $pp[1]->h_aw_url  = $pp[2]->h_aw_url;
	    $pp[1]->h_aw_day0 = $pp[2]->h_aw_day0;
	    $pp[1]->h_aw_year = $pp[2]->h_aw_year = "1998";
	    $pp[1]->h_aw_size = $pp[2]->h_aw_size;
	    $pp[1]->h_aw_price = $pp[2]->h_aw_price;
	    $pp[1]->h_aw_seller = $pp[2]->h_aw_seller;
	    $pp[1]->h_aw_person = $pp[2]->h_aw_person;
	}
	$k++;
    }
    $pp[1]->save();
    foreach([1,2] as $k) {
	$p = $pp[$k];
	tidy_dump($p->title,"----------------------------------- k=$k");
	echo "id: $p->id\n";
	foreach ($p->fields as $f) {
	    //if ($f->name == 'body') continue;
	    echo trim("$f->name: {$p->$f}")."\n";
	}
    }
     tidy_dump($pp[1],'------------------------------------------------------');
    exit;
}
if(0){
    foreach (pages()->find("template=h_artwork") as $p){;
	if (empty($c=trim($p->h_aw_more))) continue;
	echo "more=$c\n";
	if (in_array($c,['2','3','G','B'],$c)) {
	    echo "XXXXXXXXXXXmore=$c\n";
	    $p->h_aw_more = "";
	    //$p->save();
	}
    }
    exit;
}

if(0){
    foreach(pages()->find("parent_id=5843, sort=name") as $p){
    //foreach(pages()->find("template=h_artwork, sort=name") as $p){
	echo "id=$p->id $p->parent $p->h_aw_brand $p->name\n";
    }
    exit;
}

if(0){
    // Reset variations
    //tidy_dump(pages()->get(5976));
    //tidy_dump(pages()->find("name^=5976-variations")); exit;
      $page = pages()->get("title=Brazil");
    $donor = pages()->get("name=brazil-variations1");
    if (!$donor->id) $donor = new Page(templates()->get('h_artwork'));
    $donor->title = "Brazil";
    $donor->name = "brazil-variations1";
    //$donor->save();
    tidy_dump($donor,'var');
    //$page()->save;
    exit;
}

if(0){
    // Comparing initial and carrent R_list.txt
    $l0 = 'R_list_original.txt';
    $l9 = 'R_list.txt';
    $input = $l9;
    foreach(explode("\n",file_get_contents($input)) as $line) {
	if (empty(trim($line))) continue;
	if ($input == $l0) $line = ".$line";
	$line = preg_replace("/^[0-9 -]*\./", '.',
			     str_ireplace(['подарок','"',', ', '”', '“','gavroche','bandana','de ','la ','les ',"l'",'?',', ',"l’"],
					  ['П',      '' , ',', '',  '', 'g',       'b','','','','','',',',''],
					  strToLower($line)));
	$l = explode('.', $line);
	foreach ($l as $k=>$v) $l[$k] = trim($k<3 ? $sanitizer->transliterate($v) : $v);
	echo trim(join(' . ', $l))."\n";
    }
    exit;
}

if(0){
    // Set "Photo from Wikimedia"
    foreach(pages()->find("template=h_artwork") as $p) {
	if (empty($c=$p->figcaption)) continue; 
	// f348f1bb-1536-4c20-898e-a15df291e2b7.jpg
//	if ( preg_match("/\||img|canvas/",          $p->images)) continue;
//	if ( preg_match("/^201.-/",     $p->images)) continue;
//	if (!preg_match("/[\w]*-[\w]*/",$p->images)) continue;
	$p->figcaption = "Photo from Wiki";
	$p->save();
	echo "$p->images\n";
    }
    exit;
}


if(0){
    //tidy_dump(pages()->get("title=Robert Dumas")->h_av_duty);
    //tidy_dump(pages()->get("title=Christiane Vauzelles")->h_av_duty);
    tidy_dump(pages()->get("template=a_collections"));
    if (!($p = pages()->get("template=h_collections"))->id){
	new Page(templates()->get("h_collections"));
	$p->title = "Collections";
	$p->name = "h_collections";
	$p->status5753 = 1;
	//$p->save();
    }
    tidy_dump($p);
    exit;
}

if(0) {
    if (!($p = new Page(templates()->get("search")))->id) {
	$p->title = "Search results";
	$p->name = "search";
	$p->status = "hidden";
	//$p->save();
    }
    tidy_dump($p);
    exit;
}


if(0) {
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

if(0) {
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
    
if(0) {
    foreach (pages()->find("h_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    foreach (pages()->find("a_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    foreach (pages()->find("d_aw_featured=1") as $p) echo "$p->template $p->id $p->name\n"; 
    exit;
}

if(0){
    foreach(pages()->find("template=h_artwork") as $p) {
	if (empty($p->h_aw_url)) continue;
	echo "$p->h_aw_url\n";
    }
    exit;
}

if(0) {
    $page->nicePictures = pages()->get(5847)->images;
    $pwpswp = $modules->get('MarkupProcesswirePhotoswipe');
    echo str_replace('/site/', '/sh/site/',$pwpswp->renderGallery($page->nicePictures))."\n";
    exit;
}

if(1) {
    // Set all the pages to be visible in minimum langs
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
	      //$status = in_array($lang->name, ['french','swedish']) ? 0 : 1;
		$status = in_array($lang->name, ['swedish']) ? 0 : 1;
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

if(0) {
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

if(0){
//var_dump(pages()->get(5800)->h_aw_url); exit;
foreach(pages()->find("template=h_artwork") as $p) {
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
}

if(0){
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


if(0) {
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
if(0) {
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
if(0) {
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


if(0){
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



if(0) {
    $p = pages()->get("name=The Savana Dance");
    echo tidy_dump($p->title);
    echo tidy_dump($p->size);
    $p = pages()->get(6165);
    //echo tidy_dump($p->title);
    exit;
}

if(0){
    foreach(pages()->find("template=country") as $p) {
	tidy_dump($p);
    }
    exit;
}

if(1) {
    //echo tidy_dump(pages()->get(6163));
    //foreach (['size','sizes','country','countries'] as $item) {
    foreach (['countries'] as $item) {

	if (in_array($item,['sizes','countries'])) echo tidy_dump(pages()->get("template=$item"));
	
	$tp = $templates->get($item);
	echo "template $item\n";
	//echo tidy_dump($tp);
	
	$f  = $fields->get($item);
	echo "field $item\n";
	//echo tidy_dump($f);
	
	foreach(pages()->find("limit=1, template=$item") as $page) {
            echo "page $item $page->name\n";
            if ($page->name == '90x90' && $page->parent != $pages->get('sizes')) {
		die("??????????????$page->parent\n");
		$page->parent = $pages->get('sizes');
		//$page->save();
            }
            echo tidy_dump($page);
	}
/*
	$output = str_replace(['countries','sizes'], 'NAMEs',$output);
	$output = str_replace(['country',  'size'],  'NAME', $output);
	$output = str_replace(['Countries',    'Sizes'],'Labels', $output);
	$output = str_replace(['Country',      'Size'], 'Label', $output);
	$output = str_replace(['90x90',    'france'],'page', $output);
	file_put_contents("/tmp/$item.txt", $output);
*/
    }
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


if(0) {
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
