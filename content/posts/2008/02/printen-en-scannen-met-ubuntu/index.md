---
title: Printen en scannen met Ubuntu
post_id: 57
date: '2008-02-02T07:10:49+00:00'
taxonomy:
    migration-status: review
tags: [hp,linux,printer,scanner,ubuntu,hp,linux,printer,scanner,ubuntu]
# cspell:ignore hplib libsnmp
---
![HP PSC 2355](/images/2008/02/hp-psc2355.jpg)

![Ubuntu Logo](/images/2008/02/ubuntu.thumbnail.png)Mijn HP PSC 2355 werkte uitstekend onder Windows. Maar [nu ik Ubuntu gebruik]({{< ref "ubuntu-opnieuw" >}}) op de aangesloten computer, had ik een klusje te doen.

[HP verwijst](http://h10025.www1.hp.com/ewfrf/wc/softwareCategory?lc=nl&cc=nl&dlc=nl&product=422000) voor Linux-drivers naar de open source drivers [HPLIB](http://hplip.sourceforge.net/). Daar is een automatisch installatiescript voor handen voor de recente Ubuntu distributies. Deze wilde in eerste instantie niet helemaal uit zichzelf starten (de apt-get werkte niet), maar na een korte zoektocht [kwam ik er achter](https://answers.launchpad.net/hplip/+question/21824) dat de installatie netjes doorgaat als je eerst met de hand een package installeert:

`sudo apt-get install libsnmp-dev`

Vervolgens start je de installer opnieuw:

`sh hplib-2.7.12.run`

Het printen en scannen werkt nu weer als een trein.

Ik heb het delen van de printer in het netwerk overigens aangezet, dus binnenkort ga ik ook nog even testen of het mogelijk is te printen met de Mac.
