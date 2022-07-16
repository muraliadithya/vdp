---
title: Variant 17
weight: 3
---

# Puzzle middleball - Variant 17

## Example Images
{{< columns >}}
`Example 0`![middleball2.jpg](/natscene_data/images/middleball2.jpg)
<--->
`Example 1`![middleball3.jpg](/natscene_data/images/middleball3.jpg)
<--->
`Example 2`![middleball4.jpg](/natscene_data/images/middleball4.jpg)
{{< /columns >}}

## Candidate Images
{{< columns >}}
`Candidate 0`![middleball9.jpg](/natscene_data/images/middleball9.jpg)
<--->
`Candidate 1`![middleball6.jpg](/natscene_data/images/middleball6.jpg)
<--->
`Candidate 2`![middleball1.jpg](/natscene_data/images/middleball1.jpg)
<--->
`Candidate 3`![middleball7.jpg](/natscene_data/images/middleball7.jpg)
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
Exists q0: sports ball. Exists q1: person. Exists q2: person. right(q2,q0) AND left(q1,q2)
```
{{< /expand >}}
