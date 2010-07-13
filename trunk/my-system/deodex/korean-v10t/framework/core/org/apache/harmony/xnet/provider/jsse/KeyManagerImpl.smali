.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .registers 8
    .parameter "keyStore"
    .parameter "pwd"

    .prologue
    .line 63
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 55
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    .line 68
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_d} :catch_36

    move-result-object v1

    .line 72
    .local v1, aliases:Ljava/util/Enumeration;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 73
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, alias:Ljava/lang/String;
    :try_start_1a
    const-class v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 77
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v4, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 79
    .local v3, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_32} :catch_33
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1a .. :try_end_32} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_32} :catch_3b

    goto :goto_e

    .line 81
    .end local v3           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_33
    move-exception v4

    move-object v2, v4

    .line 82
    .local v2, e:Ljava/security/KeyStoreException;
    goto :goto_e

    .line 69
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;
    .end local v2           #e:Ljava/security/KeyStoreException;
    :catch_36
    move-exception v2

    .line 90
    :cond_37
    return-void

    .line 83
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #aliases:Ljava/util/Enumeration;
    :catch_38
    move-exception v4

    move-object v2, v4

    .line 84
    .local v2, e:Ljava/security/UnrecoverableEntryException;
    goto :goto_e

    .line 85
    .end local v2           #e:Ljava/security/UnrecoverableEntryException;
    :catch_3b
    move-exception v4

    move-object v2, v4

    .line 86
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_e
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 16
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 208
    if-eqz p1, :cond_5

    array-length v12, p1

    if-nez v12, :cond_7

    .line 209
    :cond_5
    const/4 v12, 0x0

    .line 248
    :goto_6
    return-object v12

    .line 211
    :cond_7
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 212
    .local v6, found:Ljava/util/Vector;
    const/4 v4, 0x0

    .line 213
    .local v4, count:I
    iget-object v12, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, aliases:Ljava/util/Enumeration;
    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_79

    .line 214
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, alias:Ljava/lang/String;
    iget-object v12, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v12, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 216
    .local v5, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v5}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 217
    .local v3, certs:[Ljava/security/cert/Certificate;
    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, alg:Ljava/lang/String;
    const/4 v7, 0x0

    .end local v5           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .local v7, i:I
    :goto_37
    array-length v12, p1

    if-ge v7, v12, :cond_13

    .line 219
    aget-object v12, p1, v7

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 220
    if-eqz p2, :cond_73

    array-length v12, p2

    if-eqz v12, :cond_73

    .line 222
    const/4 v8, 0x0

    .local v8, ii:I
    :goto_48
    array-length v12, v3

    if-ge v8, v12, :cond_6a

    .line 223
    aget-object v12, v3, v8

    instance-of v12, v12, Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_70

    .line 224
    aget-object v5, v3, v8

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    .line 226
    .local v10, issuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v9, 0x0

    .local v9, iii:I
    :goto_5a
    array-length v12, p2

    if-ge v9, v12, :cond_70

    .line 227
    aget-object v12, p2, v9

    invoke-virtual {v10, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6d

    .line 228
    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 218
    .end local v8           #ii:I
    .end local v9           #iii:I
    .end local v10           #issuer:Ljavax/security/auth/x500/X500Principal;
    :cond_6a
    :goto_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 226
    .restart local v8       #ii:I
    .restart local v9       #iii:I
    .restart local v10       #issuer:Ljavax/security/auth/x500/X500Principal;
    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 222
    .end local v9           #iii:I
    .end local v10           #issuer:Ljavax/security/auth/x500/X500Principal;
    :cond_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 237
    .end local v8           #ii:I
    :cond_73
    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 243
    .end local v0           #alg:Ljava/lang/String;
    .end local v1           #alias:Ljava/lang/String;
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v7           #i:I
    :cond_79
    if-lez v4, :cond_82

    .line 244
    new-array v11, v4, [Ljava/lang/String;

    .line 245
    .local v11, result:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v12, v11

    .line 246
    goto :goto_6

    .line 248
    .end local v11           #result:[Ljava/lang/String;
    :cond_82
    const/4 v12, 0x0

    goto :goto_6
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, al:[Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 100
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 102
    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, al:[Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 184
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 186
    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    const/4 v2, 0x0

    .line 196
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, al:[Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 198
    aget-object v1, v0, v2

    .line 200
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    const/4 v2, 0x0

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, al:[Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 114
    aget-object v1, v0, v2

    .line 116
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "alias"

    .prologue
    const/4 v4, 0x0

    .line 126
    if-nez p1, :cond_5

    move-object v3, v4

    .line 141
    .end local p0
    :goto_4
    return-object v3

    .line 130
    .restart local p0
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 131
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 133
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_32

    .line 134
    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 135
    .local v2, xcerts:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 136
    aget-object p0, v0, v1

    check-cast p0, Ljava/security/cert/X509Certificate;

    aput-object p0, v2, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    move-object v3, v2

    .line 138
    goto :goto_4

    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v1           #i:I
    .end local v2           #xcerts:[Ljava/security/cert/X509Certificate;
    :cond_32
    move-object v3, v4

    .line 141
    goto :goto_4
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "alias"

    .prologue
    const/4 v1, 0x0

    .line 166
    if-nez p1, :cond_5

    move-object v0, v1

    .line 173
    .end local p0
    :goto_4
    return-object v0

    .line 170
    .restart local p0
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 171
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_4

    .restart local p0
    :cond_1a
    move-object v0, v1

    .line 173
    goto :goto_4
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
