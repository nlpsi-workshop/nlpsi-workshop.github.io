#!/usr/bin/env bash
# Archive the current edition of the site as a static copy under /<year>/.
#
# Usage:   bin/archive_edition.sh <year>
# Example: bin/archive_edition.sh 2026
#
# The site is built with --baseurl /<year>, so all internal links and assets
# point inside the archive (e.g. /<year>/schedule/) and keep working after the
# main site moves on to the next edition.
#
# If `bundle` on your machine is broken, point BUNDLE at a working one, e.g.
#   BUNDLE=bundle3.2 bin/archive_edition.sh <year>
set -euo pipefail

YEAR="${1:-}"
if [[ ! "$YEAR" =~ ^[0-9]{4}$ ]]; then
  echo "Usage: $0 <year>   (e.g. $0 2026)" >&2
  exit 1
fi

cd "$(dirname "$0")/.."

if [[ -e "$YEAR" ]]; then
  echo "Error: folder '$YEAR/' already exists. Remove it first if you want to rebuild it." >&2
  exit 1
fi

BUNDLE="${BUNDLE:-bundle}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Building site for /$YEAR/ ..."
JEKYLL_ENV=production "$BUNDLE" exec jekyll build --baseurl "/$YEAR" -d "$TMP/site"

# The build copies earlier archives (2025/, ...) into the output; drop them so
# archives are not nested inside each other.
find "$TMP/site" -mindepth 1 -maxdepth 1 -type d -regextype posix-extended \
  -regex '.*/[0-9]{4}' -exec rm -rf {} +

mv "$TMP/site" "$YEAR"

cat <<EOF

Archived to $YEAR/ (will be served at https://nlpsi-workshop.github.io/$YEAR/).

Next steps:
  1. Add the edition to the "Past Editions" dropdown in _pages/drowpdown.md:
       - title: "$YEAR"
         permalink: https://nlpsi-workshop.github.io/$YEAR/
  2. Commit and push:  git add $YEAR _pages/drowpdown.md && git commit -m "Archive $YEAR edition"
EOF
