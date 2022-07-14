---
title: Are there cars to the left of the truck?
weight: 3
---

# Puzzle 133
### Constructed from question: _Are there cars to the left of the truck?_


## Example Images
{{< columns >}}
`Example 0`![2373258.jpg](/gqa_images/2373258.jpg)
<--->
`Example 1`![2380582.jpg](/gqa_images/2380582.jpg)
<--->
`Example 2`![2383690.jpg](/gqa_images/2383690.jpg)
<--->
`Example 3`![713760.jpg](/gqa_images/713760.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![2320531.jpg](/gqa_images/2320531.jpg)
<--->
`Candidate 1`![2363506.jpg](/gqa_images/2363506.jpg)
<--->
`Candidate 2`![2371934.jpg](/gqa_images/2371934.jpg)
<--->
`Candidate 3`![2384662.jpg](/gqa_images/2384662.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
The groundtruth answer was `Candidate 3`. This puzzle was constructed from the question `Are there cars to the left of the truck?`.
{{< /expand >}}

---

## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 3` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: truck. Exists q1: car. to_the_right_of(q0,q1)
```
{{< /expand >}}
