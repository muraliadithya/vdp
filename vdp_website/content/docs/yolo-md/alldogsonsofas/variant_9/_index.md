---
title: Variant 9
weight: 3
---

# Puzzle alldogsonsofas - Variant 9

## Example Images
{{< columns >}}
`Example 0`![27.jpg](/natscene_data/images/27.jpg)
<--->
`Example 1`![37.jpg](/natscene_data/images/37.jpg)
<--->
`Example 2`![28.jpg](/natscene_data/images/28.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![34.jpg](/natscene_data/images/34.jpg)
<--->
`Candidate 1`![36.jpg](/natscene_data/images/36.jpg)
<--->
`Candidate 2`![30.jpg](/natscene_data/images/30.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every dog is sitting on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Forall q0: dog. Exists q1: sofa. within(q0,q1)
```
{{< /expand >}}
