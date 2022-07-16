---
title: Variant 5
weight: 3
---

# Puzzle middleball - Variant 5

## Example Images
{{< columns >}}
`Example 0`![middleball4.jpg](/natscene_data/images/middleball4.jpg)
<--->
`Example 1`![middleball2.jpg](/natscene_data/images/middleball2.jpg)
<--->
`Example 2`![middleball1.jpg](/natscene_data/images/middleball1.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![middleball3.jpg](/natscene_data/images/middleball3.jpg)
<--->
`Candidate 1`![middleball5.jpg](/natscene_data/images/middleball5.jpg)
<--->
`Candidate 2`![middleball8.jpg](/natscene_data/images/middleball8.jpg)
<--->
`Candidate 3`![middleball9.jpg](/natscene_data/images/middleball9.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There is a football in between two people (kickoff position).
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 0` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: sports ball. Exists q1: person. Exists q2: person. right(q0,q1) AND left(q0,q2)
```
{{< /expand >}}
