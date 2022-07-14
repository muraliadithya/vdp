---
title: Variant 14
weight: 3
---

# Puzzle 5 - Variant 14

## Example Images
{{< columns >}}
`Example 0`![000003.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000003.png)
<--->
`Example 1`![000004.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000004.png)
<--->
`Example 2`![000005.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000005.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000000.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000000.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000001.png](/clevr-variants/shield/fovariant-14/render/images/CLEVR_val_000001.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 0` is the intended discriminator with description:
```plaintext 
Every sphere has a cylinder to its right.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cylinder. Forall q1: sphere. left(q1,q0)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 2` as being the most similar to the example images.
{{< /expand >}}

