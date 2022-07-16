---
title: Variant 12
weight: 3
---

# Puzzle 2on1 - Variant 12

## Example Images
{{< columns >}}
`Example 0`![10.jpg](/natscene_data/images/10.jpg)
<--->
`Example 1`![0.jpg](/natscene_data/images/0.jpg)
<--->
`Example 2`![7.jpg](/natscene_data/images/7.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![3.jpg](/natscene_data/images/3.jpg)
<--->
`Candidate 1`![8.jpg](/natscene_data/images/8.jpg)
<--->
`Candidate 2`![4.jpg](/natscene_data/images/4.jpg)
<--->
`Candidate 3`![5.jpg](/natscene_data/images/5.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There are two cats on the same sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cat. Exists q1: sofa. right(q0,q1)
```
{{< /expand >}}
