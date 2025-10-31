<?php

$n = 0;
$byTitle = true;
foreach(explode("\n",file_get_contents("/Users/yb/tmp/hermes.txt")) as $line){
  if(!$line) continue;
  $l = explode('.',$line);
  if(empty($l[3])) $l[3] = '';
  if($byTitle){
    printf("%4s %-30s  %-30s %-15s %s\n",++$n,$l[0],$l[1],$l[2],$l[3]);
  }else{
    foreach(explode('&',$l[1]) as $a){
      $ln = str_replace("d'O","O",trim(explode(',',$a)[0]));
      $linesByName[$ln][] = sprintf("     %-30s  %-30s %-15s %s",trim($l[0]),trim($l[1]),$l[2],$l[3]);
    }
  }
}

if(!$byTitle){
  ksort($linesByName);
  foreach($linesByName as $ln=>$scarfs){
    printf("%3s - %-15s\n",++$n,$ln);
    sort($scarfs);
    foreach($scarfs as $scarf) echo "$scarf\n";
  }
}

