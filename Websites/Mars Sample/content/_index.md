---
title: "Sample report index"
sections:
- block: hero
  content:
    title: |-
    
      Sustainable Agroforestry
  design:
    spacing:
      padding: ["40px","0","20px","0"]
    background:
      gradient_end: '#ffffff'
      gradient_start: '#ffffff'
    css_class: 'big_headline'
- block: markdown
  content:
    text: |-

      ### {{< icon name="user-tie" pack="fas" >}} **Organization:** Sustainable agriculture
        
      ### {{< icon name="briefcase" pack="fas" >}} **Location:** Sulawesi, Indonesia
        
      ### {{< icon name="terminal" pack="fas" >}} **Themes:** Mixed cropping, income diversification, computer simulations
  design:
    background:
      image:
        color: '#00D8B8'
        text_color_light: no
    css_class: 'brief'
    spacing:
      padding: ["0px","0","15px","0"]
- block: portfolio
  content:
    filters:
      folders: project
      tags:
      - Intro
      - Problem
      - Solution
    title: ''
    sort_by: Weight
    sort_ascending: yes
  design:
    spacing:
      padding: ["40px","0","40px","0"]
    columns: '1'
    flip_alt_rows: yes
    view: community/showcase_rounded
    background:
      color: '#ffffff'
      text_color_light: no
- block: markdown
  design:
    background:
      image:
        filename: bg.jpeg
        size: cover
        position: center
        parallax: yes
        text_color_light: yes
date: "2022-10-24"
type: landing
---
