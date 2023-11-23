$input = (Get-Content input.txt).toCharArray()
$floor = 0

foreach ($paren in $input)
{
    if ($paren -eq "(")
    {
        $floor += 1
    }

    else
    {
        $floor -= 1
    }
}

$floor
