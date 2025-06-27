# Career Coach CLI

Repository: https://github.com/keyur-2992/Career-coach

This is the command-line interface for the Career Coach application. It provides a text-based interface for resume analysis and career coaching.

## Features

- Resume parsing and analysis
- Career Q&A sessions
- Personalized coaching reports
- Job matching based on profile analysis

## How It Works
1. The CLI prompts you to start a new Q&A session or load a previous one.
2. You answer career reflection questions in the terminal.
3. You upload or select a PDF resume for parsing.
4. The CLI merges your answers and resume data, then sends them to the backend (or local logic) for analysis.
5. You receive a coaching report and job matches in the terminal.

## Getting Started

### Prerequisites

- Python 3.8+
- pip

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/keyur-2992/Career-coach
   cd Career-coach/cli
   ```

2. Install dependencies:
   ```sh
   pip install -r ../requirements.txt
   ```

3. Run the CLI:
   ```sh
   python main.py
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

```