.class public Lorg/apache/harmony/security/fortress/DefaultPolicyParser;
.super Ljava/lang/Object;
.source "DefaultPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
    }
.end annotation


# instance fields
.field private final scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/DefaultPolicyScanner;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 99
    return-void
.end method


# virtual methods
.method protected getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;
    .registers 6
    .parameter "ks"
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 435
    if-nez p1, :cond_e

    .line 436
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "security.147"

    invoke-static {v2, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_e
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 441
    .local v0, x509:Ljava/security/cert/Certificate;
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1d

    .line 442
    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #x509:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 444
    .restart local v0       #x509:Ljava/security/cert/Certificate;
    :cond_1d
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.148"

    invoke-static {v2, p2, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;
    .registers 12
    .parameter
    .parameter "base"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            "Z)",
            "Ljava/security/KeyStore;"
        }
    .end annotation

    .prologue
    .local p1, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    const/4 v6, 0x0

    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_60

    .line 469
    :try_start_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    .line 471
    .local v2, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    if-eqz p4, :cond_24

    .line 472
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-static {v5, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 473
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v5, :cond_24

    .line 474
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v5, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 477
    :cond_24
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_36

    .line 478
    :cond_30
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 480
    :cond_36
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 481
    .local v3, ks:Ljava/security/KeyStore;
    new-instance v4, Ljava/net/URL;

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-direct {v4, p2, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 482
    .local v4, location:Ljava/net/URL;
    new-instance v5, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v5, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_5c

    .line 485
    .local v1, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    :try_start_4f
    invoke-virtual {v3, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    .line 488
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v5, v3

    .line 496
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v4           #location:Ljava/net/URL;
    :goto_56
    return-object v5

    .line 488
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .restart local v3       #ks:Ljava/security/KeyStore;
    .restart local v4       #location:Ljava/net/URL;
    :catchall_57
    move-exception v5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5c

    .line 492
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v4           #location:Ljava/net/URL;
    :catch_5c
    move-exception v5

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_60
    move-object v5, v6

    .line 496
    goto :goto_56
.end method

.method public parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;
    .registers 14
    .parameter "location"
    .parameter "system"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lorg/apache/harmony/security/fortress/PolicyUtils;->canExpandProperties()Z

    move-result v7

    .line 121
    .local v7, resolve:Z
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v9, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v10, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 129
    .local v6, r:Ljava/io/Reader;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v1, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    :try_start_25
    iget-object v9, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-virtual {v9, v6, v1, v3}, Lorg/apache/harmony/security/DefaultPolicyScanner;->scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_56

    .line 136
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 140
    invoke-virtual {p0, v3, p1, p2, v7}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;

    move-result-object v4

    .line 142
    .local v4, ks:Ljava/security/KeyStore;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 143
    .local v8, result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    .line 147
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :try_start_46
    invoke-virtual {p0, v0, v4, p2, v7}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;

    move-result-object v5

    .line 148
    .local v5, pe:Lorg/apache/harmony/security/PolicyEntry;
    invoke-virtual {v5}, Lorg/apache/harmony/security/PolicyEntry;->isVoid()Z

    move-result v9

    if-nez v9, :cond_3a

    .line 149
    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_54

    goto :goto_3a

    .line 152
    .end local v5           #pe:Lorg/apache/harmony/security/PolicyEntry;
    :catch_54
    move-exception v9

    goto :goto_3a

    .line 136
    .end local v0           #ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .end local v4           #ks:Ljava/security/KeyStore;
    .end local v8           #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_56
    move-exception v9

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    throw v9

    .line 157
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .restart local v4       #ks:Ljava/security/KeyStore;
    .restart local v8       #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_5b
    return-object v8
.end method

.method protected resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;
    .registers 21
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v10, 0x0

    .line 197
    .local v10, codebase:Ljava/net/URL;
    const/4 v15, 0x0

    .line 198
    .local v15, signers:[Ljava/security/cert/Certificate;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v14, principals:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Principal;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v13, permissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Permission;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_5d

    .line 201
    new-instance v10, Ljava/net/URL;

    .end local v10           #codebase:Ljava/net/URL;
    if-eqz p4, :cond_c1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-direct {v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v10       #codebase:Ljava/net/URL;
    const-string v3, "file"

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 205
    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v9, codeFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 207
    new-instance v10, Ljava/net/URL;

    .end local v10           #codebase:Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    .end local v9           #codeFile:Ljava/io/File;
    .restart local v10       #codebase:Ljava/net/URL;
    :cond_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_85

    .line 213
    if-eqz p4, :cond_77

    .line 214
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    .line 216
    :cond_77
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v15

    .line 218
    :cond_85
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    move-object v3, v0

    if-eqz v3, :cond_d5

    .line 219
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :goto_95
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 220
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    .line 222
    .local v4, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    if-eqz p4, :cond_ae

    .line 223
    iget-object v3, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 225
    :cond_ae
    iget-object v3, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    if-nez v3, :cond_c8

    .line 226
    iget-object v3, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 201
    .end local v4           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .end local v10           #codebase:Ljava/net/URL;
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_c1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_23

    .line 228
    .restart local v4       #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .restart local v10       #codebase:Ljava/net/URL;
    .restart local v12       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_c8
    new-instance v3, Lorg/apache/harmony/security/UnresolvedPrincipal;

    iget-object v5, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .end local v4           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/UnresolvedPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 232
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_d5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    move-object v3, v0

    if-eqz v3, :cond_105

    .line 233
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :goto_e5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105

    .line 234
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    .local v4, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    .line 237
    :try_start_fb
    invoke-virtual/range {v3 .. v8}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_102} :catch_103

    goto :goto_e5

    .line 240
    :catch_103
    move-exception v3

    goto :goto_e5

    .line 245
    .end local v4           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :cond_105
    new-instance v3, Lorg/apache/harmony/security/PolicyEntry;

    new-instance v4, Ljava/security/CodeSource;

    invoke-direct {v4, v10, v15}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-direct {v3, v4, v14, v13}, Lorg/apache/harmony/security/PolicyEntry;-><init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v3
.end method

.method protected resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;
    .registers 12
    .parameter "pe"
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 273
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    new-instance v3, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    invoke-direct {v3, p0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V

    invoke-virtual {v3, p2, p3}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->configure(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;)Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 276
    :cond_15
    if-eqz p5, :cond_3b

    .line 277
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 278
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 280
    :cond_23
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 281
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 283
    :cond_2f
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 284
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 287
    :cond_3b
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-nez v2, :cond_5a

    const/4 v2, 0x0

    move-object v1, v2

    .line 290
    .local v1, signers:[Ljava/security/cert/Certificate;
    :goto_41
    :try_start_41
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 291
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 292
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_58} :catch_62

    move-result-object v2

    .line 298
    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_59
    return-object v2

    .line 287
    .end local v1           #signers:[Ljava/security/cert/Certificate;
    :cond_5a
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-virtual {p0, p3, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    move-object v1, v2

    goto :goto_41

    .line 296
    .restart local v1       #signers:[Ljava/security/cert/Certificate;
    :catch_62
    move-exception v2

    .line 298
    :cond_63
    new-instance v2, Ljava/security/UnresolvedPermission;

    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    iget-object v5, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/security/UnresolvedPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    goto :goto_59
.end method

.method protected resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 7
    .parameter "ks"
    .parameter "signers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    if-nez p1, :cond_e

    .line 408
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "security.146"

    invoke-static {v3, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 413
    .local v0, certs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v1, snt:Ljava/util/StringTokenizer;
    :goto_1a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 416
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 418
    :cond_30
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method
