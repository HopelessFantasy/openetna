.class public Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 89
    const-string v2, "anonymous"

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    .line 91
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, parse:Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 113
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 114
    .local v1, split:I
    if-ltz v1, :cond_38

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    .line 116
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 121
    .end local v1           #split:I
    :cond_2e
    :goto_2e
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    .line 123
    :try_start_31
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_37
    .catch Ljava/net/URISyntaxException; {:try_start_31 .. :try_end_37} :catch_3b

    .line 127
    :goto_37
    return-void

    .line 118
    .restart local v1       #split:I
    :cond_38
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    goto :goto_2e

    .line 124
    .end local v1           #split:I
    :catch_3b
    move-exception v2

    goto :goto_37
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .registers 3
    .parameter "url"
    .parameter "proxy"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;)V

    .line 137
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    .line 138
    return-void
.end method

.method private cd()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xfa

    const/16 v6, 0x2f

    const/4 v5, 0x0

    const-string v9, "CWD "

    const-string v8, "\r\n"

    .line 144
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 146
    .local v1, idx:I
    if-lez v1, :cond_80

    .line 147
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, dir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v2

    .line 150
    .local v2, reply:I
    if-eq v2, v7, :cond_72

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_72

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_72

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v2

    .line 154
    :cond_72
    if-eq v2, v7, :cond_80

    .line 155
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0094"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v0           #dir:Ljava/lang/String;
    .end local v2           #reply:I
    :cond_80
    return-void
.end method

.method private connectInternal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 208
    .local v3, port:I
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getConnectTimeout()I

    move-result v1

    .line 209
    .local v1, connectTimeout:I
    if-gtz v3, :cond_e

    .line 210
    const/16 v3, 0x15

    .line 212
    :cond_e
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1c

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v4, v5, :cond_ad

    .line 213
    :cond_1c
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    .line 217
    :goto_23
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 218
    .local v0, addr:Ljava/net/InetSocketAddress;
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 219
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    .line 220
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    .line 221
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    .line 222
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->login()V

    .line 223
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->setType()V

    .line 224
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-nez v4, :cond_51

    .line 225
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->cd()V

    .line 229
    :cond_51
    :try_start_51
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 230
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    .line 232
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->port()V

    .line 233
    if-nez v1, :cond_68

    .line 235
    const/16 v1, 0xbb8

    .line 237
    :cond_68
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 239
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getFile()V

    .line 243
    :goto_7a
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    .line 244
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReadTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 245
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_90
    .catch Ljava/io/InterruptedIOException; {:try_start_51 .. :try_end_90} :catch_bc

    .line 249
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 251
    new-instance v4, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 257
    :cond_ac
    return-void

    .line 215
    .end local v0           #addr:Ljava/net/InetSocketAddress;
    :cond_ad
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    goto/16 :goto_23

    .line 241
    .restart local v0       #addr:Ljava/net/InetSocketAddress;
    :cond_b8
    :try_start_b8
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->sendFile()V
    :try_end_bb
    .catch Ljava/io/InterruptedIOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_7a

    .line 246
    :catch_bc
    move-exception v4

    move-object v2, v4

    .line 247
    .local v2, e:Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "K0095"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getFile()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "RETR "

    const-string v4, "\r\n"

    .line 274
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, file:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v1

    .line 277
    .local v1, reply:I
    const/16 v2, 0x226

    if-ne v1, v2, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_62

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_62

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v1

    .line 281
    :cond_62
    const/16 v2, 0x96

    if-eq v1, v2, :cond_76

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_76

    .line 282
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "K0096"

    invoke-static {v3, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_76
    return-void
.end method

.method private getReply()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "ISO8859_1"

    .line 348
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 349
    .local v0, code:[B
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 350
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859_1"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->replyCode:Ljava/lang/String;

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, multiline:Z
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_21

    .line 353
    const/4 v1, 0x1

    .line 355
    :cond_21
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readLine()Ljava/lang/String;

    .line 356
    if-eqz v1, :cond_2c

    .line 357
    :cond_26
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readMultiLine()Z

    move-result v2

    if-nez v2, :cond_26

    .line 360
    :cond_2c
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859_1"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private login()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14b

    const/16 v4, 0xe6

    const/16 v3, 0xdc

    const-string v7, "K0098"

    const-string v6, "\r\n"

    .line 365
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 366
    .local v0, reply:I
    if-ne v0, v3, :cond_74

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 372
    if-eq v0, v5, :cond_36

    if-ne v0, v4, :cond_86

    .line 376
    :cond_36
    if-ne v0, v5, :cond_98

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 379
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_98

    if-eq v0, v3, :cond_98

    if-eq v0, v4, :cond_98

    .line 380
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0098"

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0097"

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_86
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0098"

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_98
    return-void
.end method

.method private port()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataPort:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5a

    .line 392
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0099"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_5a
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_5
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, c:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_14

    .line 403
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 405
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readMultiLine()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_10

    move v1, v4

    .line 417
    :goto_f
    return v1

    .line 413
    :cond_10
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_26

    move v1, v3

    .line 415
    goto :goto_f

    :cond_26
    move v1, v4

    .line 417
    goto :goto_f
.end method

.method private sendFile()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    .line 429
    .local v0, reply:I
    const/16 v1, 0x96

    if-eq v0, v1, :cond_5a

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5a

    .line 430
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K009a"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_5a
    return-void
.end method

.method private setType()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "TYPE I\r\n"

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_19

    .line 486
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K009b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_19
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .registers 4
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 492
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v5, :cond_19

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .restart local v3       #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_10
    if-nez v3, :cond_20

    .line 180
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 181
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connectInternal()V

    .line 204
    :cond_18
    return-void

    .line 177
    :cond_19
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    invoke-static {v5}, Lorg/apache/harmony/luni/net/NetUtil;->getProxyList(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    goto :goto_10

    .line 183
    :cond_20
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v4

    .line 184
    .local v4, selector:Ljava/net/ProxySelector;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, connectOK:Z
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez v0, :cond_53

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Proxy;

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 189
    :try_start_39
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connectInternal()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3e

    .line 190
    const/4 v0, 0x1

    goto :goto_29

    .line 191
    :catch_3e
    move-exception v1

    .line 194
    .local v1, ioe:Ljava/io/IOException;
    if-eqz v4, :cond_29

    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eq v5, v6, :cond_29

    .line 195
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->uri:Ljava/net/URI;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_29

    .line 200
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_53
    if-nez v0, :cond_18

    .line 201
    new-instance v5, Ljava/io/IOException;

    const-string v6, "K0097"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 265
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 267
    const-string v1, "content/unknown"

    .line 269
    :goto_e
    return-object v1

    :cond_f
    move-object v1, v0

    goto :goto_e
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 302
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 304
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 342
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 344
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 320
    .local v0, port:I
    if-gtz v0, :cond_a

    .line 321
    const/16 v0, 0x15

    .line 323
    :cond_a
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setDoInput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 450
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_a

    .line 451
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 453
    :cond_a
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doInput:Z

    .line 454
    if-nez p1, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doOutput:Z

    .line 455
    return-void

    .line 454
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setDoOutput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 473
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-eqz v0, :cond_a

    .line 474
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 476
    :cond_a
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doOutput:Z

    .line 477
    if-nez p1, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;->doInput:Z

    .line 478
    return-void

    .line 477
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method
