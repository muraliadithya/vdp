---
title: Is the bus to the left of a car?
weight: 3
---

# Puzzle 546
### Constructed from question: _Is the bus to the left of a car?_


## Example Images
{{< columns >}}
`Example 0`![2327609.jpg](/gqa_images/2327609.jpg)
<--->
`Example 1`![2342009.jpg](/gqa_images/2342009.jpg)
<--->
`Example 2`![2344521.jpg](/gqa_images/2344521.jpg)
<--->
`Example 3`![498156.jpg](/gqa_images/498156.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2320071.jpg](/gqa_images/2320071.jpg)
<--->
`Candidate 1`![2368670.jpg](/gqa_images/2368670.jpg)
<--->
`Candidate 2`![2372066.jpg](/gqa_images/2372066.jpg)
<--->
`Candidate 3`![2411041.jpg](/gqa_images/2411041.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 2`. This puzzle was constructed from the question `Is the bus to the left of a car?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: bus. Exists q1: car. to_the_right_of(q1,q0)
```
{{< /expand >}}
