---
title: Variant 10
weight: 3
---

# Puzzle 2on1 - Variant 10

## Example Images
{{< columns >}}
`Example 0`![0.jpg](/natscene_data/images/0.jpg)
<--->
`Example 1`![2.jpg](/natscene_data/images/2.jpg)
<--->
`Example 2`![10.jpg](/natscene_data/images/10.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![5.jpg](/natscene_data/images/5.jpg)
<--->
`Candidate 1`![4.jpg](/natscene_data/images/4.jpg)
<--->
`Candidate 2`![11.jpg](/natscene_data/images/11.jpg)
<--->
`Candidate 3`![3.jpg](/natscene_data/images/3.jpg)
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
Exists q0: cat. Exists q1: sofa. Exists q2: cat. right(q2,q0)
```
{{< /expand >}}
