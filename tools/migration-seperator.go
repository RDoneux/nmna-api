package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strconv"
	"io/fs"
	"strings"
)

func main() {

	if len(os.Args) < 1 {
		fmt.Println("Usage: migration-seperator <source-path>")
		os.Exit(1)
	}

	migrationsDir := os.Args[1]

	fmt.Println("Migrations Directory:", migrationsDir)

	err := filepath.WalkDir(migrationsDir, func(path string, d fs.DirEntry, err error) error {


		dir, fileName := filepath.Split(path)

		if strings.Contains(dir, "_") {
			return nil
		}

		if !strings.HasSuffix(fileName, ".sql") {
			return nil
		}

		fileParts := strings.Split(fileName, "_")
		versionParts := strings.Split(fileParts[0], "")

		major, err := strconv.Atoi(strings.Join(versionParts[0:2], ""))
		minor, err := strconv.Atoi(strings.Join(versionParts[2:3], ""))

		newVersion := "0" + "0" + strconv.Itoa(major) + "0" + strconv.Itoa(minor);

		newFileName := newVersion + "_" + strings.Join(fileParts[1:], "_")
		newFilePath := filepath.Join(dir, newFileName)
		fmt.Println(fileName + " -> ", newFilePath)

		renameError := os.Rename(path, newFilePath)
		if renameError != nil {
			return err
		}
		
		return nil

	})

	if err != nil {
		fmt.Println(err)
	}

}
