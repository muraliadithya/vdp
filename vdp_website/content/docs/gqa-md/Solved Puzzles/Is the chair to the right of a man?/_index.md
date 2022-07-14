---
title: Is the chair to the right of a man?
weight: 3
---

# Puzzle 573
### Constructed from question: _Is the chair to the right of a man?_


## Example Images
{{< columns >}}
`Example 0`![2337975.jpg](/gqa_images/2337975.jpg)
<--->
`Example 1`![2357803.jpg](/gqa_images/2357803.jpg)
<--->
`Example 2`![2394237.jpg](/gqa_images/2394237.jpg)
<--->
`Example 3`![2409571.jpg](/gqa_images/2409571.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2354718.jpg](/gqa_images/2354718.jpg)
<--->
`Candidate 1`![2358507.jpg](/gqa_images/2358507.jpg)
<--->
`Candidate 2`![2384361.jpg](/gqa_images/2384361.jpg)
<--->
`Candidate 3`![884.jpg](/gqa_images/884.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the chair to the right of a man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: chair. Exists q1: man. to_the_left_of(q1,q0)
```
{{< /expand >}}
