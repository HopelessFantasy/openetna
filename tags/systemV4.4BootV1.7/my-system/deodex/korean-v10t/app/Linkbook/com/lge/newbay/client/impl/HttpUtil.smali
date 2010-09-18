.class public Lcom/lge/newbay/client/impl/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field static final BUFFER_SIZE:I = 0x2000

.field static final CONNECTION_TIMEOUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpBytes(Ljava/lang/String;)[B
    .registers 9
    .parameter "uriString"

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, content:[B
    invoke-static {p0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 37
    :try_start_7
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 39
    .local v1, conn:Ljava/net/URLConnection;
    const/16 v7, 0x7530

    invoke-virtual {v1, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 41
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_3d

    move-result-object v3

    .line 42
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_3e

    .line 44
    const/16 v7, 0x2000

    :try_start_20
    new-array v0, v7, [B

    .line 46
    .local v0, buffer:[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_38

    .line 48
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    :goto_27
    :try_start_27
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, l:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3f

    .line 49
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_33

    goto :goto_27

    .line 53
    .end local v4           #l:I
    :catchall_33
    move-exception v7

    :try_start_34
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v7
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .line 56
    .end local v0           #buffer:[B
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    :catchall_38
    move-exception v7

    :try_start_39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 59
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #url:Ljava/net/URL;
    :catch_3d
    move-exception v7

    .line 63
    :cond_3e
    :goto_3e
    return-object v2

    .line 51
    .restart local v0       #buffer:[B
    .restart local v1       #conn:Ljava/net/URLConnection;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #l:I
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #url:Ljava/net/URL;
    :cond_3f
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_33

    move-result-object v2

    .line 53
    :try_start_43
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_38

    .line 56
    :try_start_46
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_3d

    goto :goto_3e
.end method

.method public static getHttpObject(Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;
    .registers 7
    .parameter "uriString"
    .parameter "decoder"

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, obj:Ljava/lang/Object;
    invoke-static {p0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 75
    :try_start_7
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 77
    .local v0, conn:Ljava/net/URLConnection;
    const/16 v4, 0x7530

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 78
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 79
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_2c

    move-result-object v1

    .line 80
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_25

    .line 82
    :try_start_1e
    invoke-interface {p1, v1}, Lcom/lge/newbay/client/IMedia$FileDecoder;->decodeFromStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    move-result-object v2

    .line 84
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .end local v2           #obj:Ljava/lang/Object;
    :cond_25
    move-object v4, v2

    .line 91
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #url:Ljava/net/URL;
    :goto_26
    return-object v4

    .line 84
    .restart local v0       #conn:Ljava/net/URLConnection;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #obj:Ljava/lang/Object;
    .restart local v3       #url:Ljava/net/URL;
    :catchall_27
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2c

    .line 87
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #url:Ljava/net/URL;
    :catch_2c
    move-exception v4

    move-object v4, v2

    goto :goto_26

    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2f
    move-object v4, v2

    goto :goto_26
.end method
