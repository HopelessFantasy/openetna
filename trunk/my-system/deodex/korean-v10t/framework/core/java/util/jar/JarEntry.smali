.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field private attributes:Ljava/util/jar/Attributes;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private isFactoryChecked:Z

.field parentJar:Ljava/util/jar/JarFile;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .registers 3
    .parameter "je"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 129
    iget-object v0, p1, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    .line 130
    iget-object v0, p1, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 131
    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 71
    return-void
.end method

.method private addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, asigners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x1

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, certPath:Ljava/security/cert/CertPath;
    iget-boolean v1, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    if-nez v1, :cond_10

    .line 205
    :try_start_6
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_19
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_e} :catch_15

    .line 209
    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    .line 212
    :cond_10
    :goto_10
    iget-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_1d

    .line 223
    :cond_14
    :goto_14
    return-void

    .line 206
    :catch_15
    move-exception v1

    .line 209
    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    goto :goto_10

    :catchall_19
    move-exception v1

    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    throw v1

    .line 216
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_22
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_22} :catch_2f

    move-result-object v0

    .line 220
    :goto_23
    if-eqz v0, :cond_14

    .line 221
    new-instance v1, Ljava/security/CodeSigner;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 217
    :catch_2f
    move-exception v1

    goto :goto_23
.end method

.method private getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;
    .registers 15
    .parameter "certs"

    .prologue
    const/4 v12, 0x0

    .line 158
    if-nez p1, :cond_5

    move-object v11, v12

    .line 196
    :goto_4
    return-object v11

    .line 162
    :cond_5
    const/4 v7, 0x0

    .line 163
    .local v7, prevIssuer:Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Ljava/util/ArrayList;

    array-length v11, p1

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, asigners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_14
    if-ge v4, v5, :cond_3d

    aget-object v3, v1, v4

    .line 167
    .local v3, element:Ljava/security/cert/Certificate;
    instance-of v11, v3, Ljava/security/cert/X509Certificate;

    if-nez v11, :cond_1f

    .line 166
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 171
    :cond_1f
    move-object v0, v3

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v10, v0

    .line 172
    .local v10, x509:Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_35

    .line 173
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 174
    .local v8, subj:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 177
    invoke-direct {p0, v2, v6}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 179
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 183
    .end local v8           #subj:Ljavax/security/auth/x500/X500Principal;
    :cond_35
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 184
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 186
    .end local v3           #element:Ljava/security/cert/Certificate;
    .end local v10           #x509:Ljava/security/cert/X509Certificate;
    :cond_3d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_46

    .line 187
    invoke-direct {p0, v2, v6}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 189
    :cond_46
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4e

    move-object v11, v12

    .line 191
    goto :goto_4

    .line 194
    :cond_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/security/CodeSigner;

    .line 195
    .local v9, tmp:[Ljava/security/CodeSigner;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v11, v9

    .line 196
    goto :goto_4
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    if-nez v1, :cond_8

    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_b

    .line 85
    :cond_8
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 91
    :goto_a
    return-object v1

    .line 87
    :cond_b
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 88
    .local v0, manifest:Ljava/util/jar/Manifest;
    if-nez v0, :cond_15

    .line 89
    const/4 v1, 0x0

    goto :goto_a

    .line 91
    :cond_15
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    goto :goto_a
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 112
    :goto_6
    return-object v1

    .line 108
    :cond_7
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iget-object v0, v1, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 109
    .local v0, jarVerifier:Ljava/util/jar/JarVerifier;
    if-nez v0, :cond_f

    move-object v1, v2

    .line 110
    goto :goto_6

    .line 112
    :cond_f
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_6
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_f

    .line 146
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/jar/JarEntry;->getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 148
    :cond_f
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_15

    .line 149
    const/4 v1, 0x0

    .line 154
    :goto_14
    return-object v1

    .line 152
    :cond_15
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/CodeSigner;

    .line 153
    .local v0, tmp:[Ljava/security/CodeSigner;
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 154
    goto :goto_14
.end method

.method setAttributes(Ljava/util/jar/Attributes;)V
    .registers 2
    .parameter "attrib"

    .prologue
    .line 116
    iput-object p1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    .line 117
    return-void
.end method
