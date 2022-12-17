/*
Copyright © 2022 Thibault HAZELART <thazelart@gmail.com>
*/
package cmd

import (
	"fmt"
	"os"

	mcobra "github.com/muesli/mango-cobra"
	"github.com/muesli/roff"
	"github.com/spf13/cobra"
)

// manCmd represents the man command
var manCmd = &cobra.Command{
	Use:   "man",
	Short: "Generates golang-cli-template's command line manpages",
	Hidden: true,
	Args: cobra.NoArgs,
	Run: func(cmd *cobra.Command, args []string) {
		manPage, err := mcobra.NewManPage(1, rootCmd)
    if err != nil {
        panic(err)
    }

    manPage = manPage.WithSection("Copyright", "(C) 2022 Thibault HAZELART <thazelart@gmail.com>")

    fmt.Fprint(os.Stdout, manPage.Build(roff.NewDocument()))
	},
}

func init() {
	rootCmd.AddCommand(manCmd)
}
