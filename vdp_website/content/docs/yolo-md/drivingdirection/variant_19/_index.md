---
title: Variant 19
weight: 3
---

# Puzzle drivingdirection - Variant 19

## Example Images
{{< columns >}}
`Example 0`![cargoing1.jpg](/natscene_data/images/cargoing1.jpg)
<--->
`Example 1`![cargoing3.jpg](/natscene_data/images/cargoing3.jpg)
<--->
`Example 2`![cargoing4.jpg](/natscene_data/images/cargoing4.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![carcoming4.jpg](/natscene_data/images/carcoming4.jpg)
<--->
`Candidate 1`![cargoing2.jpg](/natscene_data/images/cargoing2.jpg)
<--->
`Candidate 2`![carcoming1.jpg](/natscene_data/images/carcoming1.jpg)
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
Exists q0: car. Exists q1: person. right(q1,q0)
```
{{< /expand >}}
