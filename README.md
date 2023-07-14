# Antarctica Theme
![4U6cuV.png](https://z3.ax1x.com/2021/09/22/4U6cuV.png)

The goal of Antarctica is evolving to an elegant and feature-rich theme across platforms.

[Live demo](https://sdtelectronics.github.io/jekyll-theme-antarctica/)

## Highlights
* Fully responsive layout achieves best visual on different screens
* Flexible widgets provide extensible functionality
* Integrated [NerdFonts](www.nerdfonts.com) with 3000+ icons
* Automatic sitemap generation with [Jekyll Sitemap](https://github.com/jekyll/jekyll-sitemap)
* Configuration-free search engine optimization with [Jekyll Seo Tag](https://github.com/jekyll/jekyll-seo-tag)
* Reduced JavaScript usage to accelerate loading. No external js file for main frame (Some widgets require external JavaScript).

## Installation
There are three ways to install:
* If you are hosting the site by yourself, you may prefer to [install as a gem-based theme](https://jekyllrb.com/docs/themes/#installing-a-theme)
* If you are hosting the site on Github pages, you can [install as a remote theme](https://github.blog/2017-11-29-use-any-theme-with-github-pages/)
* You can also fork the release branch of this repository

## Customization
Customizable options are under [_config.yml](_config.yml). Coments inside will help you to edit them.

## Widget System
Widgets in Antarctica are cards docked at the right side of the page with customizable contents. To enable/disable a widget, edit the `widgets` field in the `template` section of the config.

Widgets included in the current version:
* colophon
* comment
* post metadata
* share this page
* related sites
* table of content

### Build A Widget
Widgets are essentially self-contained HTML files including all the styles and scripts needed. To add a widget, create a HTML file under [./_includes/widgets/](./_includes/widgets/). You can take other files in this directory as a reference.

### Register A Widget
A page only loads widgets registered in it. This allows different sets of widgets to be load according to the page. To register a widget to a page, add the filename of the widget excluding the extension to the `widgets` field in the file under [./_layouts/](./_layouts/). To make the widget enabled, the name should also be added to the `widgets` field in the `template` section of the config.

## Roadmap
| Feature                       | Planned Version  | Status |
| :---------------------------- | :--------------: | :----: |
| Scrollable widget bar         | 0.2              | √      |
| Comment widget improvement    | 0.2              | √      |
| Related sites widget          | 0.2              | √      |
| Table of contents widget      | 0.2              | √      |
| Pinned post                   | 0.2              | √      |
| Abstract/excerpt in preview   | 0.2              | √      |
| Optimize view on large screen | 0.3              | √      |
| Arcylic color scheme          | 0.3              |        |

## License
This project is available under [GPLv3](LICENSE) License.

If you find this project useful, please star this repository. Thanks.
