---
title: Are there any cars to the left of the man?
weight: 3
---

# Puzzle 40
### Constructed from question: _Are there any cars to the left of the man?_


## Example Images
{{< columns >}}
`Example 0`![1593069.jpg](/gqa_images/1593069.jpg)
<--->
`Example 1`![2370406.jpg](/gqa_images/2370406.jpg)
<--->
`Example 2`![2392227.jpg](/gqa_images/2392227.jpg)
<--->
`Example 3`![2415661.jpg](/gqa_images/2415661.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2348234.jpg](/gqa_images/2348234.jpg)
<--->
`Candidate 1`![2399301.jpg](/gqa_images/2399301.jpg)
<--->
`Candidate 2`![2409090.jpg](/gqa_images/2409090.jpg)
<--->
`Candidate 3`![2409864.jpg](/gqa_images/2409864.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Are there any cars to the left of the man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: car. to_the_right_of(q0,q1)
```
{{< /expand >}}
