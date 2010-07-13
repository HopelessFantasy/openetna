.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "java.util.logging.XMLFormatter"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "ALL"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, "java.util.logging.SocketHandler.host"

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, "java.util.logging.SocketHandler.port"

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private initSocket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "logging.D"

    .line 116
    if-eqz p1, :cond_c

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 118
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "logging.C"

    invoke-static {v3}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_18
    const/4 v1, 0x0

    .line 123
    .local v1, p:I
    :try_start_19
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1c} :catch_2b

    move-result v1

    .line 128
    if-gtz v1, :cond_38

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "logging.D"

    invoke-static {v4}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :catch_2b
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "logging.D"

    invoke-static {v4}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_38
    :try_start_38
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p1, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_50

    .line 142
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-super {p0, v2}, Ljava/util/logging/StreamHandler;->internalSetOutputStream(Ljava/io/OutputStream;)V

    .line 145
    return-void

    .line 135
    :catch_50
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "logging.E"

    invoke-static {v3}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 139
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 158
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_f

    .line 159
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 167
    :cond_f
    :goto_f
    return-void

    .line 162
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "logging.F"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 2
    .parameter "record"

    .prologue
    .line 177
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 178
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 179
    return-void
.end method
