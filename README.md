### README.md

# MediSport2

MediSport2 is an innovative app designed to help users identify and manage sports injuries through an intuitive user interface. This project leverages SwiftUI to provide an engaging and user-friendly experience.

## Features

- **Upper Body Injury Identification**: Helps users identify and get information about upper body injuries such as shoulder, chest, tricep, bicep, forearm, and wrist injuries.
- **Lower Body Injury Identification**: Helps users identify and get information about lower body injuries such as buttock, hamstring, quads, knees, inner thigh, calf, and ankle injuries.
- **Interactive UI**: Utilizes images and interactive elements to guide users through identifying the injured body part.
- **SwiftUI Implementation**: The entire UI is built using SwiftUI, making it modern and responsive.

## Current Progress

We have successfully completed the development and testing of the first two core features of the MediSport application, ensuring a solid foundation for further feature additions and enhancements.

### Completed Features:
1. **Symptom-Based Injury Diagnosis**:
   - Implemented a user-friendly and intuitive interface that guides users through the process of inputting their symptoms.
   - Developed a comprehensive symptom input system allowing users to specify their symptoms with ease.
   - Created and integrated a robust database consisting of various symptoms and their corresponding sports injuries.
   - Implemented real-time feedback mechanisms that offer users immediate insights into their potential injuries based on the symptoms provided.

2. **Provision of Relevant Medical Information**:
   - Compiled and incorporated a rich library of medical information related to various sports injuries, including descriptions, causes, symptoms, and recommended treatments.
   - Developed a system to deliver relevant medical information to users based on their preliminary diagnosis.
   - Ensured that all medical information is presented in an easy-to-understand format.
   - Established a framework for continuously updating the medical information database to keep the content current and reliable.

### Challenges Faced:
#### Integration of Medical Database:
- **Complex Data Structuring**: Structuring the medical database to ensure comprehensive coverage of symptoms and injuries while maintaining ease of access and quick retrieval.
- **Data Accuracy and Consistency**: Ensuring the accuracy and consistency of the medical data by validating information from reliable medical sources and updating the database continuously.
- **Seamless Integration**: Integrating the database into the app to allow for seamless interaction and real-time diagnosis.

#### Accuracy of Diagnosis:
- **Symptom Overlap**: Differentiating between injuries with overlapping symptoms.
- **User Input Variability**: Ensuring the accuracy of diagnosis depends on precise user input. Implemented user-friendly prompts to aid users in providing accurate symptom descriptions.
- **Continuous Improvement**: Established mechanisms for continuous feedback and refinement of the database to improve diagnostic accuracy over time.

## Screenshots

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 07 51](https://github.com/c-510/MediSport2-main/assets/166926793/9daaeb7b-2016-4bca-a98a-bceadb3fa30d)

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 08 10](https://github.com/c-510/MediSport2-main/assets/166926793/3d1ffd06-cdb6-435c-97ab-15236dd54845)

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 08 17](https://github.com/c-510/MediSport2-main/assets/166926793/f22371ae-7d36-4a5e-b7d4-7733d85aed6f)

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 08 21](https://github.com/c-510/MediSport2-main/assets/166926793/2f634885-0815-4010-bcda-392dca95207d)

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 08 24](https://github.com/c-510/MediSport2-main/assets/166926793/10823af5-a5fc-486f-b670-b99f3886068d)

![Simulator Screenshot - iPhone 15 Plus - 2024-06-03 at 04 08 27](https://github.com/c-510/MediSport2-main/assets/166926793/c27b2b16-8fd8-4909-a5e4-552b80b5b6c0)

## Getting Started

### Prerequisites

- **Xcode**: Ensure you have the latest version of Xcode installed.
- **iOS SDK**: Make sure you have the necessary iOS SDKs installed.

### Installation

1. **Clone the Repository**

   ```sh
   git clone https://github.com/yourusername/MediSport2.git
   cd MediSport2
   ```

2. **Open the Project in Xcode**

   ```sh
   open MediSport2.xcodeproj
   ```

3. **Install Dependencies**

   If you're using CocoaPods or Swift Package Manager, ensure all dependencies are installed.

4. **Build and Run**

   Select your target device or simulator and click the run button in Xcode.

## Usage

1. **Select Body Part**

   Open the app and select whether your injury is in the upper or lower body.

2. **Identify Specific Injury**

   Navigate through the interactive UI to identify the specific area of injury.

3. **Get Information**

   Receive detailed information and suggestions for managing your injury.

## Acknowledgements

- **SwiftUI**: For providing an amazing framework to build modern iOS applications.
- **Encyclopaedia Britannica, Inc.**: For the anatomical image used in the app.
