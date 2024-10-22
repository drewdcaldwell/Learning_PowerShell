<#
Chapter 11 Task: Bottles of Beer Writing a PowerShell program to produce the verse to the "99 Bottles of Beer" 
song from a given starting point. Learning to count down, format strings, algorithm design. A focus on 
writing a function and unit test, exploring ways to incorporate our function to generate the verses from 
for loops.
#>


# Bottles on the wall, keep it small so we can tell whats going on
$b = 10

# Invoke the Chorus
for($b; $b -gt 0; $b--){
    Write-Host "$b bottles on the wall,"
    # Call it juice to keep coding kid friendly
    Write-Host "$b bottle of juice"
    Write-Host "Take one down, Pass it around"
    $temp = $b -1
    Write-Host "$temp bottles of juice on the wall!"
    # Formatting
    Write-Host "========================="
}
