.class Ljavax/net/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 79
    sget-object v0, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 8
    .parameter "cn"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 230
    .local v0, cnLen:I
    const/4 v3, 0x7

    if-lt v0, v3, :cond_2a

    const/16 v3, 0x9

    if-gt v0, v3, :cond_2a

    .line 232
    sub-int v3, v0, v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2a

    .line 234
    const/4 v3, 0x2

    sub-int v4, v0, v6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, s:Ljava/lang/String;
    sget-object v3, Ljavax/net/ssl/DefaultHostnameVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 237
    .local v2, x:I
    if-gez v2, :cond_28

    move v3, v5

    .line 240
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #x:I
    :goto_27
    return v3

    .line 237
    .restart local v1       #s:Ljava/lang/String;
    .restart local v2       #x:I
    :cond_28
    const/4 v3, 0x0

    goto :goto_27

    .end local v1           #s:Ljava/lang/String;
    .end local v2           #x:I
    :cond_2a
    move v3, v5

    .line 240
    goto :goto_27
.end method

.method public static countDots(Ljava/lang/String;)I
    .registers 5
    .parameter "s"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    :cond_15
    return v0
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 8
    .parameter "cert"

    .prologue
    .line 244
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 267
    .local v0, cnList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, subjectPrincipal:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v2, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v2, st:Ljava/util/StringTokenizer;
    :cond_14
    :goto_14
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 270
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, tok:Ljava/lang/String;
    const-string v6, "CN="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 272
    .local v5, x:I
    if-ltz v5, :cond_14

    .line 273
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 276
    .end local v4           #tok:Ljava/lang/String;
    .end local v5           #x:I
    :cond_30
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 277
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 278
    .local v1, cns:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v6, v1

    .line 281
    .end local v1           #cns:[Ljava/lang/String;
    :goto_40
    return-object v6

    :cond_41
    const/4 v6, 0x0

    goto :goto_40
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 13
    .parameter "cert"

    .prologue
    .line 301
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 302
    .local v6, subjectAltList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 304
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_6
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_9
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_6 .. :try_end_9} :catch_36

    move-result-object v1

    .line 310
    :goto_a
    if-eqz v1, :cond_49

    .line 311
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    .local v0, aC:Ljava/util/List;,"Ljava/util/List<*>;"
    move-object v4, v0

    .line 313
    .local v4, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 315
    .local v8, type:I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    .line 316
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 317
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 306
    .end local v0           #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #s:Ljava/lang/String;
    .end local v8           #type:I
    .restart local p0
    :catch_36
    move-exception v2

    .line 307
    .local v2, cpe:Ljava/security/cert/CertificateParsingException;
    const-class v9, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "Error parsing certificate."

    invoke-virtual {v9, v10, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 321
    .end local v2           #cpe:Ljava/security/cert/CertificateParsingException;
    .end local p0
    :cond_49
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 322
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 323
    .local v7, subjectAlts:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v9, v7

    .line 326
    .end local v7           #subjectAlts:[Ljava/lang/String;
    :goto_59
    return-object v9

    :cond_5a
    const/4 v9, 0x0

    goto :goto_59
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 5
    .parameter "host"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, cns:[Ljava/lang/String;
    invoke-static {p2}, Ljavax/net/ssl/DefaultHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, subjectAlts:[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 9
    .parameter "host"
    .parameter "ssl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_a

    .line 89
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "host to verify is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_a
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 93
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 94
    .local v2, session:Ljavax/net/ssl/SSLSession;
    if-nez v2, :cond_27

    .line 98
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 99
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 118
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 119
    if-nez v2, :cond_27

    .line 122
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 126
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 130
    .end local v1           #in:Ljava/io/InputStream;
    :cond_27
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 131
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 132
    .local v3, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v3}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 133
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "cns"
    .parameter "subjectAlts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 22
    .parameter "host"
    .parameter "cns"
    .parameter "subjectAlts"
    .parameter "strictWithSubDomains"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 164
    .local v12, names:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    if-lez v14, :cond_18

    const/4 v14, 0x0

    aget-object v14, p2, v14

    if-eqz v14, :cond_18

    .line 165
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v12, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_18
    if-eqz p3, :cond_2a

    .line 168
    move-object/from16 v2, p3

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1e
    if-ge v7, v9, :cond_2a

    aget-object v13, v2, v7

    .line 169
    .local v13, subjectAlt:Ljava/lang/String;
    if-eqz v13, :cond_27

    .line 170
    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 175
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v13           #subjectAlt:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_52

    .line 176
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Certificate for <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, msg:Ljava/lang/String;
    new-instance v14, Ljavax/net/ssl/SSLException;

    invoke-direct {v14, v11}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 182
    .end local v11           #msg:Ljava/lang/String;
    :cond_52
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v3, buf:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, hostName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 188
    .local v10, match:Z
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cb

    .line 190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, cn:Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v14, " <"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const/16 v14, 0x3e

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_90

    .line 197
    const-string v14, " OR"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_90
    const-string v14, "*."

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f3

    const/16 v14, 0x2e

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    if-ltz v14, :cond_f3

    invoke-static {v4}, Ljavax/net/ssl/DefaultHostnameVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f3

    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIPV4Address(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f3

    const/4 v14, 0x1

    move v5, v14

    .line 208
    .local v5, doWildcard:Z
    :goto_ae
    if-eqz v5, :cond_f9

    .line 209
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 210
    if-eqz v10, :cond_c9

    if-eqz p4, :cond_c9

    .line 213
    invoke-static {v6}, Ljavax/net/ssl/DefaultHostnameVerifier;->countDots(Ljava/lang/String;)I

    move-result v14

    invoke-static {v4}, Ljavax/net/ssl/DefaultHostnameVerifier;->countDots(Ljava/lang/String;)I

    move-result v15

    if-ne v14, v15, :cond_f6

    const/4 v14, 0x1

    move v10, v14

    .line 218
    :cond_c9
    :goto_c9
    if-eqz v10, :cond_66

    .line 222
    .end local v4           #cn:Ljava/lang/String;
    .end local v5           #doWildcard:Z
    :cond_cb
    if-nez v10, :cond_fe

    .line 223
    new-instance v14, Ljavax/net/ssl/SSLException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hostname in certificate didn\'t match: <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> !="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 203
    .restart local v4       #cn:Ljava/lang/String;
    :cond_f3
    const/4 v14, 0x0

    move v5, v14

    goto :goto_ae

    .line 213
    .restart local v5       #doWildcard:Z
    :cond_f6
    const/4 v14, 0x0

    move v10, v14

    goto :goto_c9

    .line 216
    :cond_f9
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_c9

    .line 226
    .end local v4           #cn:Ljava/lang/String;
    .end local v5           #doWildcard:Z
    :cond_fe
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 8
    .parameter "host"
    .parameter "session"

    .prologue
    const/4 v4, 0x0

    .line 137
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 138
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v2, v0, v3

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 139
    .local v2, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    .line 140
    const/4 v3, 0x1

    .line 143
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #x509:Ljava/security/cert/X509Certificate;
    :goto_e
    return v3

    .line 142
    :catch_f
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljavax/net/ssl/SSLException;
    move v3, v4

    .line 143
    goto :goto_e
.end method
