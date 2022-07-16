---
title: Variant 17
weight: 3
---

# Puzzle populatedbus - Variant 17

## Example Images
{{< columns >}}
`Example 0`![123.jpg](/natscene_data/images/123.jpg)
<--->
`Example 1`![124.jpg](/natscene_data/images/124.jpg)
<--->
`Example 2`![122.jpg](/natscene_data/images/122.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![127.jpg](/natscene_data/images/127.jpg)
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
