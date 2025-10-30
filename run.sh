#!/bin/bash
javac Main.java || exit
java Main < input.txt > output.txt

if [ -f expected.txt ]; then
    echo "Comparing output with expected.txt..."
    git diff --no-index --color expected.txt output.txt
    if [ $? -eq 0 ]; then
        echo "✅ Output matches expected output!"
    else
        echo "❌ Output differs from expected output!"
    fi
else
    echo "⚠️ expected.txt not found — skipping comparison."
fi

# Remove all .class files
rm -f *.class

# Pause before closing (Windows Git Bash)
read -p "Press Enter to exit..."
