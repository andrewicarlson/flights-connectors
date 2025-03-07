#!/bin/bash
source .env

APOLLO_KEY=$APOLLO_KEY \
APOLLO_GRAPH_REF=$APOLLO_GRAPH_REF \
APOLLO_ROVER_DEV_ROUTER_VERSION=$APOLLO_ROVER_DEV_ROUTER_VERSION \
FLIGHT_RADAR_API_KEY=$FLIGHT_RADAR_API_KEY \
rover dev \
  --router-config ./router/router.yaml \
  --supergraph-config ./router/supergraph_connector.yaml \
  --supergraph-port=$CONNECTOR_SG_PORT