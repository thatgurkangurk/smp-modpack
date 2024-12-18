#!/usr/bin/env fish

# Ensure that the file exists
if not test -f mod-ids.txt
    echo "Error: mod-ids.txt not found."
    exit 1
end

# Read each line in the mod-ids.txt file
for line in (cat mod-ids.txt)
    # Execute the command with the current line as an argument
    echo "adding $line"
    packwiz mr add $line
end
