package org.example.shop.model.card;

import jakarta.persistence.*;
import lombok.*;
import org.example.shop.model.BaseEntity;
import org.example.shop.model.user.User;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDate;
import java.util.Base64;
import java.util.UUID;

@Entity(name = "hisobs")
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class Hisob extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;
    private Double balance;
}
