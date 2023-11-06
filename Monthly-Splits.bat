cd "C:\Monthly-Splits"
"C:\pathtoexe\7za.exe" a -v23000m "Monthly-Files.zip" "D:\Monthly-Backup"
:: C:\Monthly-Splits - Destination to store the chunks
:: -v23000m - Size of chunks, here it is 23000 mb(23GB), you can modify it
:: Monthly-Files.zip - Chunk Zip files Name
:: D:\Monthly-Backup - Source Directory