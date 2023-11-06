# FileChunkingAndMerging

This repository provides a solution for splitting huge files into smaller chunks using 7-Zip (`7za.exe`) and merging them back to their original state when needed.

## Splitting Files

To split a large file into chunks, follow these steps:

1. Open a command prompt.

2. Change the directory to the location where you want to store the split files, for example:

```batch
cd "C:\Monthly-Splits"

3. Use the `7za.exe` utility to split the file. Adjust the size of the chunks as needed. In this example, the chunk size is set to 23GB (23000 MB):

```batch
"C:\pathtoexe\7za.exe" a -v23000m "Monthly-Files.zip" "D:\Monthly-Backup"

- `C:\Monthly-Splits`: Destination to store the chunks.
- `-v23000m`: Size of each chunk, in this case, it's 23000 MB (23GB), and you can modify it to your requirements.
- `Monthly-Files.zip`: The name of the chunk zip files.
- `D:\Monthly-Backup`: Source directory containing the file you want to split.

## Merging Files

To merge the split chunks back into the original file, follow these steps:

1. Open a command prompt.

2. Change the directory to the location where the split chunks are stored, for example:
```batch
cd "C:\Monthly-Splits"

3. Use the `copy` command to merge the split chunks. List all the chunk files in the order they were split:
```batch
copy /b Monthly-Files.zip.001+Monthly-Files.zip.002+...+Monthly-Files.zip.006

All the chunks will be merged into a file named `Monthly-Files.zip.001`.

4. To extract the original file from `Monthly-Files.zip.001`, you can use the 7-Zip application(https://7-zip.org/download.html).

Please make sure you have the necessary permissions and path configurations to perform these operations.

## License

This project is licensed under the MIT License.
