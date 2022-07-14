---
title: Is the man to the left of the girl?
weight: 3
---

# Puzzle 664
### Constructed from question: _Is the man to the left of the girl?_


## Example Images
{{< columns >}}
`Example 0`![2334117.jpg](/gqa_images/2334117.jpg)
<--->
`Example 1`![2341378.jpg](/gqa_images/2341378.jpg)
<--->
`Example 2`![2343417.jpg](/gqa_images/2343417.jpg)
<--->
`Example 3`![2355623.jpg](/gqa_images/2355623.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2346312.jpg](/gqa_images/2346312.jpg)
<--->
`Candidate 1`![2358215.jpg](/gqa_images/2358215.jpg)
<--->
`Candidate 2`![2361975.jpg](/gqa_images/2361975.jpg)
<--->
`Candidate 3`![2411600.jpg](/gqa_images/2411600.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 0`. This puzzle was constructed from the question `Is the man to the left of the girl?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: girl. Exists q1: man. to_the_right_of(q0,q1)
```
{{< /expand >}}
