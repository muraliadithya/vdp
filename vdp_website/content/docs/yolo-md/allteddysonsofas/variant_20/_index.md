---
title: Variant 20
weight: 3
---

# Puzzle allteddysonsofas - Variant 20

## Example Images
{{< columns >}}
`Example 0`![teddy11.jpg](/natscene-data/images/teddy11.jpg)
<--->
`Example 1`![teddy10.jpg](/natscene-data/images/teddy10.jpg)
<--->
`Example 2`![teddy4.jpg](/natscene-data/images/teddy4.jpg)
<--->
`Example 3`![teddy3.jpg](/natscene-data/images/teddy3.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![teddy1.jpg](/natscene-data/images/teddy1.jpg)
<--->
`Candidate 1`![teddy9.jpg](/natscene-data/images/teddy9.jpg)
<--->
`Candidate 2`![teddy13.jpg](/natscene-data/images/teddy13.jpg)
<--->
`Candidate 3`![teddy6.jpg](/natscene-data/images/teddy6.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every teddy bear is sitting on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Forall q1: teddy bear. within(q1,q0)
```
{{< /expand >}}
