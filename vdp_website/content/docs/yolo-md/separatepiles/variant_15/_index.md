---
title: Variant 15
weight: 3
---

# Puzzle separatepiles - Variant 15

## Example Images
{{< columns >}}
`Example 0`![apple4.jpg](/natscene_data/images/apple4.jpg)
<--->
`Example 1`![apple2.jpg](/natscene_data/images/apple2.jpg)
<--->
`Example 2`![apple5.jpg](/natscene_data/images/apple5.jpg)
<--->
`Example 3`![apple3.jpg](/natscene_data/images/apple3.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![apple8.jpg](/natscene_data/images/apple8.jpg)
<--->
`Candidate 1`![apple6.jpg](/natscene_data/images/apple6.jpg)
<--->
`Candidate 2`![apple7.jpg](/natscene_data/images/apple7.jpg)
<--->
`Candidate 3`![apple1.jpg](/natscene_data/images/apple1.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Oranges and apples are kept in clearly separate piles.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: apple. Exists q1: orange. right(q1,q0)
```
{{< /expand >}}
