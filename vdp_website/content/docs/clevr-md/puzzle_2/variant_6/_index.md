---
title: Variant 6
weight: 3
---

# Puzzle 2 - Variant 6

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000003.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000003.png)
<--->
`Example 2`![000004.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000004.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000001.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000001.png)
<--->
`Candidate 1`![000002.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000002.png)
<--->
`Candidate 2`![000000.png](/clevr-variants/agreement/fovariant-6/render/images/CLEVR_val_000000.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 2` is the intended discriminator with description:
```plaintext 
For every cube there is a cylinder to the left of it and to the right of it.
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cylinder. Exists q1: cylinder. Forall q2: cube. left(q1,q2) AND left(q2,q0)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 1` as being the most similar to the example images.
{{< /expand >}}

