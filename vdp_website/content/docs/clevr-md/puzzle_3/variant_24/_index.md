---
title: Variant 24
weight: 3
---

# Puzzle 3 - Variant 24

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000003.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000004.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000004.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000002.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000002.png)
<--->
`Candidate 1`![000000.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000000.png)
<--->
`Candidate 2`![000001.png](/clevr-variants/meeussen/fovariant-24/render/images/CLEVR_val_000001.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 1` is the intended discriminator with description:
```plaintext 
All cubes are to the left of a purple sphere.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sphere. Forall q1: cube. purple(q0) AND right(q0,q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 2` as being the most similar to the example images.
{{< /expand >}}

