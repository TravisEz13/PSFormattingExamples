# Formatting a complex object

## Use a ps1xml to View

Use a `ps1xml` to create a table or list control that uses ScriptBlocks to print the properties of your object.

For example, given these classes:

```Powershell
Class A
{
    [B] $b;
}

Class B
{
    [String] $s;
}
```

You can access `s` using this scriptBlock `$_.b.s`.  In `ps1xml`, the element will look like `<ScriptBlock>$_.b.s</ScriptBlock>`

## Adding the format to you module

When you have the format working add the following line to your PSD1 of your module

```Powershell
FormatsToProcess = @('complex.ps1xml')
```

See, https://docs.microsoft.com/en-us/powershell/developer/module/how-to-write-a-powershell-module-manifest

## Full example

- [complex.ps1xml](test/complex.ps1xml)
- [test.psm1](test/test.psm1)
- [test.psd1](test/test.psd1)
- [demo.ps1](test/test.psd1)
