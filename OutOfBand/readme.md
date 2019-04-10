# Formatting a multiple objects using out of band

In a pipeline, the first object emitted is chosen as the type to format the output of the pipeline.
Other types, can be formatted using either the List or Custom control.  This is called an `OutOfBand` format.

**NOTE:** Table is explicitly blocked.

## Marking a format as out of band

In the `ps1xml`, in the `View` containing `ListControl` or `CustomControl`, Add the `<OutOfBand /> ` element for the view you want rendered OutOfBand.

## Adding the format to you module

When you have the format working add the following line to your PSD1 of your module

```Powershell
FormatsToProcess = @('oob-custom.ps1xml')
```

See, https://docs.microsoft.com/en-us/powershell/developer/module/how-to-write-a-powershell-module-manifest

## Full example - CustomControl

- [oob-custom.ps1xml](Custom/test/oob-custom.ps1xml)
- [test.psm1](Custom/test/test.psm1)
- [test.psd1](Custom/test/test.psd1)
- [demo.ps1](Custom/test/test.psd1)

## Full example - ListControl

- [oob-custom.ps1xml](Custom/test/oob-list.ps1xml)
- [test.psm1](Custom/test/test.psm1)
- [test.psd1](Custom/test/test.psd1)
- [demo.ps1](Custom/test/test.psd1)
