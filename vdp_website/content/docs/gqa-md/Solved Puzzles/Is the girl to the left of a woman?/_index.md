---
title: Is the girl to the left of a woman?
weight: 3
---

# Puzzle 618
### Constructed from question: _Is the girl to the left of a woman?_


## Example Images
{{< columns >}}
`Example 0`![2380446.jpg](/gqa_images/2380446.jpg)
<--->
`Example 1`![2391906.jpg](/gqa_images/2391906.jpg)
<--->
`Example 2`![2402156.jpg](/gqa_images/2402156.jpg)
<--->
`Example 3`![2416184.jpg](/gqa_images/2416184.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2320749.jpg](/gqa_images/2320749.jpg)
<--->
`Candidate 1`![2352725.jpg](/gqa_images/2352725.jpg)
<--->
`Candidate 2`![2388662.jpg](/gqa_images/2388662.jpg)
<--->
`Candidate 3`![2412202.jpg](/gqa_images/2412202.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Is the girl to the left of a woman?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: girl. Exists q1: woman. to_the_right_of(q1,q0)
```
{{< /expand >}}
