---
title: Variant 2
weight: 3
---

# Puzzle 2on1 - Variant 2

## Example Images
{{< columns >}}
`Example 0`![9.jpg](/natscene_data/images/9.jpg)
<--->
`Example 1`![2.jpg](/natscene_data/images/2.jpg)
<--->
`Example 2`![0.jpg](/natscene_data/images/0.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![3.jpg](/natscene_data/images/3.jpg)
<--->
`Candidate 1`![11.jpg](/natscene_data/images/11.jpg)
<--->
`Candidate 2`![5.jpg](/natscene_data/images/5.jpg)
<--->
`Candidate 3`![4.jpg](/natscene_data/images/4.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There are two cats on the same sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Exists q1: cat. Exists q2: cat. left(q2,q1)
```
{{< /expand >}}
