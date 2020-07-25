package com.mokhovav.blog.database;

import javax.persistence.*;

@Entity
@Table(name = "posts")
public class Post extends PostData {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Post() {
    }

    public Post(String post) {
        super(post);
    }

    public Long getId() {
        return id;
    }

    public int compareTo(Post o2) {
        return this == null ? Integer.MAX_VALUE : o2 == null ? Integer.MIN_VALUE : (int) (o2.getTime() - this.getTime());
    }
}
