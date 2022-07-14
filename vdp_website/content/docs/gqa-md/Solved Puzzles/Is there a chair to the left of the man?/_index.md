---
title: Is there a chair to the left of the man?
weight: 3
---

# Puzzle 750
### Constructed from question: _Is there a chair to the left of the man?_


## Example Images
{{< columns >}}
`Example 0`![156.jpg](/gqa_images/156.jpg)
<--->
`Example 1`![2324949.jpg](/gqa_images/2324949.jpg)
<--->
`Example 2`![2346983.jpg](/gqa_images/2346983.jpg)
<--->
`Example 3`![2354640.jpg](/gqa_images/2354640.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2353018.jpg](/gqa_images/2353018.jpg)
<--->
`Candidate 1`![2376756.jpg](/gqa_images/2376756.jpg)
<--->
`Candidate 2`![2394228.jpg](/gqa_images/2394228.jpg)
<--->
`Candidate 3`![2404374.jpg](/gqa_images/2404374.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is there a chair to the left of the man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: chair. Exists q1: man. to_the_left_of(q0,q1)
```
{{< /expand >}}
