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
Backend runs at: http://localhost:8080

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

**"Port 8080 already in use"**
```bash
# Windows
netstat -ano | findstr :8080
taskkill /PID <pid> /F

# Mac/Linux
lsof -i :8080
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

## 📝 Resume Description
*"Developed a full-stack Alumni Networking Platform using Spring Boot and ReactJS enabling students and alumni to connect, share career opportunities (jobs/internships), participate in threaded discussions, request mentorship, and communicate via direct messaging, secured with JWT-based authentication and MySQL persistence."*
