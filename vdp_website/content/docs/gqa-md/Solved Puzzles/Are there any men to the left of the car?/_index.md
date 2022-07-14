---
title: Are there any men to the left of the car?
weight: 3
---

# Puzzle 67
### Constructed from question: _Are there any men to the left of the car?_


## Example Images
{{< columns >}}
`Example 0`![109.jpg](/gqa_images/109.jpg)
<--->
`Example 1`![2320819.jpg](/gqa_images/2320819.jpg)
<--->
`Example 2`![2353257.jpg](/gqa_images/2353257.jpg)
<--->
`Example 3`![3071.jpg](/gqa_images/3071.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2319392.jpg](/gqa_images/2319392.jpg)
<--->
`Candidate 1`![2372673.jpg](/gqa_images/2372673.jpg)
<--->
`Candidate 2`![2376370.jpg](/gqa_images/2376370.jpg)
<--->
`Candidate 3`![2386752.jpg](/gqa_images/2386752.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 0`. This puzzle was constructed from the question `Are there any men to the left of the car?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: car. to_the_right_of(q1,q0)
```
{{< /expand >}}
