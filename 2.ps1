Get-ChildItem -Filter *.jpg | ForEach-Object {
    $fecha = Get-Date -Format "yyyyMMdd"
    $nuevoNombre = "$fecha-$($_.BaseName)$($_.Extension)"
    Rename-Item $_.FullName $nuevoNombre
}