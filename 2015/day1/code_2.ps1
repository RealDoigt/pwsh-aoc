$input = (Get-Content input.txt).toCharArray()
$floor = 0
$pos = 1

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
