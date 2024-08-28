

do {
    Clear-Host
    Write-Host "Menú:"
    Write-Host "1. Listar los servicios arrancados."
    Write-Host "2. Mostrar la fecha del sistema."
    Write-Host "3. Ejecutar el Bloc de notas."
    Write-Host "4. Ejecutar la calculadora."
    Write-Host "5. Salir."

    $opcion = Read-Host "Selecciona una opción"

    Switch ($opcion) {
        1 {
            Get-Service | Where-Object { $_.Status -eq "Running" } | Format-Table -Property Name, Status -AutoSize
            Pause
        }
        2 {
            Get-Date -Format "dddd HH:mm K dd/MM/yyyy"
            Pause
        }
        3 {
            notepad
        }
        4 {
            calc
        }
        5 {
            exit
        }
        default {
            Write-Host "Opción invalida."
            Pause
        }
    }
} while ($true)

