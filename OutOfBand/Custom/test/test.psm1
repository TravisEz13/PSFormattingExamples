Class B
{
    [String] $s;
    [Int] $I;
}

Class CCustom
{
    [Int] $t;
    [Int] $j;
    [string] Render(){
        return "my custom format: $($this.t) - $($this.j)"
    }
}


$b = [b]@{
    s='a'
    i=1
}

$c = [CCustom]@{
    t=2
    j=3
}

function get-testobject {
    Write-Output @(
        $b
        $c
    )
}