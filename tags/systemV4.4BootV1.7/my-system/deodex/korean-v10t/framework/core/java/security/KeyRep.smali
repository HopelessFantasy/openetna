.class public Ljava/security/KeyRep;
.super Ljava/lang/Object;
.source "KeyRep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyRep$1;,
        Ljava/security/KeyRep$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4206b04c77655abdL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private encoded:[B

.field private final format:Ljava/lang/String;

.field private final type:Ljava/security/KeyRep$Type;


# direct methods
.method public constructor <init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 7
    .parameter "type"
    .parameter "algorithm"
    .parameter "format"
    .parameter "encoded"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    .line 78
    iput-object p2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Ljava/security/KeyRep;->encoded:[B

    .line 81
    iget-object v0, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    if-nez v0, :cond_1b

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.07"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1b
    iget-object v0, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.08"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2b
    iget-object v0, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.09"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3b
    iget-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    if-nez v0, :cond_4b

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.0A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_4b
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 170
    iget-object v1, p0, Ljava/security/KeyRep;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 171
    .local v0, new_encoded:[B
    iget-object v1, p0, Ljava/security/KeyRep;->encoded:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    .line 173
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    const-string v5, "security.0C"

    const-string v4, "security.0D"

    .line 118
    sget-object v2, Ljava/security/KeyRep$1;->$SwitchMap$java$security$KeyRep$Type:[I

    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    invoke-virtual {v3}, Ljava/security/KeyRep$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e2

    .line 163
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0E"

    iget-object v4, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :pswitch_1f
    const-string v2, "RAW"

    iget-object v3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 122
    :try_start_29
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Ljava/security/KeyRep;->encoded:[B

    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_32} :catch_33

    .line 150
    :goto_32
    return-object v2

    .line 123
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0B"

    invoke-static {v3, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_41
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0C"

    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :pswitch_51
    const-string v2, "X.509"

    iget-object v3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 133
    :try_start_5b
    iget-object v2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 134
    .local v1, kf:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v3, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_6b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_6b} :catch_6d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5b .. :try_end_6b} :catch_7b

    move-result-object v2

    goto :goto_32

    .line 135
    .end local v1           #kf:Ljava/security/KeyFactory;
    :catch_6d
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0D"

    invoke-static {v4, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_7b
    move-exception v2

    move-object v0, v2

    .line 140
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0D"

    invoke-static {v4, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    :cond_89
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0C"

    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :pswitch_99
    const-string v2, "PKCS#8"

    iget-object v3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 149
    :try_start_a3
    iget-object v2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 150
    .restart local v1       #kf:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    iget-object v3, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v2, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a3 .. :try_end_b3} :catch_b6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a3 .. :try_end_b3} :catch_c4

    move-result-object v2

    goto/16 :goto_32

    .line 151
    .end local v1           #kf:Ljava/security/KeyFactory;
    :catch_b6
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0D"

    invoke-static {v4, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_c4
    move-exception v2

    move-object v0, v2

    .line 156
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0D"

    invoke-static {v4, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    :cond_d2
    new-instance v2, Ljava/io/NotSerializableException;

    const-string v3, "security.0C"

    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_51
        :pswitch_99
    .end packed-switch
.end method
