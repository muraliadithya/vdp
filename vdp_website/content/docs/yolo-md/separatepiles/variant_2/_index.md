---
title: Variant 2
weight: 3
---

# Puzzle separatepiles - Variant 2

## Example Images
{{< columns >}}
`Example 0`![apple3.jpg](/natscene-data/images/apple3.jpg)
<--->
`Example 1`![apple1.jpg](/natscene-data/images/apple1.jpg)
<--->
`Example 2`![apple4.jpg](/natscene-data/images/apple4.jpg)
<--->
`Example 3`![apple5.jpg](/natscene-data/images/apple5.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![apple6.jpg](/natscene-data/images/apple6.jpg)
<--->
`Candidate 1`![apple2.jpg](/natscene-data/images/apple2.jpg)
<--->
`Candidate 2`![apple9.jpg](/natscene-data/images/apple9.jpg)
<--->
`Candidate 3`![apple7.jpg](/natscene-data/images/apple7.jpg)
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
