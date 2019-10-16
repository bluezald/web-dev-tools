#!/bin/bash

# This is a tool script to help in localising in Angular
# this has 2 functions first is you extract the text in the default
# messages.xlf file, and when you get all the text this will extract
# to alltext.txt file (TODO: make this a variable also)
# After you get all the text, you can translate all the text to a certain
# language.
# The 2nd function will then create another messages.locale.xlf file from
# The translated text

# Extracts all the text to localise inside messages.xlf
# Then you can use all the words or phrases to translate

awk '/<source>/,/<\/source>/p' ./messages.xlf > ./alltext.txt
sed -i -e 's/\(<source>\|<\/source>\)//g' ./alltext.txt

# TODO: Create function to get all the translated text and save to a new
# messages.locale.xlf where locale is a different locale like 'fr', 'sv', etc.