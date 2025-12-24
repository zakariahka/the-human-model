# Human Data Model (Educational Project)

## Overview

This project is an **educational and conceptual relational data model** for representing a human being in a structured database format.

The goal is to explore how complex human attributes and life events (identity, names, citizenship, race, education, locations, etc.) can be modeled correctly using relational database principles like normalization, foreign keys, link tables, and constraints. **NOT** to store real people’s data, as that is illegal and highly unethical.

This is a thought exercise and technical learning project, focused on **schema design**, not application development.

---

## Why This Exists

I’ve always been interested in how you would *actually* model a human in a database beyond the typical shallow “user” table you see in most applications.

At some point I realized:

- Humans don’t have one name  
- Humans don’t have one nationality  
- Attributes change over time  
- Some relationships are one-to-many, others are many-to-many, and some are 0-to-1  
- Most real systems oversimplify this  

I assumed a clean, canonical “human data model” already existed somewhere but surprisingly, it doesn’t.

So this project is my attempt to design one **from first principles**, using proper relational modeling instead of shortcuts.

---

## Design Philosophy

The schema is intentionally **normalized and explicit**:

- **Lookup tables** (e.g., `country`, `race`, `school`) define reusable concepts so that (for example) "USA" isn't stored 350 million times for each American
- **Link tables** (e.g., `citizenship`, `person_race`, `person_name`) model relationships and multiplicity  
- **Primary keys + foreign keys** enforce real-world constraints  
- **Time-bounded tables** are used where things change over time  
- Optional relationships are represented by nullable foreign keys  
- One-time events (like death) are enforced with **0..1 semantics** using primary keys  

The goal is **correctness, clarity, and extensibility** — not convenience.

---

## Ethics & Legal Disclaimer (Important)

This project is **purely educational**.

- It is **not intended** to store real people’s data  
- Storing or aggregating real human identity data without consent is unethical and, in many jurisdictions, illegal  

This schema should only ever be used with:

- mock data  
- synthetic data  
- test fixtures  
- academic or learning environments  

Any resemblance to real individuals would be coincidental and unintended.

---

## What This Is Not

- Not a production system  
- Not a data collection platform  
- Not a surveillance or profiling tool  
- Not compliant with privacy regulations by default  

It’s a **database modeling exercise**, nothing more.

---

## Motivation

This project exists because:

- I wanted to deeply understand relational modeling  
- I wanted to challenge “just put it in JSON” thinking  
- I wanted to see what happens when you take normalization seriously  
- I wanted to build something I couldn’t find anywhere else  

If nothing else, this serves as a reference for thinking rigorously about schema design and data relationships.

---

## Final Note

If you’re reading this and thinking:

> “This is overkill”

You’re probably right and that’s the point.

This project is about **learning**, not efficiency shortcuts.
