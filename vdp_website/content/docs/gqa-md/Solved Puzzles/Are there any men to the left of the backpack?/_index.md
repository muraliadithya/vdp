---
title: Are there any men to the left of the backpack?
weight: 3
---

# Puzzle 65
### Constructed from question: _Are there any men to the left of the backpack?_


## Example Images
{{< columns >}}
`Example 0`![2324673.jpg](/gqa_images/2324673.jpg)
<--->
`Example 1`![2342656.jpg](/gqa_images/2342656.jpg)
<--->
`Example 2`![2361060.jpg](/gqa_images/2361060.jpg)
<--->
`Example 3`![2384992.jpg](/gqa_images/2384992.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2353278.jpg](/gqa_images/2353278.jpg)
<--->
`Candidate 1`![2371804.jpg](/gqa_images/2371804.jpg)
<--->
`Candidate 2`![2396618.jpg](/gqa_images/2396618.jpg)
<--->
`Candidate 3`![2406407.jpg](/gqa_images/2406407.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Are there any men to the left of the backpack?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: backpack. to_the_right_of(q1,q0)
```
{{< /expand >}}
