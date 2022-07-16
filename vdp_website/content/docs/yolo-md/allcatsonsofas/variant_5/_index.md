---
title: Variant 5
weight: 3
---

# Puzzle allcatsonsofas - Variant 5

## Example Images
{{< columns >}}
`Example 0`![14.jpg](/natscene_data/images/14.jpg)
<--->
`Example 1`![15.jpg](/natscene_data/images/15.jpg)
<--->
`Example 2`![24.jpg](/natscene_data/images/24.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![25.jpg](/natscene_data/images/25.jpg)
<--->
`Candidate 1`![18.jpg](/natscene_data/images/18.jpg)
<--->
`Candidate 2`![23.jpg](/natscene_data/images/23.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Every cat is on a sofa.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sofa. Forall q1: cat. within(q1,q0)
```
{{< /expand >}}
