---
title: Variant 6
weight: 3
---

# Puzzle populatedbus - Variant 6

## Example Images
{{< columns >}}
`Example 0`![122.jpg](/natscene_data/images/122.jpg)
<--->
`Example 1`![123.jpg](/natscene_data/images/123.jpg)
<--->
`Example 2`![131.jpg](/natscene_data/images/131.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![130.jpg](/natscene_data/images/130.jpg)
<--->
`Candidate 1`![128.jpg](/natscene_data/images/128.jpg)
<--->
`Candidate 2`![126.jpg](/natscene_data/images/126.jpg)
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
Exists q0: bus. Exists q1: person. within(q1,q0)
```
{{< /expand >}}
