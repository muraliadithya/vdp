---
title: Variant 10
weight: 3
---

# Puzzle middleball - Variant 10

## Example Images
{{< columns >}}
`Example 0`![middleball1.jpg](/natscene_data/images/middleball1.jpg)
<--->
`Example 1`![middleball4.jpg](/natscene_data/images/middleball4.jpg)
<--->
`Example 2`![middleball3.jpg](/natscene_data/images/middleball3.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![middleball9.jpg](/natscene_data/images/middleball9.jpg)
<--->
`Candidate 1`![middleball7.jpg](/natscene_data/images/middleball7.jpg)
<--->
`Candidate 2`![middleball2.jpg](/natscene_data/images/middleball2.jpg)
<--->
`Candidate 3`![middleball6.jpg](/natscene_data/images/middleball6.jpg)
{{< /columns >}}

*Which candidate among the above candidates is most similar to all the example images? Explain why.*

## Groundtruth English Description

{{< expand "Click to view the description of the intended discriminator" "..." >}}
There is a football in between two people (kickoff position).
{{< /expand >}}

---



## Our Tool's Prediction

{{< expand "Click to view our tool's prediction" "..." >}}
Our tool selected `Candidate 2` as being the most similar to the example images with the discriminator:
```plaintext
Exists q0: person. Exists q1: sports ball. Exists q2: person. left(q0,q1) AND left(q1,q2)
```
{{< /expand >}}
