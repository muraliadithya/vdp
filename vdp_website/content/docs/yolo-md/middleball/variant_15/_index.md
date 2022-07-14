---
title: Variant 15
weight: 3
---

# Puzzle middleball - Variant 15

## Example Images
{{< columns >}}
`Example 0`![middleball1.jpg](/natscene-data/images/middleball1.jpg)
<--->
`Example 1`![middleball4.jpg](/natscene-data/images/middleball4.jpg)
<--->
`Example 2`![middleball3.jpg](/natscene-data/images/middleball3.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![middleball6.jpg](/natscene-data/images/middleball6.jpg)
<--->
`Candidate 1`![middleball2.jpg](/natscene-data/images/middleball2.jpg)
<--->
`Candidate 2`![middleball9.jpg](/natscene-data/images/middleball9.jpg)
<--->
`Candidate 3`![middleball8.jpg](/natscene-data/images/middleball8.jpg)
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
Exists q0: person. Exists q1: person. Exists q2: sports ball. left(q1,q2) AND right(q0,q2)
```
{{< /expand >}}
