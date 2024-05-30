# Overview
> *The universal product messaging brief serves as a foundational document designed to ensure consistent and effective communication about a product across all channels and stakeholders. This is a live document, so please contribute with questions, answers and other improvement suggestions.*  

- Product name: Gno
- Brief owner: Nemanja Aleksić
- Last updated: 2024-05-30

# Target info

## General Audience Description

> - *Who do you want to reach? Include any demographics that will be included in the media targeting.*
> - *What do we know about them that bring them to life?*
> - *Be explicit about any customers not qualified.*

**The main audience are Go developers:**

- **Advanced level, building libraries and low level projects**
- **Active in the Go community**
- **Early adopters, like to beta test projects**

## Insights

> - *What tension exists for the customer?*  
> - *Is there a thought or idea that opens the target’s mind to wanting or believing in the benefit?* 
> - *Is there a specific barrier to benefit belief for target customer?*

- Existing Go interpreters are not maintained well enough
- Existing Go interpreters focus on use cases that aren't relevant to the target segment
- Developers are always on a lookout for ways to streamline the development process

## Single Minded Benefit

> * *What is the single, core customer benefit that is the essence of the product’s positioning?* 
> * *The benefit should be about the life improving impact for the target rather than a fact about the product.*

**Gno, a new programming language, is an interpreted and fully-deterministic implementation of Go, designed to build succinct and composable applications using a custom-built virtual machine (VM) for auto-persistence and run-time logic.**

## Reasons to Believe

> - *What 1-3 proof points that are tightly linked to the benefit best persuade the target to believe they will achieve benefit?*

1. **Transparent and timeless code**: Gno embodies open source principles, allowing for easy sharing, auditing, and reuse of code by the Gno community at any time.
2. **Extend Go with Gno**: Gno allows Go developers to build on their existing Go expertise while exploring new paradigms in decentralized application development.
3. **Multi-user Language Functionality**: Gno facilitates the manipulation of Go objects by multiple individuals to perform operations that change the object’s state, behavior, or properties. 


## Supporting Features or Other Secondary Info

> - *What additional features or facts does the target need to know about to make a decision?*
> - *May include stats and claims*

* Experience building [Yaegi](https://traefik.io/blog/announcing-yaegi-263a1e2d070a/) - a popular Go interpreter
* Fully deterministic implementation of Go
* Turing complete

## Barriers to Purchase

> - *Are there barriers to purchase that need to be addressed before a customer has the information they need to take action?*

- Association with blockchain, and lack of practical applications outside of blockchain. The best way to address both items is by acknowledging that our primary use case was smart contract development, but that we see utility beyond blockchain and we’re building Gno as a standalone product with blockchain as an option.

## Additional Information

> - *May Include info about competitive product targeted*

- [TinyGo](https://tinygo.org/) is a Go compiler that targets IoT (so, not a direct competition), They can, however, serve as a product to emulate
- Gno is built primarily to enable easier smart contract development using Go, but we’re open to ideas of application beyond blockchain
- Gno is open source

# Micro Segments

> Micro segments are groups among the target segment that have unique wants and needs.

## Expert Go Developers

### Micro-segment Descriptor

> - *How is this micro-segment different than the general target audience?*

Go expert, looking for solutions to their business

### Micro-segment Insights

> - *What are the distinct insights or unique needs of this micro segment?*  
> - *Is there a thought or idea that opens this micro-segment’s mind to wanting or believing in the benefit?* 
> - *Is there a specific barrier to benefit belief for this micro-segment?*

* Contribute to open source projects
* Early adopter

### Highlighted Benefit

> - *Is there a specific aspect of the benefit to highlight for this micro-segment?*  
> - *Remember that the element of the benefit highlighted for each micro-segment should ladder in a way that reinforces the overall benefit positioning.*

We’re looking for contributors to help us steer the project in the direction that’s relevant to their use case

## Go Community Member

### Micro-segment Descriptor

> - *How is this micro-segment different than the general target audience?*

Lower Go expertise, no compelling business case to solve

### Micro-segment Insights

> - *What are the distinct insights or unique needs of this micro segment?*  
> - *Is there a thought or idea that opens this micro-segment’s mind to wanting or believing in the benefit?* 
> - *Is there a specific barrier to benefit belief for this micro-segment?*

Desire to join a novel project on a ground level

### Highlighted Benefit

> - *Is there a specific aspect of the benefit to highlight for this micro-segment?*  
> - *Remember that the element of the benefit highlighted for each micro-segment should ladder in a way that reinforces the overall benefit positioning.*

We’re looking for contributors who will join the community and help us with the project.

## Go + Web3 developer

### Micro-segment Descriptor

> - *How is this micro-segment different than the general target audience?*

Go developer with web3 experience

### Micro-segment Insights

> - *What are the distinct insights or unique needs of this micro segment?*  
> - *Is there a thought or idea that opens this micro-segment’s mind to wanting or believing in the benefit?* 
> - *Is there a specific barrier to benefit belief for this micro-segment?*

* Go developer who built something on blockchain or expressed interest in blockchain development
* Tried writing smart contracts in Rust or Solidity
* Not interested in just one specific blockchain (e.g. Etherium, Cardano)


### Highlighted Benefit

> - *Is there a specific aspect of the benefit to highlight for this micro-segment?*  
> - *Remember that the element of the benefit highlighted for each micro-segment should ladder in a way that reinforces the overall benefit positioning.*

* You don’t need to learn a new language to write smart contracts
* You can be rewarded for your contributions


---

# Q&A

**Q:** Is Gno a separate product from Gno.land?

**A:** Yes. While Gno is a key component in Gno.land, it's essentially a product of its own, and will get its own website and repo.

**Q:** What is Gnora?

**A:** A blockchain-less GnoVM for edge Computing on trusted, decentralized communities that we plan to demo at GopherCon EU & US. [Learn more](https://gnora.gno.land)

---

# Appendix

## Jae's GopherCon US 2024 talk title

Building a Deterministic Interpreter in Go: Readability vs Performance

The Gno Interpreter is an elegant deterministic Go1.17 interpreter written in Go. This talk will show viewers the problem the Gno VM solves for; a survey of alternative solutions and their drawbacks; the design of the virtual machine; the transactional persistence model for Gno runtime objects; and insights learned about legibility vs performance tradeoffs in Go itself.

## Sponsor blurb GopherCon US 2024

Gno is an interpreted and fully-deterministic implementation of Go, designed to build succinct and composable smart contracts. Gno.land is a next-generation Gno-based smart contract platform that enables the building of open-source decentralized apps with the first truly verifiable and auditable backend servers. It pioneers Proof of Contribution, the first model to reward builders instead of investors. Gno.land is thrilled to sponsor GopherCon US once more and share our vision of a censorship-resistant internet and a more transparent, accountable world.