#!/bin/sh

LANGCODE=ja

# requires "xml2pot", "po2xml" included in kdesdk3-translate package and
# "msgmerge", "msginit" included in gettext-tools package.
for i in `dirname $0`/srcxml/*.xml;
do
  POT=`dirname $0`/pot/`basename $i`.pot
  PO=`dirname $0`/po/`basename $i`.$LANGCODE.po
  XML=`dirname $0`/xml/`basename $i`

  echo -n Updating POT: `basename $i`..
  xml2pot $i > $POT
  echo done.

  echo -n Updating PO: `basename $i`..
  if [ -f $PO ]; then
    msgmerge $PO $POT > $PO.new
    mv -f $PO $PO.old
    mv -f $PO.new $PO
    rm -f $PO.old
  else
    msginit -i $POT --no-translator -o $PO
  fi
  echo done.

  echo -n Updating XML: `basename $i`..
  po2xml $i $PO > $XML
  echo done.
done

