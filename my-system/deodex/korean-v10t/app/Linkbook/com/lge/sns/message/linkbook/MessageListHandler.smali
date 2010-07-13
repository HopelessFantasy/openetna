.class Lcom/lge/sns/message/linkbook/MessageListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MessageListHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageListHandler"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_ID:Ljava/lang/String; = "id"


# instance fields
.field private hasUri:Z

.field private messageManager:Lcom/lge/sns/message/linkbook/MsgMngr;

.field private snsId:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/sns/message/linkbook/MsgMngr;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "messageManager"
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->uri:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->snsId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->userId:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->hasUri:Z

    .line 72
    iput-object p1, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->messageManager:Lcom/lge/sns/message/linkbook/MsgMngr;

    .line 73
    iput-object p2, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->snsId:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->userId:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->hasUri:Z

    if-eqz v0, :cond_e

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->hasUri:Z

    .line 117
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/linkbook/MessageListHandler;->setUri(Ljava/lang/String;)V

    .line 119
    :cond_e
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 94
    const-string v1, "entry"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 96
    monitor-enter p0

    .line 100
    :try_start_9
    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->messageManager:Lcom/lge/sns/message/linkbook/MsgMngr;

    iget-object v2, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->snsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateMessageByUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_14

    .line 105
    :try_start_12
    monitor-exit p0

    .line 107
    :cond_13
    :goto_13
    return-void

    .line 101
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MessageListHandler"

    const-string v2, "updateMessageByUri() - Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    monitor-exit p0

    goto :goto_13

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->uri:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 84
    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageListHandler;->hasUri:Z

    .line 88
    :cond_b
    return-void
.end method
