---
title: Variant 8
weight: 3
---

# Puzzle allteddysonsofas - Variant 8

## Example Images
{{< columns >}}
`Example 0`![teddy7.jpg](/natscene_data/images/teddy7.jpg)
<--->
`Example 1`![teddy8.jpg](/natscene_data/images/teddy8.jpg)
<--->
`Example 2`![teddy12.jpg](/natscene_data/images/teddy12.jpg)
<--->
`Example 3`![teddy2.jpg](/natscene_data/images/teddy2.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![teddy13.jpg](/natscene_data/images/teddy13.jpg)
<--->
`Candidate 1`![teddy5.jpg](/natscene_data/images/teddy5.jpg)
<--->
`Candidate 2`![teddy3.jpg](/natscene_data/images/teddy3.jpg)
<--->
`Candidate 3`![teddy9.jpg](/natscene_data/images/teddy9.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every teddy bear is sitting on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Forall q1: teddy bear. within(q1,q0)
```
{{< /expand >}}
