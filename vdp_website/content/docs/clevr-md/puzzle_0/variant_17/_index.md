---
title: Variant 17
weight: 3
---

# Puzzle 0 - Variant 17

## Example Images
{{< columns >}}
`Example 0`![000004.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000004.png)
<--->
`Example 1`![000003.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000005.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000005.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000000.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000000.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000001.png](/clevr-variants/apocope/fovariant-17/render/images/CLEVR_val_000001.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 0` is the intended discriminator with description:
```plaintext 
Every cylinder has a cube to its right.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cylinder. Exists q1: cube. same_material(q1,q0) AND left(q0,q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 1` as being the most similar to the example images.
{{< /expand >}}

