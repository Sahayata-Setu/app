# Donation App



## Getting Started

-- Run flutter clean command  
-- Then run flutter pub get  
-- Create launch.json file inside .vscode directory  
-- Copy this configuration  

    {
    "version": "0.2.0",
    "configurations": [
    {
      "name": "Launch development",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_development.dart",
      "args": [
        "--flavor",
        "development",
        "--target",
        "lib/main_development.dart"
      ]
    },
    {
      "name": "Launch Staging",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_staging.dart",
      "args": [
        "--flavor",
        "development",
        "--target",
        "lib/main_staging.dart"
      ]
    },
    {
        "name": "Launch Production",
        "request": "launch",
        "type": "dart",
        "program": "lib/main_production.dart",
        "args": [
            "--flavor",
            "development",
            "--target",
            "lib/main_production.dart"
        ]
      }
        ]
}


