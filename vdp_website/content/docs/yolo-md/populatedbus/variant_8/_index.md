---
title: Variant 8
weight: 3
---

# Puzzle populatedbus - Variant 8

## Example Images
{{< columns >}}
`Example 0`![133.jpg](/natscene_data/images/133.jpg)
<--->
`Example 1`![123.jpg](/natscene_data/images/123.jpg)
<--->
`Example 2`![122.jpg](/natscene_data/images/122.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![125.jpg](/natscene_data/images/125.jpg)
<--->
`Candidate 1`![129.jpg](/natscene_data/images/129.jpg)
<--->
`Candidate 2`![132.jpg](/natscene_data/images/132.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
A bus with people in it.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: bus. within(q0,q1)
```
{{< /expand >}}
