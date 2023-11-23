$input = (Get-Content input.txt).toCharArray()
$floor = 0
$pos = 1

# I couldn't make this work using a normal for loop for some reason. Powershell's gimmicky syntax eludes my comprehension.
foreach ($paren in $input)
{
    if ($paren -eq "(")
    {
        ++$floor
    }

    else
    {
        --$floor
    }

    if ($floor -eq -1)
    {
        break
    }

    ++$pos
}

$pos
