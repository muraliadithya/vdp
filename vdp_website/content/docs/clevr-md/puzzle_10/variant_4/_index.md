---
title: Variant 4
weight: 3
---

# Puzzle 10 - Variant 4

## Example Images
{{< columns >}}
`Example 0`![000005.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000005.png)
<--->
`Example 1`![000004.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000004.png)
<--->
`Example 2`![000003.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000003.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000001.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000001.png)
<--->
`Candidate 1`![000000.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000000.png)
<--->
`Candidate 2`![000002.png](/clevr-variants/alternate-color/fovariant-4/render/images/CLEVR_val_000002.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 1` is the intended discriminator with description:
```plaintext 
There is a purple cylinder to the left of a brown cylinder
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cylinder. Exists q1: cylinder. left(q0,q1) AND brown(q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 1` as being the most similar to the example images.
{{< /expand >}}

