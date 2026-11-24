#!/usr/bin/env nu
#MISE description="Test all templates"

use scaffolds.nu

for name in (scaffolds names) {
    scaffolds generate $name
}
