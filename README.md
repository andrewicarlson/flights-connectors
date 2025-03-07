This repository contains example connectors that orchestrate API requests between the FlightRadar and FAA APIs. 

## Instructions

1. Clone this repo
1. Create a `.env` using `.env.example` as a template
1. Add an Apollo Graph Ref and Key to the `.env` file
1. Get an API token from [Flight Radar 24](https://fr24api.flightradar24.com/key-management) and add to the `.env`
1. Start the router using `sh start_router.sh`
1. Open [Sandbox](http://localhost:8080) and issue queries. View the query plan to see orchestration between the APIs. 

## Sample operations

```graphql
query($icao: String!) {
  airport(icao: $icao) {
    icao
    iataId
    name
    weather {
      temp
      wdir
      wspd
      precip
    }
    outboundFlights {
      alt
      callsign
      from {
        icao
      }
      to {
        icao
      }
    }
  }
}
```