# 📦 Simple Blog DBML Schema

A clean and minimal database schema for a basic blog system written in **DBML (Database Markup Language)**.

This project is designed for learning database design, prototyping, and easy conversion to SQL or ORM tools.

---

## 📌 Overview

This schema models a simple blog structure with:

- Users
- Posts
- One-to-many relationship between users and posts

Fully compatible with **dbdiagram.io**.

---

## 🧱 Database Structure

### 👤 Users Table

Stores information about system users.

- `id` → Primary key
- `username` → Username (max 50 characters)
- `role` → User role (admin, user, etc.)
- `age` → Must be greater than 0

---

### 📝 Posts Table

Stores blog posts created by users.

- `id` → Primary key
- `title` → Post title (max 50 characters)
- `body` → Post content
- `user_id` → Author reference (foreign key)
- `status` → Post status (draft, published, etc.)

---

## 🔗 Relationship

- One user can have multiple posts
- Each post belongs to one user
- posts.user_id > users.id

---

## 🚀 Usage

Use this schema with:

- dbdiagram.io
- SQL generators
- ORM tools (Prisma, Sequelize, TypeORM)

DBML Docs: https://dbml.dbdiagram.io/docs

---

## 🎯 Purpose

- Learn database design
- Build clean schema structure
- Prototype blog systems
- Convert DBML → SQL / ORM

 // =========================================
// 📦 Simple Blog Database Schema
// =========================================
// A minimal blog system using DBML format
// =========================================


// 👤 Users Table
Table users {
  id integer [primary key]

  username varchar(50)
  role varchar(50)

  age integer [check: `age > 0`]
}


// 📝 Posts Table
Table posts {
  id integer [primary key]

  title varchar(50)
  body text [note: 'Content of the post']

  user_id integer
  status varchar(50)
}


// 🔗 Relationship
// One user → many posts
Ref: posts.user_id > users.id

simple-blog-dbml-schema/
│
├── README.md
└── schema.dbml
