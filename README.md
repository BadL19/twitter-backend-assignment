# 🐦 Twitter-Like Backend Database Project

This project is a simple backend data model for a **Twitter-like application** built using **SQL (RDBMS)**.  
It demonstrates user roles, message publishing, and subscriptions between producers and subscribers.

## 📘 Features
- Two roles: **Producer** and **Subscriber**
- Producers can post messages
- Subscribers can subscribe to producers
- Each user can be both a producer and subscriber
- Messages are searchable by producer or content

## 🗂️ Database Structure
**Tables:**
- `Users` — stores user info and roles  
- `Messages` — stores producer messages  
- `Subscriptions` — maps which subscribers follow which producers  

Includes:
- `create-twitter-app.sql` → creates tables  
- `populate-twitter-app.sql` → inserts sample data  
- `query-twitter-app.sql` -> sample SQL queries for tasks 

## 🧠 Example Queries
- Get all users  
- Get all producers  
- Get subscribers following a specific producer  
- Get all messages for a given subscriber  

## ⚙️ How to Run
1. Open MySQL Workbench  
2. Run `create_twitter_app.sql`  
3. Run `populate_twitter_app.sql`  
4. Use queries from `query-twitter-app.sql`  

---

**Author:** Brandon Ladouceur  
**Date:** October 2025
