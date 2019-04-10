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
    [
}
```

You can access `s` using this scriptBlock `$_.b.s`.  In `ps1xml`, the element will look like `<ScriptBlock>$_.b.s</ScriptBlock>`

## Testing

To test, run `Update-FormatData -Path ./fi.ps1xml` where `./fi.ps1xml` is the path to your `ps1xml`.

Then, just output your object.

## Full example

- [ps1xml](fi.ps1xml)
- [example.ps1](example.ps1)
