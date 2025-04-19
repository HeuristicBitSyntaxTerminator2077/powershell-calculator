# PowerShell Command-Line Calculator
# Vibe Coded by C H A N  L E E

Write-Host 'Enter first number:'
$a = [double](Read-Host)
Write-Host 'Enter operator (+, -, *, /):'
$op = Read-Host
Write-Host 'Enter second number:'
$b = [double](Read-Host)

switch ($op) {
    '+' { $result = $a + $b }
    '-' { $result = $a - $b }
    '*' { $result = $a * $b }
    '/' {
        if ($b -eq 0) {
            $result = 'Error: Division by zero'
        } else {
            $result = $a / $b
        }
    }
    Default { $result = 'Invalid operator' }
}

Write-Host "Result: $result"
