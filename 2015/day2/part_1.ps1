$input = (Get-Content input.txt) -split "\n"
$result = 0

foreach ($line in $input)
{
    # Check if the line has the expected format
    if ($line -match '(\d+)x(\d+)x(\d+)')
    {
        $dimensions = $matches[1..3]

        # Convert dimensions to integers
        $dimensions = $dimensions | ForEach-Object { [int]$_ }

        # l * w
        $side1 = $dimensions[0] * $dimensions[1]

        # w * h
        $side2 = $dimensions[1] * $dimensions[2]

        # h * l
        $side3 = $dimensions[2] * $dimensions[0]

        $extra = 0

        if ($side1 -lt $side2 -and $side1 -lt $side3)
        {
            $extra = $side1
        }

        elseif ($side2 -lt $side1 -and $side2 -lt $side3)
        {
            $extra = $side2
        }

        else
        {
            $extra = $side3
        }

        $result += 2 * $side1 + 2 * $side2 + 2 * $side3 + $extra
    }
}

$result
