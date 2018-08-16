#!/usr/bin/env python
import i3
import re
import sys
from time import sleep
import json

#resize <grow|shrink> <direction> [<px> px [or <ppt> ppt]]

barHeight = 18
tree = str(i3.get_tree());

def positionWindow():
    i3.scratchpad("show", instance="metask")
    workspace = [ws for ws in i3.get_workspaces() if ws['focused']][0]
    screen_w =str(workspace['rect']['width'])
    screen_h =str(workspace['rect']['height'])

    targetheight = str(workspace['rect']['height']/3)

    current = i3.filter(nodes=[], focused=True)

    i3.command("move","absolute","position","0",str(barHeight))
    i3.command("resize","shrink","width",screen_w);
    i3.command("resize","shrink","height",screen_h);
    i3.command("resize","grow","width",screen_w);
    i3.command("resize","grow","height",targetheight);


#look for an entity that has the unique name of a scratchpad
m = re.search("metask", tree)
#if not found, spawn a new one
if(m == None):
    i3.exec('urxvt -name metask')
    sleep(0.11)
    positionWindow();
else:
    positionWindow();
