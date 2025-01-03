---
title: Temperature impact on organic insecticide performance
weight: 1
image:
  preview_only: true
summary: |-
  Agrochemical products deal with all the environmental extremes that occur in the field. Our client suspected high air temperatures were preventing an organic insecticide from working. A survey of growers using this plant-derived product confirmed their suspicions, but they needed hard numbers to improve usage recommendations.
  
  We gathered the rest of the data. Though temperature was important, our data scientists uncovered more questions about product performance on farms in different US states.
  
  Click the photo for more.
tags:
- Intro
share: false
profile: false
comments: false
reading_time: false
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />



<style>
p.caption {
  font-size: 0.9em;
  padding: 0px 0px 40px 0px;
}
qt {
  color:#cccccc;
}
</style>

## The problem: product failure

Agrochemical products deal with all the environmental extremes that occurs in the field. High temperatures, cold winds, and record droughts prevent products from working as intended. 

> <qt>*"We suspected extraordinarily high and low temperatures might impact the performance of a new organic-certified product used by citrus growers, causing expensive wastage for our customers."*</qt>

<img src="img2.jpg" style="border-radius: 5%;" />

The client sales team had collected simple survey responses from growers, recording if their product had worked or not. These end-users were reporting more product failure in spring around days with extremely high maximum temperatures. **What was perplexing is it wasn’t happening on all farms.**

<img src="img3.jpg" style="border-radius: 5%;" />

**So what was really occurring in the field?** And if temperature was the culprit, exactly when did product performance degrade?

Our client's survey confirmed their suspicions, but they needed hard numbers to improve their product. Here's a sample of the initial end-user survey provided to us by the client, with GPS coordinates omitted:

<div style="border: 0; overflow-x: auto; padding: 5px;"><table class=" lightable-minimal" style="font-family: Roboto; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:left;"> Product success </th>
   <th style="text-align:right;"> Daily high temp. (F) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Florida </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> California </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 97 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> California </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> California </td>
   <td style="text-align:left;"> No </td>
   <td style="text-align:right;"> 106 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> California </td>
   <td style="text-align:left;"> Yes </td>
   <td style="text-align:right;"> 77 </td>
  </tr>
</tbody>
</table></div>

## Our solution: enriching end-user surveys

> <qt>*"Surprisingly, that was all the data we had to provide to Ecodata so they could start answering our questions."*</qt>

The rest of the information we used was generated in-house by our environmental data scientists. Daily temperatures, rainfall, even cumulative degree days - we built a data pipeline leveraging all of these to enrich the client's existing surveys. 

<img src="flowchart.png" style="border-radius: 5%;" />

## Digging deeper

We then used this information to pinpoint temperature thresholds where product failed, so our client knew when exactly their growers could spray to minimize waste.

But how clear-cut these temperature thresholds were depended on state. **We dug deeper to answer why.**
