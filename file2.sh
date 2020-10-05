#!/bin/sh
touch testnew.txt
filename=test346.tx
vi $filename <<EndOfCommands
i
dfhsgfdhgfdhsfdsfdfd
dfgdshfgsdfhdgsfhgfh
^[
ZZ
EndOfCommands
