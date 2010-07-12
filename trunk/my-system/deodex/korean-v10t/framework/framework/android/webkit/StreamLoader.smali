.class abstract Landroid/webkit/StreamLoader;
.super Landroid/os/Handler;
.source "StreamLoader.java"


# static fields
.field private static final MSG_DATA:I = 0x66

.field private static final MSG_END:I = 0x67

.field private static final MSG_HEADERS:I = 0x65

.field private static final MSG_STATUS:I = 0x64

.field public static final NO_STORE:Ljava/lang/String; = "no-store"


# instance fields
.field protected mContentLength:J

.field private mData:[B

.field protected mDataStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/webkit/LoadListener;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;)V
    .registers 2
    .parameter "loadlistener"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    .line 69
    return-void
.end method

.method private closeStreamAndSendEndData()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 190
    :try_start_4
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_f

    .line 195
    :cond_9
    :goto_9
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->endData()V

    .line 196
    return-void

    .line 191
    :catch_f
    move-exception v0

    goto :goto_9
.end method

.method private sendData()Z
    .registers 6

    .prologue
    .line 169
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v2, :cond_24

    .line 171
    :try_start_4
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/webkit/StreamLoader;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 172
    .local v0, amount:I
    if-lez v0, :cond_24

    .line 173
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/StreamLoader;->mData:[B

    invoke-virtual {v2, v3, v0}, Landroid/webkit/LoadListener;->data([BI)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_17

    .line 174
    const/4 v2, 0x0

    .line 181
    .end local v0           #amount:I
    :goto_16
    return v2

    .line 176
    :catch_17
    move-exception v2

    move-object v1, v2

    .line 177
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    const/16 v3, -0xd

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 181
    .end local v1           #ex:Ljava/io/IOException;
    :cond_24
    const/4 v2, 0x1

    goto :goto_16
.end method

.method private sendHeaders()V
    .registers 6

    .prologue
    .line 152
    new-instance v0, Landroid/net/http/Headers;

    invoke-direct {v0}, Landroid/net/http/Headers;-><init>()V

    .line 153
    .local v0, headers:Landroid/net/http/Headers;
    iget-wide v1, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_12

    .line 154
    iget-wide v1, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    invoke-virtual {v0, v1, v2}, Landroid/net/http/Headers;->setContentLength(J)V

    .line 156
    :cond_12
    const-string v1, "no-store"

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->setCacheControl(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->buildHeaders(Landroid/net/http/Headers;)V

    .line 158
    iget-object v1, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->headers(Landroid/net/http/Headers;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected abstract buildHeaders(Landroid/net/http/Headers;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0x66

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    :cond_a
    :goto_a
    return-void

    .line 121
    :pswitch_b
    invoke-virtual {p0}, Landroid/webkit/StreamLoader;->setupStreamAndSendStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mData:[B

    .line 125
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 129
    :pswitch_21
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendHeaders()V

    .line 130
    invoke-virtual {p0, v1}, Landroid/webkit/StreamLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 133
    :pswitch_2c
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendData()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 134
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 136
    :cond_3c
    invoke-virtual {p0, v1}, Landroid/webkit/StreamLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 140
    :pswitch_44
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->closeStreamAndSendEndData()V

    goto :goto_a

    .line 119
    :pswitch_data_48
    .packed-switch 0x64
        :pswitch_b
        :pswitch_21
        :pswitch_2c
        :pswitch_44
    .end packed-switch
.end method

.method public load()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-nez v0, :cond_12

    .line 97
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->sendMessage(Landroid/os/Message;)Z

    .line 110
    :cond_11
    :goto_11
    return-void

    .line 100
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/StreamLoader;->setupStreamAndSendStatus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mData:[B

    .line 104
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendHeaders()V

    .line 105
    :cond_21
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendData()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->closeStreamAndSendEndData()V

    .line 107
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    goto :goto_11
.end method

.method protected abstract setupStreamAndSendStatus()Z
.end method
