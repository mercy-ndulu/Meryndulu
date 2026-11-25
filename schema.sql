PRAGMA foreign_keys = ON;
BEGIN;

CREATE TABLE profile (
    profile_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    programme TEXT NOT NULL,
    year_of_study INTEGER NOT NULL CHECK (year_of_study > 0),
    academic_year INTEGER NOT NULL,
    home_county TEXT NOT NULL,
    dream_job TEXT NOT NULL,
    fun_fact TEXT NOT NULL,
    bio TEXT NOT NULL,
    public_email TEXT NOT NULL,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE skill (
    skill_id INTEGER PRIMARY KEY,
    profile_id INTEGER NOT NULL,
    skill_name TEXT NOT NULL,
    UNIQUE (profile_id, skill_name),
    FOREIGN KEY (profile_id) REFERENCES profile(profile_id)
);

CREATE TABLE hobby (
    hobby_id INTEGER PRIMARY KEY,
    profile_id INTEGER NOT NULL,
    hobby_name TEXT NOT NULL,
    description TEXT NOT NULL,
    UNIQUE (profile_id, hobby_name),
    FOREIGN KEY (profile_id) REFERENCES profile(profile_id)
);

CREATE TABLE movie (
    movie_id INTEGER PRIMARY KEY,
    profile_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    release_year INTEGER NOT NULL CHECK (release_year >= 1888),
    my_rank INTEGER NOT NULL CHECK (my_rank > 0),
    reason TEXT NOT NULL,
    UNIQUE (profile_id, my_rank),
    FOREIGN KEY (profile_id) REFERENCES profile(profile_id)
);

CREATE TABLE enquiry (
    enquiry_id INTEGER PRIMARY KEY,
    profile_id INTEGER NOT NULL,
    sender_name TEXT NOT NULL CHECK (length(trim(sender_name)) BETWEEN 1 AND 120),
    sender_email TEXT NOT NULL CHECK (length(trim(sender_email)) BETWEEN 1 AND 254),
    message TEXT NOT NULL CHECK (length(trim(message)) BETWEEN 1 AND 2000),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (profile_id) REFERENCES profile(profile_id)
);

CREATE INDEX enquiry_profile_idx ON enquiry(profile_id);
COMMIT;
