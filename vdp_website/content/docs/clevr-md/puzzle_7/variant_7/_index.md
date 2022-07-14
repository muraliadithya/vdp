---
title: Variant 7
weight: 3
---

# Puzzle 7 - Variant 7

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000003.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000004.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000004.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000001.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000001.png)
<--->
`Candidate 1`![000000.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000000.png)
<--->
`Candidate 2`![000002.png](/clevr-variants/partition/fovariant-7/render/images/CLEVR_val_000002.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 1` is the intended discriminator with description:
```plaintext 
All spheres are to the left of all cubes
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Forall q0: cube. Forall q1: sphere. right(q0,q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 0` as being the most similar to the example images.
{{< /expand >}}

