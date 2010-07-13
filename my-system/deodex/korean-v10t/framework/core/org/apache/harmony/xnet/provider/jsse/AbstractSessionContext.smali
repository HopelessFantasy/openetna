.class abstract Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    }
.end annotation


# static fields
.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field final parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field volatile timeout:I


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;II)V
    .registers 4
    .parameter "parameters"
    .parameter "maximumSize"
    .parameter "timeout"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 52
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 53
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    .line 54
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 185
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error converting session."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method


# virtual methods
.method public final getIds()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final getSessionCacheSize()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    return v0
.end method

.method abstract sessionIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end method

.method public final setSessionCacheSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    if-gez p1, :cond_a

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_a
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 93
    .local v0, oldMaximum:I
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 96
    if-ge p1, v0, :cond_13

    .line 97
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->trimToSize()V

    .line 99
    :cond_13
    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .registers 15
    .parameter "session"

    .prologue
    const/4 v12, 0x0

    .line 108
    instance-of v11, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v11, :cond_7

    move-object v11, v12

    .line 141
    :goto_6
    return-object v11

    .line 112
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v10, v0

    .line 114
    .local v10, sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    .local v5, daos:Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v6

    .line 121
    .local v6, data:[B
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 125
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 126
    .local v4, certs:[Ljavax/security/cert/X509Certificate;
    array-length v11, v4

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    move-object v1, v4

    .local v1, arr$:[Ljavax/security/cert/X509Certificate;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2f
    if-ge v8, v9, :cond_41

    aget-object v3, v1, v8

    .line 130
    .local v3, cert:Ljavax/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    .line 131
    array-length v11, v6

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 129
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 135
    .end local v3           #cert:Ljavax/security/cert/X509Certificate;
    :cond_41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_44} :catch_46
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_b .. :try_end_44} :catch_4d

    move-result-object v11

    goto :goto_6

    .line 136
    .end local v1           #arr$:[Ljavax/security/cert/X509Certificate;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #certs:[Ljavax/security/cert/X509Certificate;
    .end local v5           #daos:Ljava/io/DataOutputStream;
    .end local v6           #data:[B
    .end local v8           #i$:I
    .end local v9           #len$:I
    :catch_46
    move-exception v11

    move-object v7, v11

    .line 137
    .local v7, e:Ljava/io/IOException;
    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    move-object v11, v12

    .line 138
    goto :goto_6

    .line 139
    .end local v7           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v11

    move-object v7, v11

    .line 140
    .local v7, e:Ljavax/security/cert/CertificateEncodingException;
    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    move-object v11, v12

    .line 141
    goto :goto_6
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .registers 21
    .parameter "data"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 151
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 152
    .local v9, bais:Ljava/io/ByteArrayInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v12, dais:Ljava/io/DataInputStream;
    :try_start_d
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 155
    .local v16, type:I
    const/4 v2, 0x1

    move/from16 v0, v16

    move v1, v2

    if-eq v0, v1, :cond_37

    .line 156
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 157
    const/4 v2, 0x0

    .line 180
    .end local v16           #type:I
    :goto_36
    return-object v2

    .line 160
    .restart local v16       #type:I
    :cond_37
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 161
    .local v15, length:I
    new-array v3, v15, [B

    .line 162
    .local v3, sessionData:[B
    invoke-virtual {v12, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 164
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 165
    .local v11, count:I
    new-array v7, v11, [Ljavax/security/cert/X509Certificate;

    .line 166
    .local v7, certs:[Ljavax/security/cert/X509Certificate;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_47
    if-ge v14, v11, :cond_5b

    .line 167
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 168
    new-array v10, v15, [B

    .line 169
    .local v10, certData:[B
    invoke-virtual {v12, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 170
    invoke-static {v10}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v7, v14

    .line 166
    add-int/lit8 v14, v14, 0x1

    goto :goto_47

    .line 173
    .end local v10           #certData:[B
    :cond_5b
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v4, v0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>([BLorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;I[Ljavax/security/cert/X509Certificate;Ljavax/net/ssl/SSLSessionContext;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6b} :catch_6c
    .catch Ljavax/security/cert/CertificateException; {:try_start_d .. :try_end_6b} :catch_73

    goto :goto_36

    .line 175
    .end local v3           #sessionData:[B
    .end local v7           #certs:[Ljavax/security/cert/X509Certificate;
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v15           #length:I
    .end local v16           #type:I
    :catch_6c
    move-exception v2

    move-object v13, v2

    .line 176
    .local v13, e:Ljava/io/IOException;
    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 177
    const/4 v2, 0x0

    goto :goto_36

    .line 178
    .end local v13           #e:Ljava/io/IOException;
    :catch_73
    move-exception v2

    move-object v13, v2

    .line 179
    .local v13, e:Ljavax/security/cert/CertificateException;
    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 180
    const/4 v2, 0x0

    goto :goto_36
.end method

.method abstract trimToSize()V
.end method
