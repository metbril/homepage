---
title: Meer ruimte voor applicaties op iPod Touch
date: '2008-03-14T14:14:19+00:00'
tags: [apple,iphone,ipod,jailbreak]
# cspell:ignore Frang
---
Nu het mogelijk is om [nieuwe applicaties](/2008/03/14/jailbreak-van-mijn-ipod-touch/) te installeren op mijn iPod Touch, is het ook wel handig dat daar ruimte voor is. Applicaties worden normaal gesproken op de systeempartitie geplaatst, en daar heeft Apple niet heel veel ruimte overgelaten. Om toch wat ruimte te creëren, kun je bestanden die veel ruimte kosten verplaatsen naar je vrije partitie (waar ook je muziek op staat). Na enig Googlen ben ik er uit:

1. [Jailbreak je iPod Touch](/2008/03/14/jailbreak-van-mijn-ipod-touch/)
2. Installeer het BSD Subsystem (via Installer.app)
3. Installeer OpenSSH (ook via Installer.app)
4. Start een Terminal venster en start een ssh-sessie met je iPod, door middel van het commando ‘ssh root@192.168.1.111’ (waarbij je natuurlijk het werkelijke IP-adres van je iPod moet gebruiken). Het wachtwoord is ‘alpine’.
5. Volg verder de instructies van Frang: “[Free up space on your iPhone](http://www.noervig.dk/?p=22)” om je Fonts te verplaatsen.
