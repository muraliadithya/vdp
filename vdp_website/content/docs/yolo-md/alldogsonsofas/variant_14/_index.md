---
title: Variant 14
weight: 3
---

# Puzzle alldogsonsofas - Variant 14

## Example Images
{{< columns >}}
`Example 0`![28.jpg](/natscene_data/images/28.jpg)
<--->
`Example 1`![35.jpg](/natscene_data/images/35.jpg)
<--->
`Example 2`![27.jpg](/natscene_data/images/27.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![31.jpg](/natscene_data/images/31.jpg)
<--->
`Candidate 1`![33.jpg](/natscene_data/images/33.jpg)
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
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: dog. Forall q1: sofa. within(q0,q1)
```
{{< /expand >}}
