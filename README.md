# 🎓 Alumni Networking Platform

A full-stack web application connecting students and alumni for career opportunities, mentorship, discussions, and networking.

---

## 🛠️ Tech Stack
- **Backend:** Java 17, Spring Boot 3.2, Spring Security, JWT
- **Frontend:** ReactJS 18, React Router, Axios
- **Database:** MySQL 8
- **Auth:** JWT (JSON Web Tokens)

---

## 📁 Project Structure
```
alumni-platform/
├── backend/          ← Spring Boot (Maven)
│   └── src/main/java/com/alumni/
│       ├── entity/       ← JPA Entities
│       ├── repository/   ← Spring Data Repositories
│       ├── service/      ← Business Logic
│       ├── controller/   ← REST Controllers
│       ├── security/     ← JWT + Spring Security
│       ├── config/       ← Security Config
│       └── dto/          ← Data Transfer Objects
└── frontend/         ← React App
    └── src/
        ├── pages/        ← Login, Register, Dashboard, etc.
        ├── components/   ← Sidebar, etc.
        ├── services/     ← Axios API calls
        └── context/      ← AuthContext
```
🖼️ Project Screenshots
🔑 Login Page
<img width="1107" height="627" alt="login" src="https://github.com/user-attachments/assets/1c4ce157-9461-440e-85e5-91ebd9b53ab4" />



📝 Registration Page
<img width="999" height="658" alt="register" src="https://github.com/user-attachments/assets/2201d84a-623f-4ab7-9f0f-51adc01fbbc8" />




🏠 Dashboard
<img width="1359" height="675" alt="dashboard" src="https://github.com/user-attachments/assets/f4dca2c5-966e-4256-bdc1-649dd6f4458d" />




👨‍🎓 Alumni Directory
<img width="1365" height="692" alt="alumni-directory" src="https://github.com/user-attachments/assets/389597a5-7b2b-4072-a19d-d178c9e00ac3" />




💼 Job Portal
<img width="1365" height="674" alt="jobs" src="https://github.com/user-attachments/assets/32662c92-212b-4d38-8815-2153e5529d75" />




🤝 Mentorship Requests
<img width="1364" height="684" alt="mentorship" src="https://github.com/user-attachments/assets/2a55ea26-6255-42ac-a50b-ae649ccffd72" />




💬 Messaging System
<img width="1357" height="681" alt="chat" src="https://github.com/user-attachments/assets/cdf02b6d-8674-4fc5-b118-4ffb426831dc" />




📝 Discussion Forum
<img width="1352" height="675" alt="forum" src="https://github.com/user-attachments/assets/94316162-84e5-4c64-9657-33ca4fdd43f2" />




📅 Events Module
<img width="1365" height="674" alt="events" src="https://github.com/user-attachments/assets/91ec9a95-08a6-48e4-b690-87bf1d3b5522" />




🎥 Project Demo
GIF Demo

---

## ⚙️ Prerequisites
Make sure these are installed:
- **Java 17+** → [Download](https://adoptium.net/)
- **Maven 3.8+** → [Download](https://maven.apache.org/download.cgi)
- **Node.js 18+** → [Download](https://nodejs.org/)
- **MySQL 8+** → [Download](https://dev.mysql.com/downloads/)
- **VS Code** with extensions: Java Extension Pack, Spring Boot Extension Pack

---

## 🗄️ Database Setup

1. Open MySQL Workbench or terminal
2. Run:
```sql
CREATE DATABASE alumni_db;
CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON alumni_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
```

> **Note:** If your MySQL password is different, update it in:
> `backend/src/main/resources/application.properties`
> Change: `spring.datasource.password=root` → your actual password

---

## 🚀 Running the Application

### Option 1: Using the provided scripts

**On Windows:**
```
Double-click: start-backend.bat
Double-click: start-frontend.bat
```

**On Mac/Linux:**
```bash
chmod +x start-backend.sh start-frontend.sh
./start-backend.sh
./start-frontend.sh
```

---

### Option 2: Manual (in VS Code Terminal)

**Step 1 — Start Backend:**
```bash
cd backend
mvn clean install -DskipTests
mvn spring-boot:run
```
Backend runs at: http://localhost:6003

**Step 2 — Start Frontend (new terminal):**
```bash
cd frontend
npm install
npm start
```
Frontend runs at: http://localhost:3000

---

## 🔑 Default Test Accounts
After starting, register accounts via the UI. Suggested test flow:

1. Register as **ALUMNI** (e.g. alumni@test.com)
2. Register as **STUDENT** (e.g. student@test.com)
3. Alumni posts jobs, creates events
4. Student searches alumni, sends mentorship requests
5. Both can message each other and participate in forum

---

## 🌐 API Endpoints

### Auth
| Method | URL | Description |
|--------|-----|-------------|
| POST | /api/auth/register | Register new user |
| POST | /api/auth/login | Login |

### Users
| Method | URL | Description |
|--------|-----|-------------|
| GET | /api/users/me | Get current user |
| PUT | /api/users/me | Update profile |
| GET | /api/users/alumni | List all alumni |
| GET | /api/users/alumni/search?keyword= | Search alumni |
| GET | /api/users/alumni/company?company= | Filter by company |

### Jobs
| Method | URL | Description |
|--------|-----|-------------|
| GET | /api/jobs | All active jobs |
| POST | /api/jobs | Post a job (Alumni only) |
| GET | /api/jobs/search?keyword= | Search jobs |
| DELETE | /api/jobs/{id} | Delete job (owner only) |

### Messages
| Method | URL | Description |
|--------|-----|-------------|
| POST | /api/messages/{receiverId} | Send message |
| GET | /api/messages/conversation/{userId} | Get conversation |
| GET | /api/messages/partners | All chat partners |

### Forum
| Method | URL | Description |
|--------|-----|-------------|
| GET | /api/forum/posts | All posts |
| POST | /api/forum/posts | Create post |
| POST | /api/forum/posts/{id}/comments | Add comment |
| POST | /api/forum/posts/{id}/like | Like post |

### Events
| Method | URL | Description |
|--------|-----|-------------|
| GET | /api/events/upcoming | Upcoming events |
| POST | /api/events | Create event (Alumni) |
| POST | /api/events/{id}/register | Register for event |

### Mentorship
| Method | URL | Description |
|--------|-----|-------------|
| POST | /api/mentorship/request/{mentorId} | Send request |
| GET | /api/mentorship/sent | My sent requests |
| GET | /api/mentorship/received | Requests received |
| PUT | /api/mentorship/{id}/status | Accept/Reject |

---

## 🐛 Troubleshooting

**"Port6003 already in use"**
```bash
# Windows
netstat -ano | findstr :6003
taskkill /PID <pid> /F

# Mac/Linux
lsof -i :6003
kill -9 <pid>
```

**MySQL connection error**
- Ensure MySQL service is running
- Check username/password in `application.properties`
- Make sure `alumni_db` database exists

**npm install fails**
```bash
npm cache clean --force
npm install
```

---

## 📝 Description
*"Developed a full-stack Alumni Networking Platform using Spring Boot and ReactJS enabling students and alumni to connect, share career opportunities (jobs/internships), participate in threaded discussions, request mentorship, and communicate via direct messaging, secured with JWT-based authentication and MySQL persistence."*
