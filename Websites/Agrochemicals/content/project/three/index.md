---
title: "Data engineering to uncover root cause"
weight: 3
summary: |- 

  Dense cloud cover blocks UV rays and impedes crop photosynthesis – both impact product performance. Measuring cloudiness from raw imagery across many dates and sites required data mining and automation outside our client’s expertise.
  
  We extracted cloud cover around each farm during product application. The combination of cover and temperature was detrimental in a humid east-coast state like Florida but not in dry California.
  
  Click the photo for more.
image:
  preview_only: true
tags:
- Solution
share: false
profile: false
comments: false
reading_time: false
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />



<style>
p.caption {
  font-size: 0.8em;
  padding: 0px 0px 40px 0px;
}
qt {
  color:#cccccc;
}
</style>

## Why cloud cover mattered

A key difference between growing in the moist East Coast and West Coast is cloud cover. Florida has twice as many cloudy days as California on average.

Dense cloud cover blocks UV rays, but also starves fast-growing crop plants of light for photosynthesis. **Both factors can affect agrochemical products.**

Leveraging location information and end-user surveys provided by the client, we took care of the rest with our data mining expertise.

## What makes cloud cover tricky to measure?

Cloudiness is easy to define but hard to measure with remote sensing. LandSat 8 is a satellite photography program that hosts images taken of the Earths surface. We can’t just download the photos – these are millions of high-resolution images.

<img src="landsat.jpg" style="border-radius: 5%;" />

To explore how cloud cover impacted product outcomes in Florida, **we needed to estimate cloud cover on farms for the entire week prior to product application.**

## How we extracted cloud cover data

First we had to limit measurements to each farm. Using GIS tools, we mapped the locations of farms and drew 5km circles around the properties. We then downloaded imagery for the week leading up to product application.

With automation we scaled this process efficiently to gather data for every grower’s farm. Here's a sample of how we did it:


```r
# function to fetch cloud cover data
get_cc <- function(buffer) {
  
  recs <- get_records(
                 time_range = as.character(c(buffer$app_date - 7, buffer$app_date)), 
                 products = get_cloudcov_supported()[5:6], # Sentinel
                 aoi = buffer$geometry, 
                 as_sf = FALSE)
  clouds <- calc_cloudcov(recs, aoi = buffer$geometry, 
                          write_records = FALSE, write_cloud_masks = FALSE, 
                          dir_out = "data/cloud-cover/")
  
  clouds %>%
    write_csv(file = paste0("data/cover-dfs-new/", buffer$id, "_cloud_cover.csv"))
}
```

We then calculated which proportion of the photograph was covered with thick clouds (% cover) using R. We took the average values for the week prior and viola – **user surveys were enriched with weekly % cloud cover, specific to each farm that used our client’s organic insecticide.**

<div style="border: 0; overflow-x: auto; padding: 5px;"><table class=" lightable-minimal" style="font-family: Roboto; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:left;"> Product success </th>
   <th style="text-align:right;"> Daily high temp. (F) </th>
   <th style="text-align:right;"> Cloud cover (%) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:right;"> 0.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 95 </td>
   <td style="text-align:right;"> 0.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> No </td>
   <td style="text-align:right;"> 66 </td>
   <td style="text-align:right;"> 0.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 71 </td>
   <td style="text-align:right;"> 0.42 </td>
  </tr>
</tbody>
</table></div>

## Overall result from the cloud-cover analysis

In Florida, product failure was slightly less likely on farms that experienced a week of high cloud cover (Figure 1). Like temperature, this isn't too helpful on its own.

<div class="figure">
<img src="{{< blogdown/postref >}}index_files/figure-html/cloud-1.png" alt="Like temperature, cloud cover alone wasn't great at predicting product failure." width="672" />
<p class="caption">Figure 1: Like temperature, cloud cover alone wasn't great at predicting product failure.</p>
</div>

However, **when accounting for temperature and cloud cover at the same time, we found that hot, clear days were much more likely to cause product failure than hot but cloudy days**. This gave us results resembling what we found in California.

<div class="figure">
<img src="{{< blogdown/postref >}}index_files/figure-html/interaction-1.png" alt="The solid line shows the effect of temperature on the product on clear sunny days, the dotted line on overcast days. The impact of temperature is strong on clear days, but not cloudy days." width="672" />
<p class="caption">Figure 2: The solid line shows the effect of temperature on the product on clear sunny days, the dotted line on overcast days. The impact of temperature is strong on clear days, but not cloudy days.</p>
</div>

## How we improved the end-user experience

> <qt>*"Ecodata made the results easy to explain to our customers on the East Coast: avoid use on days with hot and clear mornings, but on overcast days it's generally safe to spray even when it's hot.*"</qt>

<img src="orchard.jpeg" style="border-radius: 5%;" />

Cloud cover turned out to be key. While temperature explained product failure in drier California, **we uncovered a more nuanced interplay of temperature and cloud cover in wetter Florida.**

With these insights our client could advise growers with different agricultural systems how to get the most out of their plant-derived product.
