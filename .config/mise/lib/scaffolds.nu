# Shared helpers for the scaffolds repository's mise tasks.
#
# Resolved through NU_LIB_DIRS (see mise.toml): `use scaffolds.nu`.
# Relies on MISE_PROJECT_ROOT and MISE_ORIGINAL_CWD from mise at runtime.

# List scaffold directory names.
export def names []: nothing -> list<string> {
    ls --short-names $env.MISE_PROJECT_ROOT
        | where type == dir
        | get name
        | where {|name| $name not-in [test partials] }
        | sort
}

# Print the defined scaffolds.
export def show []: nothing -> nothing {
    print "Available scaffolds:"
    for name in (names) { print $"  ($name)" }
}

# Generate a scaffold into ./test/x_<scaffold>_x.
export def generate [name: string]: nothing -> nothing {
    let root = $env.MISE_PROJECT_ROOT

    if ($root | path join $name | path type) != "dir" {
        print $"Error: scaffold '($name)' does not exist"
        print ""
        show
        exit 1
    }

    let project = $"x_($name)_x"

    rm --recursive --force ($root | path join test $project)

    let extra = match $name {
        "elixir" | "fish" | "ruby" | "rust" => [
            "useGitHubActions:bool=true"
            "useGitHubFunding:bool=false"
            "useDependabot:bool=true"
            "includeAIPolicy:bool=true"
        ]
        "gleam-action" => ["useGitHubFunding:bool=true"]
        "gleam-monorepo" => [
            "useGitHubActions:bool=false"
            "useGitHubFunding:bool=false"
            "useDependabot:bool=true"
        ]
        "go" => [
            "useGitHubActions:bool=true"
            "useGoreleaser:bool=true"
            "useGitHubFunding:bool=false"
            "useDependabot:bool=true"
        ]
        _ => [
            "useGitHubActions:bool=true"
            "useGitHubFunding:bool=true"
            "useDependabot:bool=true"
            "includeAIPolicy:bool=true"
        ]
    }

    cd $root

    scaffold new --preset test --no-prompt --output-dir (
      $root | path join test
    ) --force --run-hooks always $"./($name)" $"Project=($project)" ...$extra

    print ""
    print $"Scaffold generated in test/($project)"
}

# Swap template delimiters: `edit` turns curly into square, `save` the reverse.
# With no scaffold, uses the directory mise was invoked from.
export def swap [direction: string, scaffold: string = ""]: nothing -> nothing {
    let root = $env.MISE_PROJECT_ROOT
    let invoked = $env.MISE_ORIGINAL_CWD

    if $scaffold == "" and $invoked == $root {
        print "Usage: mise run edit|save <scaffold>"
        print ""
        show
        exit 1
    }

    let target = if $scaffold != "" { $root | path join $scaffold } else { $invoked }

    if ($target | path type) != "dir" {
        print $"Error: scaffold directory '($target)' does not exist"
        exit 1
    }

    cd $target

    match $direction {
        "edit" => {
            rename-pattern '\{\{.+?\}\}' '{{' '[['
            rename-pattern '\}\}' '}}' ']]'
        }
        "save" => {
            rename-pattern '\[\[.+?\]\]' '[[' '{{'
            rename-pattern '\]\]' ']]' '}}'
        }
        _ => {
            print "Usage: mise run edit|save [scaffold]"
            exit 1
        }
    }
}

# Rename paths matching `pattern`, replacing `from` with `to` in the whole path.
def rename-pattern [pattern: string, from: string, to: string]: nothing -> nothing {
    # Directories: one at a time, shallowest first, until none remain.
    loop {
        let dir = ^fd -H -td $pattern | lines | sort | get 0?
        if $dir == null { break }

        git-mv $dir ($dir | str replace --all $from $to)
    }

    for file in (^fd -H -tf $pattern | lines) {
        git-mv $file ($file | str replace --all $from $to)
    }
}

# A failed move would otherwise leave the directory loop spinning forever.
def git-mv [from: string, to: string]: nothing -> nothing {
    let result = ^git mv $from $to | complete
    if $result.exit_code != 0 {
        print --stderr $"git mv ($from) ($to) failed: ($result.stderr | str trim)"
        exit 1
    }
}
