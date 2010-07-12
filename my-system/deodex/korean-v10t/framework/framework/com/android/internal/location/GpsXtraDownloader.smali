.class public Lcom/android/internal/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 11
    .parameter "context"
    .parameter "properties"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, count:I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, server1:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, server2:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, server3:Ljava/lang/String;
    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_1c
    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_20
    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_24
    if-nez v0, :cond_2e

    .line 66
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_2d
    return-void

    .line 68
    :cond_2e
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz v3, :cond_5a

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v3, v6, v0

    .line 71
    :goto_3b
    if-eqz v4, :cond_44

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v4, v6, v1

    move v1, v0

    .line 72
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_44
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v5, v6, v1

    .line 75
    :goto_4c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 76
    .local v2, random:Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_2d

    .end local v0           #count:I
    .end local v2           #random:Ljava/util/Random;
    .restart local v1       #count:I
    :cond_58
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_4c

    :cond_5a
    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_3b
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 9
    .parameter "url"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 109
    const-string v0, "GpsXtraDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading XTRA data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_19
    const-string v1, "Android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 114
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_32

    .line 117
    new-instance p0, Lorg/apache/http/HttpHost;

    .end local p0
    invoke-direct {p0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 118
    .local p0, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .end local p1
    invoke-static {p1, p0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 121
    .end local p0           #proxy:Lorg/apache/http/HttpHost;
    :cond_32
    const-string p0, "Accept"

    const-string p1, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string p0, "x-wap-profile"

    const-string p1, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 130
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 131
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .end local p2
    const/16 p3, 0xc8

    if-eq p2, p3, :cond_75

    .line 132
    .end local p3
    const-string p0, "GpsXtraDownloader"

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HTTP error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_19 .. :try_end_6c} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6c} :catch_b5

    .line 133
    const/4 p0, 0x0

    .line 163
    if-eqz v0, :cond_72

    .line 164
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_72
    move-object p1, p0

    move-object p0, v0

    .line 167
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_74
    return-object p1

    .line 136
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .restart local p1       #status:Lorg/apache/http/StatusLine;
    :cond_75
    :try_start_75
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_b5

    move-result-object p2

    .line 137
    .local p2, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 138
    .local p0, body:[B
    if-eqz p2, :cond_a1

    .line 140
    :try_start_7c
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_9c

    .line 141
    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p0, p1, [B

    .line 142
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_ae

    .line 144
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_96
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a9

    .line 147
    :try_start_99
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_e9

    .line 154
    .end local p1           #dis:Ljava/io/DataInputStream;
    :cond_9c
    :goto_9c
    if-eqz p2, :cond_a1

    .line 155
    :try_start_9e
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_b5

    .line 163
    :cond_a1
    if-eqz v0, :cond_a6

    .line 164
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_a6
    move-object p1, p0

    move-object p0, v0

    .line 159
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto :goto_74

    .line 146
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catchall_a9
    move-exception p3

    .line 147
    :try_start_aa
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_e0

    .line 146
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_ad
    :try_start_ad
    throw p3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    .line 154
    :catchall_ae
    move-exception p1

    if-eqz p2, :cond_b4

    .line 155
    :try_start_b1
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 154
    :cond_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b5} :catch_b5

    .line 160
    .end local p0           #body:[B
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    :catch_b5
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 161
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_b8
    const-string p2, "GpsXtraDownloader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_b8 .. :try_end_d0} :catchall_f2

    .line 163
    if-eqz p0, :cond_d5

    .line 164
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 167
    :cond_d5
    const/4 p1, 0x0

    goto :goto_74

    .line 163
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_d7
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_da
    if-eqz p0, :cond_df

    .line 164
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 163
    :cond_df
    throw p1

    .line 148
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p2       #entity:Lorg/apache/http/HttpEntity;
    :catch_e0
    move-exception p1

    .line 149
    .local p1, e:Ljava/io/IOException;
    :try_start_e1
    const-string v1, "GpsXtraDownloader"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ad

    .line 148
    .local p1, dis:Ljava/io/DataInputStream;
    :catch_e9
    move-exception p1

    .line 149
    .local p1, e:Ljava/io/IOException;
    const-string p3, "GpsXtraDownloader"

    const-string v1, "Unexpected IOException."

    invoke-static {p3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f1
    .catchall {:try_start_e1 .. :try_end_f1} :catchall_ae

    goto :goto_9c

    .line 163
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/io/IOException;
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :catchall_f2
    move-exception p1

    goto :goto_da
.end method


# virtual methods
.method downloadXtraData()[B
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 81
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 83
    .local v1, proxyPort:I
    if-eqz v0, :cond_1d

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1d

    const/4 v5, 0x1

    move v4, v5

    .line 84
    .local v4, useProxy:Z
    :goto_14
    const/4 v2, 0x0

    .line 85
    .local v2, result:[B
    iget v3, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 87
    .local v3, startIndex:I
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v5, :cond_1f

    .line 88
    const/4 v5, 0x0

    .line 104
    :goto_1c
    return-object v5

    .end local v2           #result:[B
    .end local v3           #startIndex:I
    .end local v4           #useProxy:Z
    :cond_1d
    move v4, v7

    .line 83
    goto :goto_14

    .line 92
    .restart local v2       #result:[B
    .restart local v3       #startIndex:I
    .restart local v4       #useProxy:Z
    :cond_1f
    if-nez v2, :cond_3e

    .line 93
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v5, v5, v6

    invoke-static {v5, v4, v0, v1}, Lcom/android/internal/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 96
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 97
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_3a

    .line 98
    iput v7, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    :cond_3a
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v5, v3, :cond_1f

    :cond_3e
    move-object v5, v2

    .line 104
    goto :goto_1c
.end method
