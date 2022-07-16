---
title: Variant 5
weight: 3
---

# Puzzle populatedbus - Variant 5

## Example Images
{{< columns >}}
`Example 0`![122.jpg](/natscene_data/images/122.jpg)
<--->
`Example 1`![131.jpg](/natscene_data/images/131.jpg)
<--->
`Example 2`![123.jpg](/natscene_data/images/123.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![126.jpg](/natscene_data/images/126.jpg)
<--->
`Candidate 1`![132.jpg](/natscene_data/images/132.jpg)
<--->
`Candidate 2`![130.jpg](/natscene_data/images/130.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
A bus with people in it.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: bus. within(q0,q1)
```
{{< /expand >}}
