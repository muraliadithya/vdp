---
title: Is the woman to the right of a boy?
weight: 3
---

# Puzzle 973
### Constructed from question: _Is the woman to the right of a boy?_


## Example Images
{{< columns >}}
`Example 0`![2321662.jpg](/gqa_images/2321662.jpg)
<--->
`Example 1`![2353948.jpg](/gqa_images/2353948.jpg)
<--->
`Example 2`![2355463.jpg](/gqa_images/2355463.jpg)
<--->
`Example 3`![2415425.jpg](/gqa_images/2415425.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2328637.jpg](/gqa_images/2328637.jpg)
<--->
`Candidate 1`![2376122.jpg](/gqa_images/2376122.jpg)
<--->
`Candidate 2`![2389981.jpg](/gqa_images/2389981.jpg)
<--->
`Candidate 3`![2398158.jpg](/gqa_images/2398158.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Is the woman to the right of a boy?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: woman. Exists q1: boy. to_the_right_of(q0,q1)
```
{{< /expand >}}
