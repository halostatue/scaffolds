#!/usr/bin/env nu
#MISE description="Test a template by generating it into ./test/<scaffold>"
#USAGE arg "<scaffold>" help="Scaffold to generate"

use scaffolds.nu

scaffolds generate $env.usage_scaffold
