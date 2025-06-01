$base = "C:\xampp\htdocs\OkaidiObaibi\2025"
$folders = @(
    "Bandeau\Bandeau_VP",
    "Bandeau\Bandeau_Outlet",
    "BPL\BPL_VP",
    "BPL\BPL_Outlet",
    "La_zone1\Zone_VP_Lancement",
    "La_zone1\Zone_VP_SUP",
    "La_zone2",
    "La_zone3",
    "Les_BZ"
)

# Créer la structure
foreach ($folder in $folders) {
    $path = Join-Path $base $folder
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    # Crée un fichier pour que Git suive le dossier
    Set-Content -Path "$path\README.md" -Value "Dossier $folder"
}