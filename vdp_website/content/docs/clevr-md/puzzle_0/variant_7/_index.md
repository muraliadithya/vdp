---
title: Variant 7
weight: 3
---

# Puzzle 0 - Variant 7

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000003.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000004.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000004.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000000.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000000.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000001.png](/clevr-variants/apocope/fovariant-7/render/images/CLEVR_val_000001.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 0` is the intended discriminator with description:
```plaintext 
Every cylinder has a sphere to its right.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cylinder. Exists q1: sphere. same_material(q0,q1) AND left(q0,q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 2` as being the most similar to the example images.
{{< /expand >}}

