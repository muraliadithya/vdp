---
title: Variant 15
weight: 3
---

# Puzzle 13 - Variant 15

## Example Images
{{< columns >}}
`Example 0`![000003.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000003.png)
<--->
`Example 1`![000004.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000004.png)
<--->
`Example 2`![000005.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000005.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000000.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000000.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000001.png](/clevr-variants/breaking/fovariant-15/render/images/CLEVR_val_000001.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 0` is the intended discriminator with description:
```plaintext 
There is no color such that there is only one cube of that color.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Forall q0: cube. Exists q1: cube. same_color(q1,q0)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 1` as being the most similar to the example images.
{{< /expand >}}

