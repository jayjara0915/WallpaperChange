$currentDate = Get-Date
$currentHour = $currentDate.Hour

if ($currentHour -ge 18) {
    # set the wallpaper to the desired image
    $WallpaperPath = "<path to the 6 PM wallpaper image>"
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value $WallpaperPath
}

if ($currentHour -ge 9) {
    # set the wallpaper back to the original image
    $WallpaperPath = "<path to the original wallpaper image>"
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value $WallpaperPath
}
