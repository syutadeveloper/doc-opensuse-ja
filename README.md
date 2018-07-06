# doc-opensuse-ja
Restart of translation for openSUSE manuals...

## Description
Once upon a time, openSUSE manuals were translated to Japanese.
But these maintenances were abandoned because original documentations did not have a version control system, such as subversion, git etc.

But now they are hosted at github, so we retry to translate...

## Workflow
* Original XML files are converted to gettext's POT files.
* gettext's POT files can be used to create/merge PO files.
* We can translate PO files.
* PO files are converted back to (translated) XML files.

Please do not translate XML files directly. Please use PO files instead.

## License
GNU Free Documentaion license 1.2.

