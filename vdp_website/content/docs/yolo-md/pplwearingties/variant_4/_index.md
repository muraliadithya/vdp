---
title: Variant 4
weight: 3
---

# Puzzle pplwearingties - Variant 4

## Example Images
{{< columns >}}
`Example 0`![146.jpg](/natscene_data/images/146.jpg)
<--->
`Example 1`![148.jpg](/natscene_data/images/148.jpg)
<--->
`Example 2`![147.jpg](/natscene_data/images/147.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![155.jpg](/natscene_data/images/155.jpg)
<--->
`Candidate 1`![217.jpg](/natscene_data/images/217.jpg)
<--->
`Candidate 2`![152.jpg](/natscene_data/images/152.jpg)
<--->
`Candidate 3`![157.jpg](/natscene_data/images/157.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There is a person wearing a tie.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: tie. Exists q1: person. within(q0,q1)
```
{{< /expand >}}
