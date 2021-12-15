<?php 

function fixFilePaths($path, $oldPath, $newPath){
    return file_put_contents($path, str_replace($oldPath, $newPath, file_get_contents($path)));
}

$default_path = $argv[1] ?? str_replace("\\", "/",__DIR__);
$oldPath = $argv[2] ?? "D:/nginx";

$enabledSites = __DIR__."/conf/sites-enabled";
$enabledSitesFiles = glob($enabledSites."/*.conf");
$enabledSitesFiles[] = __DIR__."/conf/nginx.conf";
$enabledSitesFiles[] = __DIR__."/set-system-veriables.ps1";
$enabledSitesFiles[] = __DIR__."/nginx-start.bat";
foreach(glob(__DIR__."conf/sites-enabled-sample/*.conf") as $file){
    $enabledSitesFiles[] = $file;
}

foreach($enabledSitesFiles as $file){
    fixFilePaths($file, $oldPath, $default_path);
}