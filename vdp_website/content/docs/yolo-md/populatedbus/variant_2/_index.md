---
title: Variant 2
weight: 3
---

# Puzzle populatedbus - Variant 2

## Example Images
{{< columns >}}
`Example 0`![124.jpg](/natscene_data/images/124.jpg)
<--->
`Example 1`![122.jpg](/natscene_data/images/122.jpg)
<--->
`Example 2`![123.jpg](/natscene_data/images/123.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![128.jpg](/natscene_data/images/128.jpg)
<--->
`Candidate 1`![126.jpg](/natscene_data/images/126.jpg)
<--->
`Candidate 2`![125.jpg](/natscene_data/images/125.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
A bus with people in it.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: bus. Exists q1: person. within(q1,q0)
```
{{< /expand >}}
