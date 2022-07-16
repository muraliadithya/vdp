---
title: Variant 13
weight: 3
---

# Puzzle populatedbus - Variant 13

## Example Images
{{< columns >}}
`Example 0`![123.jpg](/natscene_data/images/123.jpg)
<--->
`Example 1`![122.jpg](/natscene_data/images/122.jpg)
<--->
`Example 2`![131.jpg](/natscene_data/images/131.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![125.jpg](/natscene_data/images/125.jpg)
<--->
`Candidate 1`![129.jpg](/natscene_data/images/129.jpg)
<--->
`Candidate 2`![128.jpg](/natscene_data/images/128.jpg)
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
Exists q0: bus. Exists q1: person. within(q1,q0)
```
{{< /expand >}}
