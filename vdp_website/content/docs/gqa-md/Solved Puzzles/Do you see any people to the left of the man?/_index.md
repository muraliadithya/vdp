---
title: Do you see any people to the left of the man?
weight: 3
---

# Puzzle 436
### Constructed from question: _Do you see any people to the left of the man?_


## Example Images
{{< columns >}}
`Example 0`![1159655.jpg](/gqa_images/1159655.jpg)
<--->
`Example 1`![2320103.jpg](/gqa_images/2320103.jpg)
<--->
`Example 2`![2342491.jpg](/gqa_images/2342491.jpg)
<--->
`Example 3`![2383357.jpg](/gqa_images/2383357.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2349207.jpg](/gqa_images/2349207.jpg)
<--->
`Candidate 1`![2349923.jpg](/gqa_images/2349923.jpg)
<--->
`Candidate 2`![2364331.jpg](/gqa_images/2364331.jpg)
<--->
`Candidate 3`![713176.jpg](/gqa_images/713176.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 1`. This puzzle was constructed from the question `Do you see any people to the left of the man?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: man. to_the_left_of(q0,q1)
```
{{< /expand >}}
