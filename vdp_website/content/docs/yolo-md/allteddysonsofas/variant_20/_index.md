---
title: Variant 20
weight: 3
---

# Puzzle allteddysonsofas - Variant 20

## Example Images
{{< columns >}}
`Example 0`![teddy4.jpg](/natscene_data/images/teddy4.jpg)
<--->
`Example 1`![teddy3.jpg](/natscene_data/images/teddy3.jpg)
<--->
`Example 2`![teddy11.jpg](/natscene_data/images/teddy11.jpg)
<--->
`Example 3`![teddy10.jpg](/natscene_data/images/teddy10.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![teddy9.jpg](/natscene_data/images/teddy9.jpg)
<--->
`Candidate 1`![teddy13.jpg](/natscene_data/images/teddy13.jpg)
<--->
`Candidate 2`![teddy6.jpg](/natscene_data/images/teddy6.jpg)
<--->
`Candidate 3`![teddy1.jpg](/natscene_data/images/teddy1.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every teddy bear is sitting on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Forall q1: teddy bear. within(q1,q0)
```
{{< /expand >}}
