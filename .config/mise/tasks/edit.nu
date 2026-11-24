#!/usr/bin/env nu
#MISE description="Make the templated files easily editable by renaming curly delimiters to square"
#USAGE arg "[scaffold]" help="Scaffold to rename; defaults to the invoking directory"

use scaffolds.nu

scaffolds swap edit ($env.usage_scaffold? | default "")
