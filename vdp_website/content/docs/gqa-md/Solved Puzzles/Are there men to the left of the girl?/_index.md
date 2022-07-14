---
title: Are there men to the left of the girl?
weight: 3
---

# Puzzle 176
### Constructed from question: _Are there men to the left of the girl?_


## Example Images
{{< columns >}}
`Example 0`![2412643.jpg](/gqa_images/2412643.jpg)
<--->
`Example 1`![2414550.jpg](/gqa_images/2414550.jpg)
<--->
`Example 2`![2844.jpg](/gqa_images/2844.jpg)
<--->
`Example 3`![3223.jpg](/gqa_images/3223.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2316334.jpg](/gqa_images/2316334.jpg)
<--->
`Candidate 1`![2389660.jpg](/gqa_images/2389660.jpg)
<--->
`Candidate 2`![2404795.jpg](/gqa_images/2404795.jpg)
<--->
`Candidate 3`![2416184.jpg](/gqa_images/2416184.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Are there men to the left of the girl?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: girl. Exists q1: man. to_the_left_of(q1,q0)
```
{{< /expand >}}
