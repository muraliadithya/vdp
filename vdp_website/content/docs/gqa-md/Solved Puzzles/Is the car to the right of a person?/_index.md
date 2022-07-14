---
title: Is the car to the right of a person?
weight: 3
---

# Puzzle 564
### Constructed from question: _Is the car to the right of a person?_


## Example Images
{{< columns >}}
`Example 0`![2342861.jpg](/gqa_images/2342861.jpg)
<--->
`Example 1`![2347589.jpg](/gqa_images/2347589.jpg)
<--->
`Example 2`![2377573.jpg](/gqa_images/2377573.jpg)
<--->
`Example 3`![2380877.jpg](/gqa_images/2380877.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2317154.jpg](/gqa_images/2317154.jpg)
<--->
`Candidate 1`![2363698.jpg](/gqa_images/2363698.jpg)
<--->
`Candidate 2`![2386723.jpg](/gqa_images/2386723.jpg)
<--->
`Candidate 3`![2396980.jpg](/gqa_images/2396980.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Is the car to the right of a person?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: car. to_the_left_of(q0,q1)
```
{{< /expand >}}
