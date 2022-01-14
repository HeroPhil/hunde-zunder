package com.karottenkameraden.petConnect.models.account;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import com.karottenkameraden.petConnect.models.profile.Profile;

@Entity
@Getter
@Setter
public class Account {

    @Id
    @GeneratedValue
    @NotNull
    private Long id;

    @NotNull
    private String username;

    private String email;

    private String password;

    // private List<Profile> profiles;

    public Account() {
        super();
    }

    public Account(@NotNull Long id, @NotNull String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Account(@NotNull String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    

}