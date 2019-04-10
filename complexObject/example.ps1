
Update-FormatData -Path ./fi.ps1xml
Class A
{
[B] $b;
[C] $c;
}

Class B
{
[String] $s;
[Int] $I;
}

Class C
{
[Int] $t;
[Int] $j;
}


$b = [b]@{
    s='a'
    i=1
}

$c = [c]@{
    t=2
    j=3
}

Write-Output ([a]@{
    b=$b
    c=$c
})