---
title: Variant 18
weight: 3
---

# Puzzle alldogsonsofas - Variant 18

## Example Images
{{< columns >}}
`Example 0`![28.jpg](/natscene_data/images/28.jpg)
<--->
`Example 1`![27.jpg](/natscene_data/images/27.jpg)
<--->
`Example 2`![37.jpg](/natscene_data/images/37.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![32.jpg](/natscene_data/images/32.jpg)
<--->
`Candidate 1`![34.jpg](/natscene_data/images/34.jpg)
<--->
`Candidate 2`![31.jpg](/natscene_data/images/31.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every dog is sitting on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Exists q1: dog. within(q1,q0)
```
{{< /expand >}}
