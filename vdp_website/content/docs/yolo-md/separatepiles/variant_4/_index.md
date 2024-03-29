---
title: Variant 4
weight: 3
---

# Puzzle separatepiles - Variant 4

## Example Images
{{< columns >}}
`Example 0`![apple1.jpg](/natscene_data/images/apple1.jpg)
<--->
`Example 1`![apple2.jpg](/natscene_data/images/apple2.jpg)
<--->
`Example 2`![apple5.jpg](/natscene_data/images/apple5.jpg)
<--->
`Example 3`![apple4.jpg](/natscene_data/images/apple4.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![apple6.jpg](/natscene_data/images/apple6.jpg)
<--->
`Candidate 1`![apple3.jpg](/natscene_data/images/apple3.jpg)
<--->
`Candidate 2`![apple9.jpg](/natscene_data/images/apple9.jpg)
<--->
`Candidate 3`![apple7.jpg](/natscene_data/images/apple7.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Oranges and apples are kept in clearly separate piles.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Forall q0: apple. Forall q1: orange. right(q1,q0)
```
{{< /expand >}}
