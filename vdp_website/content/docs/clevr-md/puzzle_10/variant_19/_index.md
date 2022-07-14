---
title: Variant 19
weight: 3
---

# Puzzle 10 - Variant 19

## Example Images
{{< columns >}}
`Example 0`![000004.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000004.png)
<--->
`Example 1`![000005.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000005.png)
<--->
`Example 2`![000003.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000003.png)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![000002.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000002.png)
<--->
`Candidate 1`![000001.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000001.png)
<--->
`Candidate 2`![000000.png](/clevr-variants/alternate-color/fovariant-19/render/images/CLEVR_val_000000.png)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the intended discriminator" "..." >}}
`Candidate 2` is the intended discriminator with description:
```plaintext 
There is a cyan cube to the left of a blue cube
```
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: cube. Exists q1: cube. right(q0,q1) AND cyan(q1)
```
{{< /expand >}}



## Baseline Output

{{< expand "Click to view the baseline's prediction" "..." >}}
The neural baseline selected `Candidate 2` as being the most similar to the example images.
{{< /expand >}}

