---
title: Variant 3
weight: 3
---

# Puzzle 9 - Variant 3

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000003.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000004.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000004.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000001.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000001.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000000.png](/clevr-variants/assimilation/fovariant-3/render/images/CLEVR_val_000000.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 2` is the intended discriminator with description:
```plaintext 
All cubes and spheres have the same color
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Forall q0: sphere. Forall q1: cube. same_color(q0,q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 1` as being the most similar to the example images.
{{< /expand >}}

