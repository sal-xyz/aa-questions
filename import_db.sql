CREATE TABLE users
(
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);

CREATE TABLE questions
(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author_id INTEGER NOT NULL,

    FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows
(
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL

    FOREIGN KEY (user_id) REFERENCES users (id)
    FOREIGN KEY (question_id) REFERENCES questions (id)
);

CREATE TABLE replies
(
    id INTEGER PRIMARY KEY,
    body TEXT NOT NULL,
    subject_question_id INTEGER NOT NULL,
    parent_reply_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL

    FOREIGN KEY (subject_question_id) REFERENCES questions (id)
    FOREIGN KEY (parent_reply_id) REFERENCES replies (id)
    FOREIGN KEY (author_id) REFERENCES users (id)
);

CREATE TABLE question_likes
(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birth_year INTEGER
);