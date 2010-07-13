.class public Lorg/apache/harmony/xnet/provider/jsse/PRF;
.super Ljava/lang/Object;
.source "PRF.java"


# static fields
.field private static logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected static md5:Ljava/security/MessageDigest;

.field private static md5_mac:Ljavax/crypto/Mac;

.field private static md5_mac_length:I

.field protected static sha:Ljava/security/MessageDigest;

.field private static sha_mac:Ljavax/crypto/Mac;

.field private static sha_mac_length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "prf"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized computePRF([B[B[B[B)V
    .registers 12
    .parameter "out"
    .parameter "secret"
    .parameter "str_byts"
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 114
    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v5

    :try_start_3
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_a

    .line 115
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    .line 132
    :cond_a
    if-eqz p1, :cond_f

    array-length v0, p1

    if-nez v0, :cond_10c

    .line 133
    :cond_f
    const/16 v0, 0x8

    new-array p1, v0, [B

    .line 134
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacMD5"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v0, keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 147
    .local v1, keySha1:Ljavax/crypto/spec/SecretKeySpec;
    :goto_21
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_cf

    .line 148
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secret["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v3, 0x10

    const-string v4, ""

    const-string v6, " "

    invoke-virtual {v2, v3, v4, v6, p1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 150
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v3, 0x10

    const-string v4, ""

    const-string v6, " "

    invoke-virtual {v2, v3, v4, v6, p2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 152
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seed["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v3, 0x10

    const-string v4, ""

    const-string v6, " "

    invoke-virtual {v2, v3, v4, v6, p3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 154
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "MD5 key:"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 155
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v3, 0x10

    const-string v4, ""

    const-string v6, " "

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 156
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SHA1 key:"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 157
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v3, 0x10

    const-string v4, ""

    const-string v6, " "

    invoke-virtual {v1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 160
    :cond_cf
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 161
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    .end local v0           #keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, pos:I
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 165
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 166
    .local v0, hash:[B
    :goto_e5
    array-length v2, p0

    if-ge v1, v2, :cond_132

    .line 167
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 168
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 169
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 170
    sget v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v2, v1

    array-length v3, p0

    if-ge v2, v3, :cond_126

    .line 171
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p0, v1}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 172
    sget v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v1, v2

    .line 179
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    goto :goto_e5

    .line 137
    .end local v0           #hash:[B
    .end local v1           #pos:I
    :cond_10c
    array-length v0, p1

    shr-int/lit8 v2, v0, 0x1

    .line 138
    .local v2, length:I
    array-length v0, p1

    and-int/lit8 v3, v0, 0x1

    .line 139
    .local v3, offset:I
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x0

    add-int v4, v2, v3

    const-string v6, "HmacMD5"

    invoke-direct {v0, p1, v1, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 141
    .local v0, keyMd5:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    add-int/2addr v3, v2

    const-string v4, "HmacSHA1"

    .end local v3           #offset:I
    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .local v1, keySha1:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_21

    .line 174
    .end local v2           #length:I
    .local v0, hash:[B
    .local v1, pos:I
    :cond_126
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    .end local v0           #hash:[B
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {v0, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_132
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_148

    .line 182
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "P_MD5:"

    .end local v1           #pos:I
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    const-string v2, ""

    const-string v3, " "

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 186
    :cond_148
    const/4 v1, 0x0

    .line 187
    .restart local v1       #pos:I
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 188
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .restart local v0       #hash:[B
    move v2, v1

    .line 190
    .end local v1           #pos:I
    .local v2, pos:I
    :goto_155
    array-length v1, p0

    if-ge v2, v1, :cond_190

    .line 191
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 192
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 193
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 194
    .local v4, sha1hash:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #pos:I
    .local v3, pos:I
    :goto_16a
    sget v2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    if-ge v1, v2, :cond_184

    const/4 v2, 0x1

    :goto_16f
    array-length v6, p0

    if-ge v3, v6, :cond_186

    const/4 v6, 0x1

    :goto_173
    and-int/2addr v2, v6

    if-eqz v2, :cond_188

    .line 195
    add-int/lit8 v2, v3, 0x1

    .end local v3           #pos:I
    .restart local v2       #pos:I
    aget-byte v6, p0, v3

    aget-byte v7, v4, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v3

    .line 194
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #pos:I
    .restart local v3       #pos:I
    goto :goto_16a

    :cond_184
    const/4 v2, 0x0

    goto :goto_16f

    :cond_186
    const/4 v6, 0x0

    goto :goto_173

    .line 198
    :cond_188
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    .end local v1           #i:I
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    move v2, v3

    .end local v3           #pos:I
    .restart local v2       #pos:I
    goto :goto_155

    .line 201
    .end local v4           #sha1hash:[B
    :cond_190
    sget-object p2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .end local p2
    if-eqz p2, :cond_1a6

    .line 202
    sget-object p2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string p3, "PRF:"

    .end local p3
    invoke-virtual {p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 203
    sget-object p2, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget p3, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    const-string v0, ""

    .end local v0           #hash:[B
    const-string v1, " "

    invoke-virtual {p2, p3, v0, v1, p0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_1a6
    .catchall {:try_start_3 .. :try_end_1a6} :catchall_1a8

    .line 205
    :cond_1a6
    monitor-exit v5

    return-void

    .line 114
    .end local v2           #pos:I
    :catchall_1a8
    move-exception p0

    .end local p0
    monitor-exit v5

    throw p0
.end method

.method static declared-synchronized computePRF_SSLv3([B[B[B)V
    .registers 11
    .parameter "out"
    .parameter "secret"
    .parameter "seed"

    .prologue
    .line 80
    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v5

    :try_start_3
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    if-nez v6, :cond_a

    .line 81
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    .line 83
    :cond_a
    const/4 v3, 0x0

    .line 84
    .local v3, pos:I
    const/4 v1, 0x1

    .local v1, iteration:I
    move v2, v1

    .line 86
    .end local v1           #iteration:I
    .local v2, iteration:I
    :goto_d
    array-length v6, p0

    if-ge v3, v6, :cond_56

    .line 87
    new-array v4, v2, [B

    .line 88
    .local v4, pref:[B
    add-int/lit8 v1, v2, 0x1

    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    add-int/lit8 v6, v2, 0x40

    int-to-byte v6, v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 89
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v6, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 93
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 95
    .local v0, digest:[B
    add-int/lit8 v6, v3, 0x10

    array-length v7, p0

    if-le v6, v7, :cond_4d

    .line 96
    const/4 v6, 0x0

    array-length v7, p0

    sub-int/2addr v7, v3

    invoke-static {v0, v6, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v3, p0

    :goto_4b
    move v2, v1

    .line 102
    .end local v1           #iteration:I
    .restart local v2       #iteration:I
    goto :goto_d

    .line 99
    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    :cond_4d
    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v0, v6, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_58

    .line 100
    add-int/lit8 v3, v3, 0x10

    goto :goto_4b

    .line 103
    .end local v0           #digest:[B
    .end local v1           #iteration:I
    .end local v4           #pref:[B
    .restart local v2       #iteration:I
    :cond_56
    monitor-exit v5

    return-void

    .line 80
    .end local v2           #iteration:I
    .end local v3           #pos:I
    :catchall_58
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method private static init()V
    .registers 5

    .prologue
    const/16 v4, 0x50

    .line 53
    :try_start_2
    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    .line 54
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_12} :catch_33

    .line 61
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    .line 62
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    .line 64
    :try_start_22
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    .line 65
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_42

    .line 71
    return-void

    .line 55
    :catch_33
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "There is no provider of HmacSHA1 or HmacMD5 algorithms installed in the system"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 66
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_42
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Could not initialize the Digest Algorithms."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method
