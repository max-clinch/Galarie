# Sample Hardhat Project

This repository showcases a basic Hardhat use case, featuring a sample contract, a corresponding test, and a deployment script.

## Getting Started

Try running some of the following tasks using the provided commands in your terminal:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

## GALARIE - 2-way Marketplace Web Application

Artists often face limitations imposed by art dealers and galleries, restricting exposure, reach, and profits. Recognizing the need for a more direct connection between artists and art enthusiasts, my team and I created the **GALARIE** web application.

### Functionality and Features

1. **Database Management:**
   - Tracks entities such as Users, Listings, etc.
   - Enables user accounts with authorization and authentication (utilizing Devise package).

2. **Buy and Sell Art:**
   - Any user account can both buy and sell art.

3. **Listing Creation:**
   - Users can post a listing to the app for potential buyers to view or purchase.

4. **Art Exploration:**
   - Users can browse art and utilize a search bar to look for specific artists.

5. **Purchase Art:**
   - Users can purchase listed art.

6. **Payment Processing:**
   - Utilizes Cryptocurrency wallets for secure payment processing.

### Future Developments

While the current version includes essential features, future developments may introduce the following enhancements:

1. **Starred Listings:**
   - Users can bookmark listings on their account.

2. **Trending Sort:**
   - Listings with numerous views and stars appear at the top.

3. **Advanced Search:**
   - Search bar functionality for specific listing styles.

4. **Direct Messaging:**
   - Communication between buyers and sellers.

5. **Comprehensive Functional Tests:**
   - Improved and expanded testing.

6. **Data Structure Enhancement:**
   - Change purchase entities to duplicate listing entities, ensuring complete purchase history.

7. **Notifications:**
   - In-app and email notifications.

8. **Responsiveness and Mobile Design:**
   - Improved design for mobile users.

9. **Admin User Role:**
   - Authority for CRUD actions on objects not owned by them, with access to an Admin Dashboard.

10. **Admin Dashboard:**
    - View all users and manage their account details.

Feel free to explore, contribute, and provide feedback for the continuous improvement of this project.