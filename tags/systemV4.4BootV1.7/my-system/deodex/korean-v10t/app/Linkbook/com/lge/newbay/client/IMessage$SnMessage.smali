.class public Lcom/lge/newbay/client/IMessage$SnMessage;
.super Lcom/lge/newbay/client/SnsAuthorizedInfo;
.source "IMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnMessage"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            ">;"
        }
    .end annotation
.end field

.field subject:Ljava/lang/String;

.field threadId:Ljava/lang/String;

.field unread:Z

.field updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>()V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .registers 11
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"
    .parameter "updated"
    .parameter "threadId"
    .parameter "subject"
    .parameter "body"
    .parameter "unread"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p10, recipients:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V

    .line 185
    iput-object p6, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->threadId:Ljava/lang/String;

    .line 186
    iput-object p7, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->subject:Ljava/lang/String;

    .line 187
    iput-object p8, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->body:Ljava/lang/String;

    .line 188
    iput-boolean p9, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->unread:Z

    .line 189
    iput-object p5, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->updated:Ljava/util/Date;

    .line 190
    iput-object p10, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    .line 191
    return-void
.end method


# virtual methods
.method public addRecipient(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V
    .registers 4
    .parameter "recipient"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    if-nez v0, :cond_c

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient(I)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
    .registers 3
    .parameter "i"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lge/newbay/client/IMessage$SnMessage;->getRecipientsCount()I

    move-result v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-object v0, p0

    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getRecipients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    return-object v0
.end method

.method public getRecipientsCount()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public isUnread()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->unread:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2
    .parameter "body"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->body:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setRecipients(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->recipients:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->subject:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .registers 2
    .parameter "threadId"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->threadId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUnread(Z)V
    .registers 2
    .parameter "unread"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->unread:Z

    .line 115
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/newbay/client/IMessage$SnMessage;->updated:Ljava/util/Date;

    .line 129
    return-void
.end method
