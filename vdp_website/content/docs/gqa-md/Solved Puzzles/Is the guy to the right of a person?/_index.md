---
title: Is the guy to the right of a person?
weight: 3
---

# Puzzle 624
### Constructed from question: _Is the guy to the right of a person?_


## Example Images
{{< columns >}}
`Example 0`![2327468.jpg](/gqa_images/2327468.jpg)
<--->
`Example 1`![2329117.jpg](/gqa_images/2329117.jpg)
<--->
`Example 2`![2370522.jpg](/gqa_images/2370522.jpg)
<--->
`Example 3`![2370585.jpg](/gqa_images/2370585.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2349208.jpg](/gqa_images/2349208.jpg)
<--->
`Candidate 1`![2372303.jpg](/gqa_images/2372303.jpg)
<--->
`Candidate 2`![2376748.jpg](/gqa_images/2376748.jpg)
<--->
`Candidate 3`![2417794.jpg](/gqa_images/2417794.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Is the guy to the right of a person?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: guy. Exists q1: person. to_the_right_of(q0,q1)
```
{{< /expand >}}
