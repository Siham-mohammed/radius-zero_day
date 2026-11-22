
#!/bin/bash

# Set the default output directory or use a custom path.
OUTPUT_DIR="${1:-$HOME/radius-projects/website-project}"

# Convert a relative path into an absolute path.
if [[ "$OUTPUT_DIR" != /* ]]; then
    OUTPUT_DIR="$PWD/$OUTPUT_DIR"
fi

# Protect existing files and directories.
if [[ -e "$OUTPUT_DIR" || -L "$OUTPUT_DIR" ]]; then
    echo "Error: Destination already exists: $OUTPUT_DIR"
    exit 1
fi

# Create the website directory structure.
mkdir -p "$OUTPUT_DIR/css" "$OUTPUT_DIR/js" "$OUTPUT_DIR/images" || exit 1

# Create the main HTML file.
cat > "$OUTPUT_DIR/index.html" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website Project</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Welcome to My Website</h1>
        <p>This website was generated using a Bash script.</p>
    </header>

    <script src="js/script.js"></script>
</body>
</html>
EOF

# Create the CSS file.
cat > "$OUTPUT_DIR/css/style.css" <<'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    margin: 0;
    padding: 40px;
    text-align: center;
}

h1 {
    color: #2563eb;
}
EOF

# Create the JavaScript file.
cat > "$OUTPUT_DIR/js/script.js" <<'EOF'
console.log("Welcome to my website project!");

document.addEventListener("DOMContentLoaded", function () {
    console.log("The website is ready.");
});
EOF

# Create the README files.
cat > "$OUTPUT_DIR/README.md" <<'EOF'
# My Website Project

This is a basic website starter project generated automatically
using a Bash script.

It includes HTML for structure, CSS for styling, JavaScript
for interactivity, and an images directory for visual assets.
EOF

cat > "$OUTPUT_DIR/css/README.md" <<'EOF'
# CSS Directory

This directory contains stylesheets used to control the appearance
and layout of the website.
EOF

cat > "$OUTPUT_DIR/js/README.md" <<'EOF'
# JavaScript Directory

This directory contains JavaScript files used to add functionality
and interactivity to the website.
EOF

cat > "$OUTPUT_DIR/images/README.md" <<'EOF'
# Images Directory

Store website images and visual assets here, including JPG,
PNG, SVG, and WebP files.
EOF

# Display the successful completion message.
echo "Website project generated successfully at: $OUTPUT_DIR"
