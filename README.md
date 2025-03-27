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

This ensures that the proper version of packages will be used.
  
# Data pipeline and potential routes

We have designed the following use-cases, with each feature following the naming convention: `<mvp_num>.<usp_num>`, representing the main use-cases that we will term as the "Minimum Viable Product" (MVP) and extensions to these use-cases that we will term as "unique selling points" (USPs), ie. Feature `1.0` will refer to our first MVP, while `4.2` refers to the 2th USP under our 4th MVP.


| Feature | s/n | Description | Implementation |
|---------|---------|-------------|--------|
| Basic Credit Risk Prediction (CRP)| 1.0| <div style="text-align: justify"> Currently handled manually by officers mid live consultation with clients. Relevant details are computed on the spot mid-consult. At best, officers might have implemented Robotic Process Automation (RPA) themselves using excel formulas and VBA, albeit the formulas used may not be standardised. At worst, Officers will rely more on provided documentation and manually verify the statistics for each application. This can be automated and standardised for officers.</div> | Inspired by baseline notebook written by [Kaggle user Akhil Shukla](https://www.kaggle.com/code/akhil14shukla/loan-defaulter-prediction), we will use a logistic regression model made with SKlearn's library, with customizations obtain the associated probability using a pre-made method, to make predictions whether a client will default on their loan| 
| Intermedate Credit Risk Prediction (CRP)| 1.1|<div style="text-align: justify"> Extending from Feature 1.0, we now use alternative models, should  feature 1.0 model's be insufficient given the dataset. </div> | swapping out the Baseline model, we will now implement the following alternatives: <ol><li>A Random Forest model</li><li>A gradient boosted decision tree model, from the XGBoost Library </li><li>A Mixture of Experts (MoE) model using logistic regression over various combinations of variables</li> </ol>|
| Advanced Credit Risk Prediction 1 | 1.2 | Combine 1.0 with time-series models for Thailand's economic indicators. First layer: KAN, then time-series model weights, then MLP |
| Transformer-assisted Credit Risk Prediction | 1.2 | Incorporate CNN transformer architecture |
| Quantum-Circuit assisted Credit Risk Prediction | 1.3 | Quantum circuit-based neural networks for economic simulation (capacity building) |
| Advanced Score-card Analysis | 2.0 | Score card framework to assess improvement factors |
| Default Factor Tagging | 2.1 | Tag top 3 default factors per profile using recommender systems or KACDP model |
| Loan Package Recommendation | 2.2 | Tag applications with recommended loan packages (fixed levels) |
| Document NLP Processing | 3.0 | Machine summarization model (fine-tuned with LoRA) for document insights |
| Loan Type Tagging | 3.1 | Pre-set tags using LoRA with encoder-only transformer (BERT variant) |
| Officer Recommendation System | 4.0 | RM view based on officer's track record with previous cases |
| Officer Text-filling Tasks | 4.1 | Includes: remediation requests, risk notifications, consultation arrangements (using RAG with locally hosted LLM) |

# References and sources

| Name | Use | link |
|---------|---------|-------------|
|Home Equity dataset (HMEQ) | For Credit risk prediction <br> (see all uses under Feature 1) |[Kaggle](https://www.kaggle.com/datasets/ajay1735/hmeq-data) |

# Assumptions (and remedial action where applicable)
- The variables considered within the HMEQ dataset are the most critical for determining Credit risk.
- The economic conditions that the dataset was obtained from approximately mimics the conditions that the 
    - MLOPs will need to develop a data pipeline to automatically update the models used, referencing Kungsri's data-warehouses.