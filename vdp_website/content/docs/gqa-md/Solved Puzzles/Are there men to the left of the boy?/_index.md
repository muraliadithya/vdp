---
title: Are there men to the left of the boy?
weight: 3
---

# Puzzle 175
### Constructed from question: _Are there men to the left of the boy?_


## Example Images
{{< columns >}}
`Example 0`![2356700.jpg](/gqa_images/2356700.jpg)
<--->
`Example 1`![2384753.jpg](/gqa_images/2384753.jpg)
<--->
`Example 2`![2401532.jpg](/gqa_images/2401532.jpg)
<--->
`Example 3`![3932.jpg](/gqa_images/3932.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2321407.jpg](/gqa_images/2321407.jpg)
<--->
`Candidate 1`![2389795.jpg](/gqa_images/2389795.jpg)
<--->
`Candidate 2`![2405399.jpg](/gqa_images/2405399.jpg)
<--->
`Candidate 3`![2416060.jpg](/gqa_images/2416060.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Are there men to the left of the boy?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: boy. to_the_right_of(q1,q0)
```
{{< /expand >}}
