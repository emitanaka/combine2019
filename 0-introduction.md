---
title: "Communicating with Data via R markdown"
subtitle: "   💭  Introduction  💬    "
author: "Emi Tanaka"
email: "dr.emi.tanaka@gmail.com"
date: "4th October 2019 | COMBINE | Sydney, Australia"
length: "25 minutes"
pdflink: "link"
titleslide_bgimg: "images/bg2.jpg"
color_theme: "white"
output:
  xaringan::moon_reader:
    css: [ninjutsu, "assets/animate.css", "assets/cssgrid.css", "assets/custom.css", ]
    self_contained: false # if true, fonts will be stored locally
    seal: false # show a title slide with YAML information
    #yolo: false # show Karl randomly
    chakra: 'libs/remark-latest.min.js'
    beforeInit: "assets/custom.js"
    lib_dir: libs
    includes:
      in_header: "assets/custom.html"
      # before_body: 
      after_body: "assets/remarkjs_extended.html"
      # includes
    mathjax: "assets/mathjax-local/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
    nature:
      # autoplay: 100 # in milliseconds to play next slide
      # coundown: 100 # to display on each slide (TRUE if autoplay on)
      # titleSlideClass: c("center", "middle", "inverse")
      highlightStyle: github # [arta, ascetic, dark, default, far, github, googlecode, idea, ir-black, magula, monokai, rainbow, solarized-dark, solarized-light, sunburst, tomorrow, tomorrow-night-blue, tomorrow-night-bright, tomorrow-night, tomorrow-night-eighties, vs, zenburn.]
      highlightLanguage: r # no-highlight to disable
      highlightLines: true
      highlightSpans: false # true: use `backticks` as delimiters.
      countIncrementalSlides: false
      slideNumberFormat: '%current%/%total%'
      navigation:
        scroll: false # disable scrolling to navigate slides
        touch: true
        click: false
      ratio: '16:9' # ['4:3', '13:9']
---







background-image: url()
background-size: cover
class: hide-slide-number


:::::::::: { .grid grid: 36% 64% / 1fr;} 
::: item center

# <span style="text-shadow: 2px 2px 30px white;">Communicating with Data <br> via R Markdown</span>


## <span style="color:;text-shadow: 2px 2px 30px black;"></span>

:::

::: item center shade_black animated bounceInUp slower

Presented by 

School of Mathematics and Statistics

<img src="assets/USydLogo-white.svg" style="width:200px"><br>
<!--html_preserve--><span>&lt;i class="fas  fa-envelope faa-float animated "&gt;&lt;/i&gt;</span><!--/html_preserve-->  
<!--html_preserve--><span>&lt;i class="fab  fa-twitter faa-float animated faa-fast "&gt;&lt;/i&gt;</span><!--/html_preserve-->  @statsgen



]

:::

:::::::::: 


::: { .shade_black  .white .pos .font_small width:20%;right:10px;bottom:20%;padding:5px;border: solid 5px white;}
<i class="fas fa-exclamation-circle"></i> These slides are viewed best by Chrome and occasionally need to be refreshed if elements did not load properly. See here for <a href= style="color:white!important"/>PDF <i class="fas fa-file-pdf"></i></a>. 
:::


---

* Introduce and talk to your neighbour.
* Sticky notes system to ask for help.
* Dealing with installation issue / logging into RStudio Cloud / wifi system.

---

class: middle, center

# Schedule

| Time          | Activity                                |
|:--------------|:----------------------------------------|
| 01:00 - 01:20 | Session 1: Introduction          |
| 01:20 - 03:00 | *Break* 🍵           |
| 01:30 - 03:00 | Session 2: Reproducible Reports           |
| 3:00pm - 3:30pm | Afternoon Tea ☕🍰              |
| 3:30pm - 5:00pm | Session 3: Pretty Presentations  |


---




background-image: url()
background-size: cover
class: hide-slide-number


:::::::::: grid

::: {.item .shade_black .animated .slideInLeft border-right-style: solid; border-right-color: white;}

<h1>That's it!</h1>

These slides are made using `xaringan` R-package.

The workshop materials are licensed under [<img src="images/cc.svg" style="height:1em"/><img src="images/by.svg" style="height:1em"/><img src="images/sa.svg" style="height:1em"/>](https://creativecommons.org/licenses/by-sa/3.0/au/).

<br><br>



<!--html_preserve--><span>&lt;i class="fas  fa-envelope faa-float animated "&gt;&lt;/i&gt;</span><!--/html_preserve-->  <br>
<!--html_preserve--><span>&lt;i class="fab  fa-twitter faa-float animated faa-fast "&gt;&lt;/i&gt;</span><!--/html_preserve-->  @statsgen

:::

::: {.item .shade_black .animated .slideInRight border-left-style: solid; border-right-color: white;}

# Check that you can:

Do this

:::

:::::::::: 




---

Test
