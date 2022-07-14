---
title: Is the van to the left of a car?
weight: 3
---

# Puzzle 945
### Constructed from question: _Is the van to the left of a car?_


## Example Images
{{< columns >}}
`Example 0`![2373005.jpg](/gqa_images/2373005.jpg)
<--->
`Example 1`![2375784.jpg](/gqa_images/2375784.jpg)
<--->
`Example 2`![2380834.jpg](/gqa_images/2380834.jpg)
<--->
`Example 3`![3203.jpg](/gqa_images/3203.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2324815.jpg](/gqa_images/2324815.jpg)
<--->
`Candidate 1`![3258.jpg](/gqa_images/3258.jpg)
<--->
`Candidate 2`![498274.jpg](/gqa_images/498274.jpg)
<--->
`Candidate 3`![713203.jpg](/gqa_images/713203.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the van to the left of a car?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: van. Exists q1: car. to_the_right_of(q1,q0)
```
{{< /expand >}}
