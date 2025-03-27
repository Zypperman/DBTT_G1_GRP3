# DBTT_G1_GRP3
Project notebooks and implementations for backend to process and return data

This backend service provides an API to serve a PyTorch model for inference.

## Prerequisites (for running backend)

- Python 3.8+
- pip (Python package installer)

## Setup Instructions

1. Install the required Python packages:

```bash
make setup
```

2. Place the PyTorch model file (`.pt` file) in the `models/` directory.

3. Start the backend service:

```bash
make run
```

The backend service will start on `http://localhost:8000`.

---  

# Data pipeline and potential routes

We have designed the following use-cases, with each feature following the naming convention: `<mvp_num>.<usp_num>`, representing the main use-cases that we will term as the "Minimum Viable Product" (MVP) and extensions to these use-cases that we will term as "unique selling points" (USPs), ie. Feature `1.0` will refer to our first MVP, while `4.2` refers to the 2th USP under our 4th MVP.

| Feature | s/n | Description | Implementation |
|---------|---------|-------------|--------|
| Basic Credit Risk Prediction (CRP)| 1.0| Currently handled manually by officers mid live consultation with clients. Relevant details are computed on the spot mid-consult. At best, officers run automations via excel formulas and VBA for Robotic Process Automation of this process. This can be automated by having  and standardised for officers, so that they are able
| Baseline -> Logistic regression Fundamentally use Logistic Regression → add Random forest or XGBoost, or make an MoE model and compare metrics |


| Advanced Credit Risk Prediction
| 1.1 | Combine 1.0 with time-series models for Thailand's economic indicators. First layer: KAN, then time-series model weights, then MLP |
| Super Advanced Credit Risk Prediction | 1.2 | Incorporate CNN transformer architecture |
| Quantum-enhanced Risk Prediction | 1.3 | Quantum circuit-based neural networks for economic simulation (capacity building) |
| Advanced Score-card Analysis | 2.0 | Score card framework to assess improvement factors |
| Default Factor Tagging | 2.1 | Tag top 3 default factors per profile using recommender systems or KACDP model |
| Loan Package Recommendation | 2.2 | Tag applications with recommended loan packages (fixed levels) |
| Document NLP Processing | 3.0 | Machine summarization model (fine-tuned with LoRA) for document insights |
| Loan Type Tagging | 3.1 | Pre-set tags using LoRA with encoder-only transformer (BERT variant) |
| Officer Recommendation System | 4.0 | RM view based on officer's track record with previous cases |
| Officer Text-filling Tasks | 4.1 | Includes: remediation requests, risk notifications, consultation arrangements (using RAG with locally hosted LLM) |
