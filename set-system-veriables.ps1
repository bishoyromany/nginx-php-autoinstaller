$new_entry = 'D:\nginx'
$search_pattern = ';' + $new_entry.Replace("\", "\\")
$old_path = [Environment]::GetEnvironmentVariable('path', 'machine');
$replace_string = ''
$without_entry_path = $old_path -replace $search_pattern, $replace_string
$new_path = $without_entry_path + ';' + $new_entry
[Environment]::SetEnvironmentVariable('path', $new_path, 'Machine');


$new_entry = 'D:\nginx\php'
$search_pattern = ';' + $new_entry.Replace("\", "\\")
$old_path = [Environment]::GetEnvironmentVariable('path', 'machine');
$replace_string = ''
$without_entry_path = $old_path -replace $search_pattern, $replace_string
$new_path = $without_entry_path + ';' + $new_entry
[Environment]::SetEnvironmentVariable('path', $new_path, 'Machine');