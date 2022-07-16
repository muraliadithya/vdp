---
title: Variant 17
weight: 3
---

# Puzzle allcatsonsofas - Variant 17

## Example Images
{{< columns >}}
`Example 0`![14.jpg](/natscene_data/images/14.jpg)
<--->
`Example 1`![16.jpg](/natscene_data/images/16.jpg)
<--->
`Example 2`![15.jpg](/natscene_data/images/15.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![18.jpg](/natscene_data/images/18.jpg)
<--->
`Candidate 1`![17.jpg](/natscene_data/images/17.jpg)
<--->
`Candidate 2`![20.jpg](/natscene_data/images/20.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every cat is on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Forall q1: teddy bear. within(q1,q0)
```
{{< /expand >}}
