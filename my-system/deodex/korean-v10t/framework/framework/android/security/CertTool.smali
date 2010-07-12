.class public Landroid/security/CertTool;
.super Ljava/lang/Object;
.source "CertTool.java"


# static fields
.field public static final ACTION_ADD_CREDENTIAL:Ljava/lang/String; = "android.security.ADD_CREDENTIAL"

.field private static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT"

.field private static final DISTINCT_NAME:Ljava/lang/String; = "Distinct Name:"

.field public static final INCORRECT_PKCS12_PASSPHRASE:I = -0x64

.field private static final ISSUER_NAME:Ljava/lang/String; = "Issuer Name:"

.field private static final KEYNAME_DELIMITER:Ljava/lang/String; = "_"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_ITEM:Ljava/lang/String; = "item"

.field public static final KEY_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final KEY_TYPE_NAME:Ljava/lang/String; = "typeName"

.field private static final TAG:Ljava/lang/String; = "CertTool"

.field public static final TITLE_CA_CERT:Ljava/lang/String; = "CA Certificate"

.field public static final TITLE_PKCS12_KEYSTORE:Ljava/lang/String; = "PKCS12 Keystore"

.field public static final TITLE_PRIVATE_KEY:Ljava/lang/String; = "Private Key"

.field public static final TITLE_USER_CERT:Ljava/lang/String; = "User Certificate"

.field private static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT"

.field private static final USER_KEY:Ljava/lang/String; = "USRKEY"

.field private static final sKeystore:Landroid/security/Keystore;

.field private static singleton:Landroid/security/CertTool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "certtool_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v0

    sput-object v0, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Landroid/security/CertTool;->singleton:Landroid/security/CertTool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addExtraIntentInfo(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "intent"
    .parameter "namespace"
    .parameter "data"

    .prologue
    .line 143
    const-string v0, "item1"

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 144
    const-string v0, "namespace1"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method private extractAndStoreKeysFromPkcs12(ILjava/lang/String;)I
    .registers 10
    .parameter "handle"
    .parameter "keyname"

    .prologue
    const-string v6, "CACERT"

    .line 148
    const/4 v0, 0x0

    .line 151
    .local v0, i:I
    invoke-direct {p0, p1}, Landroid/security/CertTool;->getPkcs12Certificate(I)Ljava/lang/String;

    move-result-object v2

    .local v2, pemData:Ljava/lang/String;
    if-eqz v2, :cond_15

    .line 152
    sget-object v4, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v5, "USRCERT"

    invoke-virtual {v4, v5, p2, v2}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, ret:I
    if-eqz v3, :cond_15

    move v4, v3

    .line 172
    .end local v3           #ret:I
    :goto_14
    return v4

    .line 156
    :cond_15
    invoke-direct {p0, p1}, Landroid/security/CertTool;->getPkcs12PrivateKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 157
    sget-object v4, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v5, "USRKEY"

    invoke-virtual {v4, v5, p2, v2}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #ret:I
    if-eqz v3, :cond_28

    move v4, v3

    .line 158
    goto :goto_14

    .end local v0           #i:I
    .local v1, i:I
    :cond_27
    move v0, v1

    .line 161
    .end local v1           #i:I
    .end local v3           #ret:I
    .restart local v0       #i:I
    :cond_28
    invoke-direct {p0, p1}, Landroid/security/CertTool;->popPkcs12CertificateStack(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 162
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    if-lez v0, :cond_50

    .line 163
    sget-object v4, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v5, "CACERT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v2}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #ret:I
    if-eqz v3, :cond_27

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v4, v3

    .line 164
    goto :goto_14

    .line 167
    .end local v0           #i:I
    .end local v3           #ret:I
    .restart local v1       #i:I
    :cond_50
    sget-object v4, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v5, "CACERT"

    invoke-virtual {v4, v6, p2, v2}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #ret:I
    if-eqz v3, :cond_27

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v4, v3

    .line 168
    goto :goto_14

    .line 172
    .end local v3           #ret:I
    :cond_5d
    const/4 v4, 0x0

    goto :goto_14
.end method

.method private native freePkcs12Handle(I)V
.end method

.method private native freeX509Certificate(I)V
.end method

.method private native generateCertificateRequest(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native generateX509Certificate([B)I
.end method

.method private native getCertificateDN(I)Ljava/lang/String;
.end method

.method public static final getInstance()Landroid/security/CertTool;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Landroid/security/CertTool;->singleton:Landroid/security/CertTool;

    if-nez v0, :cond_b

    .line 90
    new-instance v0, Landroid/security/CertTool;

    invoke-direct {v0}, Landroid/security/CertTool;-><init>()V

    sput-object v0, Landroid/security/CertTool;->singleton:Landroid/security/CertTool;

    .line 92
    :cond_b
    sget-object v0, Landroid/security/CertTool;->singleton:Landroid/security/CertTool;

    return-object v0
.end method

.method private native getIssuerDN(I)Ljava/lang/String;
.end method

.method private getKeyLength(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 120
    if-nez p1, :cond_5

    const/16 v0, 0x800

    .line 121
    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x400

    goto :goto_4
.end method

.method private native getPkcs12Certificate(I)Ljava/lang/String;
.end method

.method private native getPkcs12Handle([BLjava/lang/String;)I
.end method

.method private native getPkcs12PrivateKey(I)Ljava/lang/String;
.end method

.method private native getPrivateKeyPEM(I)Ljava/lang/String;
.end method

.method private native isCaCertificate(I)Z
.end method

.method private native isPkcs12Keystore([B)Z
.end method

.method private native popPkcs12CertificateStack(I)Ljava/lang/String;
.end method

.method private prepareIntent(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .parameter "title"
    .parameter "data"
    .parameter "namespace"
    .parameter "issuer"
    .parameter "distinctName"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.ADD_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "typeName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "item0"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 135
    const-string v1, "namespace0"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "description0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issuer Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "description1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distinct Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCertificate([BLandroid/content/Context;)V
    .registers 12
    .parameter "data"
    .parameter "context"

    .prologue
    const-string v0, "Unknown"

    const-string v0, "USRKEY"

    const-string v0, "CertTool"

    .line 190
    monitor-enter p0

    const/4 v7, 0x0

    .line 192
    .local v7, intent:Landroid/content/Intent;
    :try_start_8
    const-string v0, "CertTool"

    const-string v1, "addCertificate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, p1}, Landroid/security/CertTool;->isPkcs12Keystore([B)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 194
    const-string v1, "PKCS12 Keystore"

    const-string v3, "USRKEY"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/security/CertTool;->prepareIntent(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 212
    :cond_23
    :goto_23
    if-eqz v7, :cond_69

    .line 213
    invoke-virtual {p2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_50

    .line 217
    :goto_28
    monitor-exit p0

    return-void

    .line 196
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Landroid/security/CertTool;->generateX509Certificate([B)I

    move-result v6

    .local v6, handle:I
    if-eqz v6, :cond_23

    .line 197
    invoke-direct {p0, v6}, Landroid/security/CertTool;->getIssuerDN(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, issuer:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/security/CertTool;->getCertificateDN(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, distinctName:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/security/CertTool;->getPrivateKeyPEM(I)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, privateKeyPEM:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/security/CertTool;->isCaCertificate(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 201
    const-string v1, "CA Certificate"

    const-string v3, "CACERT"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/security/CertTool;->prepareIntent(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 210
    :cond_4c
    :goto_4c
    invoke-direct {p0, v6}, Landroid/security/CertTool;->freeX509Certificate(I)V
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_50

    goto :goto_23

    .line 190
    .end local v4           #issuer:Ljava/lang/String;
    .end local v5           #distinctName:Ljava/lang/String;
    .end local v6           #handle:I
    .end local v8           #privateKeyPEM:Ljava/lang/String;
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    .restart local v4       #issuer:Ljava/lang/String;
    .restart local v5       #distinctName:Ljava/lang/String;
    .restart local v6       #handle:I
    .restart local v8       #privateKeyPEM:Ljava/lang/String;
    :cond_53
    :try_start_53
    const-string v1, "User Certificate"

    const-string v3, "USRCERT"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/security/CertTool;->prepareIntent(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 206
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 207
    const-string v0, "USRKEY"

    invoke-direct {p0, v7, v0, v8}, Landroid/security/CertTool;->addExtraIntentInfo(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 215
    .end local v4           #issuer:Ljava/lang/String;
    .end local v5           #distinctName:Ljava/lang/String;
    .end local v6           #handle:I
    .end local v8           #privateKeyPEM:Ljava/lang/String;
    :cond_69
    const-string v0, "CertTool"

    const-string v1, "incorrect data for addCertificate()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_50

    goto :goto_28
.end method

.method public addPkcs12Keystore([BLjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "p12Data"
    .parameter "password"
    .parameter "keyname"

    .prologue
    .line 178
    const-string v2, "CertTool"

    const-string v3, "addPkcs12Keystore()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/security/CertTool;->getPkcs12Handle([BLjava/lang/String;)I

    move-result v0

    .local v0, handle:I
    if-nez v0, :cond_10

    .line 181
    const/16 v2, -0x64

    .line 185
    :goto_f
    return v2

    .line 183
    :cond_10
    invoke-direct {p0, v0, p3}, Landroid/security/CertTool;->extractAndStoreKeysFromPkcs12(ILjava/lang/String;)I

    move-result v1

    .line 184
    .local v1, ret:I
    invoke-direct {p0, v0}, Landroid/security/CertTool;->freePkcs12Handle(I)V

    move v2, v1

    .line 185
    goto :goto_f
.end method

.method public generateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "keyStrengthIndex"
    .parameter "challenge"
    .parameter "dirName"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/security/CertTool;->getKeyLength(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/security/CertTool;->generateCertificateRequest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCaCertificateKeys()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    sget-object v0, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v1, "CACERT"

    invoke-virtual {v0, v1}, Landroid/security/Keystore;->listKeys(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllUserCertificateKeys()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    sget-object v0, Landroid/security/CertTool;->sKeystore:Landroid/security/Keystore;

    const-string v1, "USRKEY"

    invoke-virtual {v0, v1}, Landroid/security/Keystore;->listKeys(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyStrenghs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "High Grade"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Medium Grade"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
