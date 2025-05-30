[![CI status](https://ci.codeberg.org/api/badges/13532/status.svg)](https://ci.codeberg.org/repos/13532)
[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m788109163-4ff579b3c43afde55d7be936)](https://stats.uptimerobot.com/9987YCk75y/778967457)
[![Uptime Robot ratio (30 days)](https://img.shields.io/uptimerobot/ratio/m788109163-4ff579b3c43afde55d7be936)](https://stats.uptimerobot.com/9987YCk75y/778967457)

# Homepage for Robert van Bregt

This is the repository for my personal homepage, hosted at https://vanbregt.eu/ that used to live at https://robertvanbregt.nl/

## CI pipeline

Deployment of the site is fully automated. For every push to the main branch, the markdown content is linted. When succesful, the site is automatically built and deployed to Codeberg Pages.

### markdownlint-cli2

There are multiple linters for markdown. I choose markdownlint-cli2, since it is under active development, can be used as pre-commit, has a VSCode plugin and can be installed through brew and run from the commandline.

## Permalinks

Permalinks naar berichten zijn altijd een pad vanaf de root van de server met `/<jaar>/<maand>/<dag>/<slug>/`. Deze staat los van de organisatie van de content in het CMS.

In sommige CMS'en moet de slug uniek zijn binnen de gehele site (WordPress, Grav), maar voor mijn structuur is dat niet nodig. Het is voldoende als de volledige permalink uniek is.

## Organisatie van content

### Secties

Voor het [Grotius thema](https://vanbregt.eu/hugo-grotius) is het nodig alle post types op te slaan in een aparte sectie.
En daarmee in een aparte hoofdmap binnen de map `content`.

### Submappen

Binnen een sectie kan het aantal mappen (1 per gepubliceerde pagina) daardoor flink oplopen.
Een vorm van organisatie is daarom op zijn plaats.
Bijvoorbeeld om op datum berichten te kunnen terugvinden.
Dat kan door de datum vooraan op te nemen in de mapnaam, of door de mappen in een diepere structuur van submappen te bewaren.
Ik heb er voor gekozen dezelfde indeling aan te houden als de permalink structuur.
Vaak zal er dan maar 1 of een enkel bericht per datum zijn.
Met alleen een map per datum blijft dat aantal nog steeds behoorlijk over de jaren heen en een map per jaar geeft wel meer organisatie, maar daarbinnen loopt het dan toch nog flink op. Kortom, toch maar een diep geneste structuur.

### Page Bundles

Uitgangspunt is, om een pagina en de bijbehorende resources (afbeeldingen, video, audio etc.) bij elkaar te houden. Dit kan door ze bij elkaar in een map op te slaan. Hugo noemt dat [Page Bundles](https://gohugo.io/content-management/organization/#page-bundles).

## Design

### Theme

The current theme for my homepage is [Archie](https://github.com/athul/archie) and is installed as a git submodule.

Themes from others that I've used in the past, from latest to oldest:

- [Congo](https://github.com/jpanther/Congo)
- [Bilberry](https://themes.gohugo.io/themes/bilberry-hugo-theme/)
- [Mainroad](https://github.com/Vimux/Mainroad)
- [Papermod](https://github.com/adityatelange/hugo-PaperMod)
- [Coder](https://github.com/luizdepra/hugo-coder)

### Menus

The Archie theme only supports the `main` menu. The commonly used `footer` and `social` are not available. There is a `params.social` map, however that is used to show icons in the footer.

Hugo allows you to specify menus inside the content or in the config. Both will do and can technically be mixed. For clarity it is best to pick one method. I have chosen to move all menu definitiions to the `hugo.toml` configuration file.

## Hugo Version

The oldest version that can be used to build the site:

- v0.128.0 - site config key paginate was deprecated and subsequently removed
