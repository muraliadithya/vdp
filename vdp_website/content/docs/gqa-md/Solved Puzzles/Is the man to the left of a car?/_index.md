---
title: Is the man to the left of a car?
weight: 3
---

# Puzzle 659
### Constructed from question: _Is the man to the left of a car?_


## Example Images
{{< columns >}}
`Example 0`![2317936.jpg](/gqa_images/2317936.jpg)
<--->
`Example 1`![2331320.jpg](/gqa_images/2331320.jpg)
<--->
`Example 2`![2350489.jpg](/gqa_images/2350489.jpg)
<--->
`Example 3`![2417293.jpg](/gqa_images/2417293.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2327752.jpg](/gqa_images/2327752.jpg)
<--->
`Candidate 1`![2342546.jpg](/gqa_images/2342546.jpg)
<--->
`Candidate 2`![2386752.jpg](/gqa_images/2386752.jpg)
<--->
`Candidate 3`![3214.jpg](/gqa_images/3214.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 0`. This puzzle was constructed from the question `Is the man to the left of a car?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: car. to_the_left_of(q0,q1)
```
{{< /expand >}}
