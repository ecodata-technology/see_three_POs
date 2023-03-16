---
title: "Shiny AWS"
sections:
- block: hero
  content:
    title: |-
    
      Spongy Moth models
    
      in the cloud
      
  design:
    spacing:
      padding: ["40px","0","20px","0"]
    background:
      gradient_end: '#1b2724'
      gradient_start: '#264038'
      text_color_light: yes
    css_class: 'big_headline'
- block: markdown
  content:
    text: |-
    
      ### Mapping Spongy moth densities
      
      Growers wish to know where and when pests like Spongy moth (*Lysmantria dispar*) will appear. Ecodata modeled Spongy moth densities in space and time using field surveys and GAMs. Users can explore our forecasts using a Shiny app hosted on an AWS server.
      
      <iframe height="1000px" width="100%" frameborder="no" src="https://ecodatatech.shinyapps.io/ctspongymoth/"> </iframe>
  design:
    background:
      image:
        color: '#1b2724'
        text_color_light: yes
    css_class: 'brief'
    spacing:
      padding: ["20px","0","5px","0"]
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
      color: '#1b2724'
      text_color_light: yes
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
