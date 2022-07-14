---
title: Are there any men to the left of the boy?
weight: 3
---

# Puzzle 66
### Constructed from question: _Are there any men to the left of the boy?_


## Example Images
{{< columns >}}
`Example 0`![2327124.jpg](/gqa_images/2327124.jpg)
<--->
`Example 1`![2339881.jpg](/gqa_images/2339881.jpg)
<--->
`Example 2`![2354746.jpg](/gqa_images/2354746.jpg)
<--->
`Example 3`![2398229.jpg](/gqa_images/2398229.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2321427.jpg](/gqa_images/2321427.jpg)
<--->
`Candidate 1`![2360269.jpg](/gqa_images/2360269.jpg)
<--->
`Candidate 2`![2410286.jpg](/gqa_images/2410286.jpg)
<--->
`Candidate 3`![2411051.jpg](/gqa_images/2411051.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Are there any men to the left of the boy?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: boy. Exists q1: man. to_the_right_of(q0,q1)
```
{{< /expand >}}
