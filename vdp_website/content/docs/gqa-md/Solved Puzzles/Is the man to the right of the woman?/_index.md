---
title: Is the man to the right of the woman?
weight: 3
---

# Puzzle 667
### Constructed from question: _Is the man to the right of the woman?_


## Example Images
{{< columns >}}
`Example 0`![2270.jpg](/gqa_images/2270.jpg)
<--->
`Example 1`![2319052.jpg](/gqa_images/2319052.jpg)
<--->
`Example 2`![2327029.jpg](/gqa_images/2327029.jpg)
<--->
`Example 3`![2380073.jpg](/gqa_images/2380073.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2320588.jpg](/gqa_images/2320588.jpg)
<--->
`Candidate 1`![2386576.jpg](/gqa_images/2386576.jpg)
<--->
`Candidate 2`![2394006.jpg](/gqa_images/2394006.jpg)
<--->
`Candidate 3`![2413564.jpg](/gqa_images/2413564.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the man to the right of the woman?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: woman. Exists q1: man. to_the_right_of(q1,q0)
```
{{< /expand >}}
