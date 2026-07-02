default:
    just --list

# Make the templated files easily editable by renaming {{ to [[
edit scaffold="": (_rename "edit" scaffold)

# Make the templated files ready for saving by renaming [[ to {{
save scaffold="": (_rename "save" scaffold)

# Check for unsaved projects.
check-unsaved:
    #!/usr/bin/env fish

    echo "Unsaved scaffolds:"
    printf "  %s\n" (fd '\[\[|\]\]' | path dirname | grep -v / | sort)

# Test a template by generating it into ./test/<scaffold>
test scaffold:
    #!/usr/bin/env fish

    set root "{{ justfile_directory() }}"
    set scaffold "{{ scaffold }}"

    if not test -d "$root/$scaffold"
        echo "Error: scaffold '$scaffold' does not exist"
        echo ""
        just scaffolds
        exit 1
    end

    rm -rf "$root/test/x_"$scaffold"_x"

    set --local extra useGitHubActions:bool=true \
        useGitHubFunding:bool=true \
        useDependabot:bool=true

    switch $scaffold
        case elixir fish ruby rust
            set extra useGithubActions:bool=true \
                useGitHubFunding:bool=false \
                useDependabot:bool=true
        case gleam-action
            set extra useGitHubFunding:bool=true
        case gleam-monorepo
            set extra useGitHubActions:bool=false \
                useGitHubFunding:bool=false \
                useDependabot:bool=true
        case go
            set extra useGitHubActions:bool=true \
                useGoreleaser:bool=true \
                useGitHubFunding:bool=false \
                useDependabot:bool=true
    end

    scaffold new \
        --preset test \
        --no-prompt \
        --output-dir "$root/test" \
        --force \
        --run-hooks never \
        "./$scaffold" \
        Project="x_"$scaffold"_x" \
        $extra

    echo ""
    echo "Scaffold generated in test/x_"$scaffold"_x"

# Test all templates
test-all:
    #!/usr/bin/env fish
    for scaffold in (just _scaffolds)
        just test $scaffold
    end

# Show defined scaffolds
scaffolds:
    #!/usr/bin/env fish

    echo "Available scaffolds:"
    printf "  %s\n" (just _scaffolds)

_scaffolds:
    #!/usr/bin/env fish
    fd --max-depth 1 --type dir --exclude 'test' --exclude 'partials' |
      sort | path basename

_rename direction scaffold="":
    #!/usr/bin/env fish

    set root "{{ justfile_directory() }}"
    set invoked "{{ invocation_directory() }}"
    set scaffold "{{ scaffold }}"

    # Determine target directory
    if test -n "$scaffold"
        set target "$root/$scaffold"
    else if test "$invoked" != "$root"
        set target "$invoked"
    else
        echo "Usage: just edit|save <scaffold>"
        echo ""
        just scaffolds
        exit 1
    end

    if not test -d "$target"
        echo "Error: scaffold directory '$target' does not exist"
        exit 1
    end

    cd $target

    function rename_pattern
        set pattern $argv[1]
        set from $argv[2]
        set to $argv[3]

        # Rename directories one at a time until none remain
        while true
            set dir (fd -td $pattern | head -n1)
            test -z "$dir"; and break

            set newdir (string replace -a $from $to $dir)
            git mv $dir $newdir
        end

        # Rename all files
        for file in (fd -tf $pattern)
            set newfile (string replace -a $from $to $file)
            git mv $file $newfile
        end
    end

    switch {{ direction }}
        case edit
            rename_pattern '\{\{.+?\}\}' '{{ "{{" }}' '[['
            rename_pattern '\}\}' '}}' ']]'
        case save
            rename_pattern '\[\[.+?\]\]' '[[' '{{ "{{" }}'
            rename_pattern '\]\]' ']]' '}}'
        case '*'
            echo "Usage: just edit|save [scaffold]"
            exit 1
    end
