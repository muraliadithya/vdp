---
title: Is there an umbrella to the left of the man?
weight: 3
---

# Puzzle 814
### Constructed from question: _Is there an umbrella to the left of the man?_


## Example Images
{{< columns >}}
`Example 0`![2336267.jpg](/gqa_images/2336267.jpg)
<--->
`Example 1`![2347825.jpg](/gqa_images/2347825.jpg)
<--->
`Example 2`![2350965.jpg](/gqa_images/2350965.jpg)
<--->
`Example 3`![2360388.jpg](/gqa_images/2360388.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2329096.jpg](/gqa_images/2329096.jpg)
<--->
`Candidate 1`![2343959.jpg](/gqa_images/2343959.jpg)
<--->
`Candidate 2`![2370437.jpg](/gqa_images/2370437.jpg)
<--->
`Candidate 3`![2380574.jpg](/gqa_images/2380574.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is there an umbrella to the left of the man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: umbrella. Exists q1: man. to_the_right_of(q1,q0)
```
{{< /expand >}}
