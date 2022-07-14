---
title: Is the lady to the left of a person?
weight: 3
---

# Puzzle 634
### Constructed from question: _Is the lady to the left of a person?_


## Example Images
{{< columns >}}
`Example 0`![1592769.jpg](/gqa_images/1592769.jpg)
<--->
`Example 1`![2315764.jpg](/gqa_images/2315764.jpg)
<--->
`Example 2`![2346896.jpg](/gqa_images/2346896.jpg)
<--->
`Example 3`![2392949.jpg](/gqa_images/2392949.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2328797.jpg](/gqa_images/2328797.jpg)
<--->
`Candidate 1`![2375573.jpg](/gqa_images/2375573.jpg)
<--->
`Candidate 2`![2398624.jpg](/gqa_images/2398624.jpg)
<--->
`Candidate 3`![713587.jpg](/gqa_images/713587.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the lady to the left of a person?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: lady. Exists q1: person. to_the_left_of(q0,q1)
```
{{< /expand >}}
