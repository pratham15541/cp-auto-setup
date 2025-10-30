# Competitive Programming Automation Setup

A streamlined automation setup for running Codeforces and other competitive programming problems locally with automated testing.

## 📁 Project Structure

```
cp_auto/
├── Main.java          # Main solution template with FastScanner
├── input.txt          # Test case input
├── output.txt         # Program output
├── expected.txt       # Expected output for verification
├── run.sh             # Bash script to compile and run
├── newjava.sh         # Script to create new Java files from template
├── cp_auto.bat        # Windows batch script for automation
└── Readme.md          # This file
```

## 🚀 Features

- **Fast I/O Template**: Pre-configured [`FastScanner`](Main.java) class for competitive programming
- **Automated Testing**: Quick compile, run, and output comparison
- **Template Generation**: Create new solution files instantly
- **Cross-Platform**: Support for both Windows (`.bat`) and Linux/Mac (`.sh`)

## 📝 Template Details

The [Main.java](Main.java) template includes:

### FastScanner Class

High-performance input reader optimized for competitive programming:

- `nextInt()` - Read integer
- `nextLong()` - Read long integer
- `nextDouble()` - Read double
- `next()` - Read string (space-delimited)
- `nextLine()` - Read full line
- 64 KB buffer for faster I/O operations

### Solution Structure

```java
private static void solve(FastScanner sc) throws Exception {
    int t = sc.nextInt();  // Number of test cases
    while (t-- > 0) {
        // Your solution code here
    }
}
```

## 🔧 How to Use

### Setup

1. **Create test input**: Add your test cases to [input.txt](input.txt)
2. **Add expected output**: Put the expected results in [expected.txt](expected.txt)
3. **Write solution**: Modify the `solve()` method in [Main.java](Main.java)

### Running on Linux/Mac

#### Compile and Run

```bash
# Make script executable (first time only)
chmod +x run.sh

# Run the program
./run.sh
```

The [run.sh](run.sh) script will:

1. Compile [Main.java](Main.java)
2. Run with [input.txt](input.txt) as input
3. Save output to [output.txt](output.txt)
4. Compare with [expected.txt](expected.txt) (if configured)

#### Create New Solution File

```bash
# Make script executable (first time only)
chmod +x newjava.sh

# Create new Java file
./newjava.sh ProblemName
```

### Running on Windows

#### Compile and Run

```batch
cp_auto.bat
```

The [cp_auto.bat](cp_auto.bat) script automates the compilation and execution process.

## 📋 Workflow Example

### Step 1: Prepare Test Case

Create [input.txt](input.txt):

```
2
5
3 1 4 1 5
3
2 7 1
```

Create [expected.txt](expected.txt):

```
5
7
```

### Step 2: Write Solution

Edit the `solve()` method in [Main.java](Main.java):

```java
private static void solve(FastScanner sc) throws Exception {
    int t = sc.nextInt();
    while (t-- > 0) {
        int n = sc.nextInt();
        int max = Integer.MIN_VALUE;
        for (int i = 0; i < n; i++) {
            int num = sc.nextInt();
            max = Math.max(max, num);
        }
        System.out.println(max);
    }
}
```

### Step 3: Run and Test

```bash
./run.sh
```

Check [output.txt](output.txt) for results and compare with [expected.txt](expected.txt).

## 🎯 Competitive Programming Tips

### Using FastScanner

The [`FastScanner`](Main.java) class in this template is **significantly faster** than Java's standard `Scanner`:

- Uses buffered byte array reading
- Avoids regex overhead
- Essential for problems with large inputs (10^5+ elements)

### Input/Output Best Practices

1. Always use [`FastScanner`](Main.java) instead of `Scanner`
2. Use `System.out.println()` for output (or `PrintWriter` for even faster output)
3. Test with maximum constraints locally using [input.txt](input.txt)

## 🛠️ Customization

### Modify Template

Edit [Main.java](Main.java) to add:

- Custom utility functions
- Common algorithms (GCD, prime checking, etc.)
- Data structures you frequently use

### Extend Automation

Update [run.sh](run.sh) or [cp_auto.bat](cp_auto.bat) to:

- Add automatic diff checking
- Generate multiple test cases
- Submit to online judges (with appropriate APIs)

## 📌 Notes

- The template is optimized for Codeforces-style problems
- Author: Pratham Parikh
- Created: 30.10.2025

## 🔗 Quick Reference

| File                         | Purpose                            |
| ---------------------------- | ---------------------------------- |
| [Main.java](Main.java)       | Solution template with FastScanner |
| [input.txt](input.txt)       | Test case input                    |
| [output.txt](output.txt)     | Program output                     |
| [expected.txt](expected.txt) | Expected output                    |
| [run.sh](run.sh)             | Linux/Mac automation script        |
| [newjava.sh](newjava.sh)     | Template file generator            |
| [cp_auto.bat](cp_auto.bat)   | Windows automation script          |

---

Happy Competitive Programming! 🎉

