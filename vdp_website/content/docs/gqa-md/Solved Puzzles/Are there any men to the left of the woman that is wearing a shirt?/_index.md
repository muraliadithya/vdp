---
title: Are there any men to the left of the woman that is wearing a shirt?
weight: 3
---

# Puzzle 68
### Constructed from question: _Are there any men to the left of the woman that is wearing a shirt?_


## Example Images
{{< columns >}}
`Example 0`![2330353.jpg](/gqa_images/2330353.jpg)
<--->
`Example 1`![2345275.jpg](/gqa_images/2345275.jpg)
<--->
`Example 2`![2352656.jpg](/gqa_images/2352656.jpg)
<--->
`Example 3`![2366196.jpg](/gqa_images/2366196.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2318072.jpg](/gqa_images/2318072.jpg)
<--->
`Candidate 1`![2358015.jpg](/gqa_images/2358015.jpg)
<--->
`Candidate 2`![2370821.jpg](/gqa_images/2370821.jpg)
<--->
`Candidate 3`![2399899.jpg](/gqa_images/2399899.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Are there any men to the left of the woman that is wearing a shirt?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: woman. Exists q1: shirt. to_the_left_of(q1,q0)
```
{{< /expand >}}
