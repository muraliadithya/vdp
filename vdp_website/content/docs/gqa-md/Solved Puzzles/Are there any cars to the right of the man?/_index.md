---
title: Are there any cars to the right of the man?
weight: 3
---

# Puzzle 41
### Constructed from question: _Are there any cars to the right of the man?_


## Example Images
{{< columns >}}
`Example 0`![2363019.jpg](/gqa_images/2363019.jpg)
<--->
`Example 1`![2363813.jpg](/gqa_images/2363813.jpg)
<--->
`Example 2`![2370671.jpg](/gqa_images/2370671.jpg)
<--->
`Example 3`![2410817.jpg](/gqa_images/2410817.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![1469.jpg](/gqa_images/1469.jpg)
<--->
`Candidate 1`![2321271.jpg](/gqa_images/2321271.jpg)
<--->
`Candidate 2`![2353886.jpg](/gqa_images/2353886.jpg)
<--->
`Candidate 3`![4975.jpg](/gqa_images/4975.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Are there any cars to the right of the man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: car. to_the_left_of(q0,q1)
```
{{< /expand >}}
