param(
    [Parameter(Mandatory=$true)][int]$porcentajeMinimo
)

$discos = Get-WmiObject Win32_LogicalDisk

foreach ($disco in $discos) {
    $porcentajeEspacioLibre = [math]::Round(($disco.FreeSpace / $disco.Size) * 100)
    
    if ($porcentajeEspacioLibre -lt $porcentajeMinimo) {
        $espacioLibre = [math]::Round($disco.FreeSpace / 1GB)
        $tamaño = [math]::Round($disco.Size / 1GB)

        Write-Host "Unidad $($disco.DeviceID) $espacioLibre GB libres / $tamaño GB totales"
    }
}