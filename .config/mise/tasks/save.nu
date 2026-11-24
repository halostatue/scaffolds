#!/usr/bin/env nu
#MISE description="Make the templated files ready for saving by renaming square delimiters to curly"
#USAGE arg "[scaffold]" help="Scaffold to rename; defaults to the invoking directory"

use scaffolds.nu

scaffolds swap save ($env.usage_scaffold? | default "")
