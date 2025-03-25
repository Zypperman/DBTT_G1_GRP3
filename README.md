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

We have designed the following use-cases, with each feature following the naming convention: `<mvp_num>.<usp_num>`, representing the main use-cases that we will term as the "Minimum Viable Product" (MVP) and extensions to these use-cases that we will term as "unique selling points" (USPs), ie. Feature 1.0 will refer to our first MVP, while 4.2 refers to the 2th USP under our 4th MVP.



