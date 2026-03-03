#!/usr/bin/env bash
# @(#) run ask, query and evaluate for all questions and responses
# Use the unofficial bash strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail; export FS=$'\n\t'

API_NAME=${2:-}
API_URL=${1:-}

echo "Running ask, query and evaluate for all questions and responses for $API_NAME at $API_URL"
mkdir -p api_results
text2sparql ask -o "api_results/${API_NAME}_api_ok_answers.json" --answers-db "api_results/${API_NAME}_api_ok_answers.db" --retries-log "api_results/${API_NAME}_api_ok_retries.log" questions_api_ok.yml "${API_URL}"
text2sparql query -o "api_results/${API_NAME}_api_ok_pred_result_set.json" -a "api_results/${API_NAME}_api_ok_answers.json" questions_api_ok.yml
text2sparql evaluate -o "api_results/${API_NAME}_api_ok_results.json" "${API_NAME}" api_ok_true_result_set.json "api_results/${API_NAME}_api_ok_pred_result_set.json"
