---
title: Variant 14
weight: 3
---

# Puzzle drivingdirection - Variant 14

## Example Images
{{< columns >}}
`Example 0`![cargoing3.jpg](/natscene_data/images/cargoing3.jpg)
<--->
`Example 1`![cargoing4.jpg](/natscene_data/images/cargoing4.jpg)
<--->
`Example 2`![cargoing2.jpg](/natscene_data/images/cargoing2.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![carcoming4.jpg](/natscene_data/images/carcoming4.jpg)
<--->
`Candidate 1`![cargoing1.jpg](/natscene_data/images/cargoing1.jpg)
<--->
`Candidate 2`![carcoming3.jpg](/natscene_data/images/carcoming3.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
Cars are travelling in the onward direction.
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: car. right(q0,q1)
```
{{< /expand >}}
