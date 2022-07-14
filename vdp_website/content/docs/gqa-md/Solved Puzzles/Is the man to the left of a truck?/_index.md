---
title: Is the man to the left of a truck?
weight: 3
---

# Puzzle 663
### Constructed from question: _Is the man to the left of a truck?_


## Example Images
{{< columns >}}
`Example 0`![1593063.jpg](/gqa_images/1593063.jpg)
<--->
`Example 1`![2338034.jpg](/gqa_images/2338034.jpg)
<--->
`Example 2`![2380592.jpg](/gqa_images/2380592.jpg)
<--->
`Example 3`![2409011.jpg](/gqa_images/2409011.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2343980.jpg](/gqa_images/2343980.jpg)
<--->
`Candidate 1`![2408767.jpg](/gqa_images/2408767.jpg)
<--->
`Candidate 2`![2410111.jpg](/gqa_images/2410111.jpg)
<--->
`Candidate 3`![2413019.jpg](/gqa_images/2413019.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Is the man to the left of a truck?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: man. Exists q1: truck. to_the_right_of(q1,q0)
```
{{< /expand >}}
