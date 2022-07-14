---
title: Is the umbrella to the left of a man?
weight: 3
---

# Puzzle 942
### Constructed from question: _Is the umbrella to the left of a man?_


## Example Images
{{< columns >}}
`Example 0`![1592387.jpg](/gqa_images/1592387.jpg)
<--->
`Example 1`![2324539.jpg](/gqa_images/2324539.jpg)
<--->
`Example 2`![2327727.jpg](/gqa_images/2327727.jpg)
<--->
`Example 3`![2367943.jpg](/gqa_images/2367943.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2326316.jpg](/gqa_images/2326316.jpg)
<--->
`Candidate 1`![2362462.jpg](/gqa_images/2362462.jpg)
<--->
`Candidate 2`![2370252.jpg](/gqa_images/2370252.jpg)
<--->
`Candidate 3`![2402408.jpg](/gqa_images/2402408.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Is the umbrella to the left of a man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: umbrella. Exists q1: man. to_the_right_of(q1,q0)
```
{{< /expand >}}
