# text2sparql-client-examples
Usage examples for the text2sparql-client (https://github.com/AKSW/text2sparql-client)

## Endpoints

All executions for Text2SPARQL '26 are based on tentris (https://tentris.io/) endpoints created in empty containers with the standard configuration for the challenge.
The endpoints are available at the following URLs:
 - CK25 dataset: http://141.57.8.18:9080/ui for the web GUI or http://141.57.8.18:9080/sparql in the client optional argument `--endpoint` or `-e`
 - DB25 dataset: http://141.57.8.18:9081/ui for the web GUI or http://141.57.8.18:9081/sparql in the client optional argument `--endpoint` or `-e`

## API OK?

Reduced CK25 questions file for testing the API connection and the evaluation process. To execute the test for the API connection you will need a valid API according to the challenge specifications, [see](https://text2sparql.aksw.org/latest/participation/challenge/#process) and the files (1), (2) that you can find in the root of this repository: (1) the questions file `questions_api_ok.yml`; (2) the example shell file `run_api_ok.sh`. 

To ask, query and evaluate according to your API clone and run `run_api_ok.sh` passing `<API_URL> <API_NAME>`, for example:
```bash
bash run_api_ok.sh "http://localhost:8000" "text2sparql"
```

We also provide an api example where you can try it out with the following commands:

```bash
pip install "fastapi[standard]"
fastapi dev api_example.py
bash run_api_ok.sh "http://localhost:8000" "example_api"
```

## CK25

Usage example for the CK25 dataset from the [First International TEXT2SPARQL challenge](https://text2sparql.aksw.org/2025/). To execute tests for the CK25 dataset you will need a valid API according to the challenge specifications, [see](https://text2sparql.aksw.org/latest/participation/challenge/#process) and the directory `examples`. It contains the questions file `questions_ck25.yml` the True Result-set `ck25_true_result.json` (which can be generated with the questions file running the command `text2sparql query -o "ck25_true_result.json" questions.yml`), and the example shell file. To ask, query and evaluate according to your API open the `examples` directory and run `run_ck25.sh` passing `<API_URL> <API_NAME>`, for example:

```bash
cd examples
bash run_ck25.sh "http://localhost:8000" "text2sparql"
```

## DB25

Usage example for the DB25 dataset from the [First International TEXT2SPARQL challenge](https://text2sparql.aksw.org/2025/). To execute tests for the CK25 dataset you will need a valid API according to the challenge specifications, [see](https://text2sparql.aksw.org/latest/participation/challenge/#process) and the directory `examples`. It contains the questions file `questions_db25.yml` the True Result-set `db25_true_result.json` (which can be generated with the questions file running the command `text2sparql query -o "db25_true_result.json" questions.yml`), and the example shell file. To ask, query and evaluate according to your API open the `examples` directory and run `run_db25.sh` passing `<API_URL> <API_NAME>`, for example:

```bash
cd examples
bash run_db25.sh "http://localhost:8000" "text2sparql"
```