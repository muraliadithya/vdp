---
title: Do you see men to the left of the woman?
weight: 3
---

# Puzzle 477
### Constructed from question: _Do you see men to the left of the woman?_


## Example Images
{{< columns >}}
`Example 0`![2361431.jpg](/gqa_images/2361431.jpg)
<--->
`Example 1`![2381634.jpg](/gqa_images/2381634.jpg)
<--->
`Example 2`![2382121.jpg](/gqa_images/2382121.jpg)
<--->
`Example 3`![2401806.jpg](/gqa_images/2401806.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![150382.jpg](/gqa_images/150382.jpg)
<--->
`Candidate 1`![2362479.jpg](/gqa_images/2362479.jpg)
<--->
`Candidate 2`![2374718.jpg](/gqa_images/2374718.jpg)
<--->
`Candidate 3`![2399385.jpg](/gqa_images/2399385.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Do you see men to the left of the woman?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: woman. Exists q1: man. to_the_left_of(q1,q0)
```
{{< /expand >}}
