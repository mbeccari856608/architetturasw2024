$drawIoPath = "D:\Program Files\draw.io\draw.io.exe";


$files = Get-ChildItem -Path . -Filter *.drawio

# Itera attraverso ogni file e esegui l'istruzione desiderata
foreach ($file in $files) {
    # Sostituisci l'istruzione seguente con quella che vuoi eseguire
    Write-Host "Esegui un'istruzione per il file: $($file.FullName)"
    # Aggiungi qui l'istruzione da eseguire per ogni file
    & $drawIoPath -x -f png -o ./../images/$($file.BaseName).png $($file.FullName) -s 500

}
