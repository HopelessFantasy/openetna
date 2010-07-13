.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateMessage.java"


# instance fields
.field certs:[Ljava/security/cert/X509Certificate;

.field encoded_certs:[[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 15
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x32

    const/4 v8, 0x0

    const-string v11, "DECODE ERROR: incorrect CertificateMessage"

    .line 64
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    .line 66
    .local v5, l:I
    if-nez v5, :cond_2b

    .line 67
    if-eq p2, v10, :cond_16

    .line 68
    const-string v7, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v9, v11}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    .line 71
    :cond_16
    new-array v7, v8, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 72
    filled-new-array {v8, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 73
    iput v10, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 107
    :cond_2a
    :goto_2a
    return-void

    .line 78
    :cond_2b
    :try_start_2b
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_30
    .catch Ljava/security/cert/CertificateException; {:try_start_2b .. :try_end_30} :catch_4a

    move-result-object v1

    .line 83
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 84
    .local v0, certs_vector:Ljava/util/Vector;
    const/4 v6, 0x0

    .line 85
    .local v6, size:I
    const/4 v3, 0x0

    .line 86
    .local v3, enc_size:I
    :goto_38
    if-lez v5, :cond_5c

    .line 87
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v6

    .line 88
    add-int/lit8 v5, v5, -0x3

    .line 90
    :try_start_40
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/security/cert/CertificateException; {:try_start_40 .. :try_end_47} :catch_54

    .line 94
    :goto_47
    sub-int/2addr v5, v6

    .line 95
    add-int/2addr v3, v6

    goto :goto_38

    .line 79
    .end local v0           #certs_vector:Ljava/util/Vector;
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #enc_size:I
    .end local v6           #size:I
    :catch_4a
    move-exception v7

    move-object v2, v7

    .line 80
    .local v2, e:Ljava/security/cert/CertificateException;
    const/16 v7, 0x50

    const-string v8, "INTERNAL ERROR"

    invoke-virtual {p0, v7, v8, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 91
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #certs_vector:Ljava/util/Vector;
    .restart local v1       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v3       #enc_size:I
    .restart local v6       #size:I
    :catch_54
    move-exception v7

    move-object v2, v7

    .line 92
    .restart local v2       #e:Ljava/security/cert/CertificateException;
    const-string v7, "DECODE ERROR"

    invoke-virtual {p0, v9, v7, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    .line 97
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_5c
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 98
    const/4 v4, 0x0

    .local v4, i:I
    :goto_65
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    if-ge v4, v7, :cond_77

    .line 99
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v8, v4

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 101
    :cond_77
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 102
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    if-eq v7, p2, :cond_2a

    .line 103
    const-string v7, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v9, v11}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    goto :goto_2a
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;)V
    .registers 6
    .parameter "certs"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 115
    if-nez p1, :cond_1c

    .line 116
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 117
    filled-new-array {v3, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 118
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 137
    :cond_1b
    return-void

    .line 121
    :cond_1c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 122
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v2, :cond_42

    .line 123
    array-length v2, p1

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v2, p1

    if-ge v1, v2, :cond_42

    .line 126
    :try_start_2b
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_35
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2b .. :try_end_35} :catch_38

    .line 124
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 127
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v2, 0x50

    const-string v3, "INTERNAL ERROR"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 133
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_42
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 134
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 135
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->length:I

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 176
    const/16 v0, 0xb

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 7
    .parameter "out"

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, total_length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v3, :cond_2b

    .line 148
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    new-array v3, v3, [[B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 149
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    .line 151
    :try_start_12
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_1e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_1e} :catch_21

    .line 149
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 152
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 153
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    invoke-virtual {p0, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 158
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_2b
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x3

    .line 159
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_31
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_3f

    .line 160
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 162
    :cond_3f
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 163
    const/4 v1, 0x0

    :goto_44
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_5c

    .line 164
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 165
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 168
    :cond_5c
    return-void
.end method
