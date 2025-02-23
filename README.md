# FireLine App

FireLine App is a wildfire impact and health monitoring application designed to protect agricultural workers from the adverse effects of wildfire smoke. The app focuses on symptom tracking, real-time air quality monitoring, and automated report generation, ensuring that users can document their health concerns and receive timely assistance.

## Features

- **Real-Time Symptom Tracking:** Log symptoms related to wildfire smoke exposure with timestamps and severity levels.
- **Air Quality Monitoring:** Receive continuous AQI updates from trusted data sources, with push notifications when air quality becomes unsafe.
- **Automated Health Reports:** Generate comprehensive reports of your symptom logs and exposure history for easy sharing with healthcare providers.
- **Data Privacy & User Controls:** Your personal data is securely stored and managed; control who sees your reports.
- **Multilingual & Offline Support:** An accessible interface available in multiple languages, with offline logging capabilities.

## Table of Contents
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Contributing](#contributing)
- [Visual Aids](#visual-aids)
- [API Implementation](#api-implementation)
- [End-to-End Testing](#end-to-end-testing)
- [Troubleshooting](#troubleshooting)
- [Notes](#notes)
- [License](#license)
- [Contact](#contact)

## Installation  

1. Clone the repository:  
   `git clone https://github.com/viviancreates/fire-line`  

2. Navigate to the project directory:  
   `cd fire-line`  

3. Install the required gems:  
   `bundle install`  

4. Set up the database:  
   `rails db:setup`  

5. Start the Rails server:  
   `rails server`  

6. Open your browser and navigate to:  
   `http://localhost:3000`  

## Configuration  

### Environment Variables  
Ensure the following environment variables are set up in a `.env` file or in your deployment environment:  
`API_KEY_NAME=<Your API Key Name>`  
`API_KEY_PRIVATE_KEY=<Your API Private Key>`  

### Database Configuration  
1. Verify and update `config/database.yml` with the correct database credentials if necessary.  
2. Run the following commands to set up the database:  
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed

## Usage

1. Start the Rails server:
`rails server`

2. Open your browser and navigate to http://localhost:3000
Follow the on-screen instructions to use the application

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Open a pull request

## Visual Aids
### ERD

## API Implementation

## End-to-End Testing

## Troubleshooting
### Common Issues
1. **Database Setup Issues:**
   Ensure your PostgreSQL service is running and credentials are correctly configured in `config/database.yml`.

2. **Missing API Keys:**
   Verify that `API_KEY_NAME` and `API_KEY_PRIVATE_KEY` are set in the environment.

3. **Server Not Starting:**
   Run `rails db:migrate` to ensure the database schema is up-to-date.

## Contact
Vivian Davila - [viviananddav@gmail.com](viviananddav@gmail.com)
<br>
Project Link: [GitHub Repository](https://github.com/viviancreates/fire-line)
