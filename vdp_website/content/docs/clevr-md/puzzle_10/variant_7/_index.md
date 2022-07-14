---
title: Variant 7
weight: 3
---

# Puzzle 10 - Variant 7

## Example Images
{{< columns >}}
`Example 0`![000004.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000004.png)
<--->
`Example 1`![000005.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000005.png)
<--->
`Example 2`![000003.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000003.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000000.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000000.png)
<--->
`Candidate 1`![000001.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000001.png)
<--->
`Candidate 2`![000002.png](/clevr-variants/alternate-color/fovariant-7/render/images/CLEVR_val_000002.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 0` is the intended discriminator with description:
```plaintext 
There is a gray cube to the left of a purple cube
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cube. Exists q1: cube. left(q0,q1) AND gray(q0)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 0` as being the most similar to the example images.
{{< /expand >}}

