Class B
{
    [String] $s;
    [Int] $I;
}

Class CList
{
    [Int] $t;
    [Int] $j;
}


$b = [b]@{
    s='a'
    i=1
}

$c = [CList]@{
    t=2
    j=3
}

function get-testobject {
    Write-Output @(
        $b
        $c
    )
}