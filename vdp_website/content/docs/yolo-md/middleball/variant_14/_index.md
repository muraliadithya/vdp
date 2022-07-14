---
title: Variant 14
weight: 3
---

# Puzzle middleball - Variant 14

## Example Images
{{< columns >}}
`Example 0`![middleball3.jpg](/natscene-data/images/middleball3.jpg)
<--->
`Example 1`![middleball1.jpg](/natscene-data/images/middleball1.jpg)
<--->
`Example 2`![middleball4.jpg](/natscene-data/images/middleball4.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![middleball8.jpg](/natscene-data/images/middleball8.jpg)
<--->
`Candidate 1`![middleball2.jpg](/natscene-data/images/middleball2.jpg)
<--->
`Candidate 2`![middleball9.jpg](/natscene-data/images/middleball9.jpg)
<--->
`Candidate 3`![middleball5.jpg](/natscene-data/images/middleball5.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There is a football in between two people (kickoff position).
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 1` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: sports ball. Exists q2: person. left(q0,q1) AND left(q1,q2)
```
{{< /expand >}}
