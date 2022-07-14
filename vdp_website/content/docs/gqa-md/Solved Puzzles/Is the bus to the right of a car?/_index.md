---
title: Is the bus to the right of a car?
weight: 3
---

# Puzzle 547
### Constructed from question: _Is the bus to the right of a car?_


## Example Images
{{< columns >}}
`Example 0`![2364937.jpg](/gqa_images/2364937.jpg)
<--->
`Example 1`![2368670.jpg](/gqa_images/2368670.jpg)
<--->
`Example 2`![2377897.jpg](/gqa_images/2377897.jpg)
<--->
`Example 3`![2413404.jpg](/gqa_images/2413404.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![1592168.jpg](/gqa_images/1592168.jpg)
<--->
`Candidate 1`![2320604.jpg](/gqa_images/2320604.jpg)
<--->
`Candidate 2`![2361176.jpg](/gqa_images/2361176.jpg)
<--->
`Candidate 3`![2407413.jpg](/gqa_images/2407413.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the bus to the right of a car?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: bus. Exists q1: car. to_the_right_of(q0,q1)
```
{{< /expand >}}
