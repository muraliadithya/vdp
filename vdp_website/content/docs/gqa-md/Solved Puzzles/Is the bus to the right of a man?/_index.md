---
title: Is the bus to the right of a man?
weight: 3
---

# Puzzle 548
### Constructed from question: _Is the bus to the right of a man?_


## Example Images
{{< columns >}}
`Example 0`![2342915.jpg](/gqa_images/2342915.jpg)
<--->
`Example 1`![2411649.jpg](/gqa_images/2411649.jpg)
<--->
`Example 2`![2414716.jpg](/gqa_images/2414716.jpg)
<--->
`Example 3`![3107.jpg](/gqa_images/3107.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![1531.jpg](/gqa_images/1531.jpg)
<--->
`Candidate 1`![2404743.jpg](/gqa_images/2404743.jpg)
<--->
`Candidate 2`![2406051.jpg](/gqa_images/2406051.jpg)
<--->
`Candidate 3`![2409040.jpg](/gqa_images/2409040.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Is the bus to the right of a man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: bus. Exists q1: man. to_the_left_of(q1,q0)
```
{{< /expand >}}
