.class public Lcom/lge/sns/message/linkbook/MessageUpdateHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MessageUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;
    }
.end annotation


# static fields
.field private static final STR_TRUE:Ljava/lang/String; = "true"

.field private static final TAG_AUTHOR:Ljava/lang/String; = "author"

.field private static final TAG_BODY:Ljava/lang/String; = "body"

.field private static final TAG_DISPNAME:Ljava/lang/String; = "displayName"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "snsMessage"

.field private static final TAG_MESSAGE_ID:Ljava/lang/String; = "id"

.field private static final TAG_PUBLISHED:Ljava/lang/String; = "published"

.field private static final TAG_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final TAG_SUBJECT:Ljava/lang/String; = "subject"

.field private static final TAG_THREAD_ID:Ljava/lang/String; = "threadId"

.field private static final TAG_UNREAD:Ljava/lang/String; = "unread"

.field private static final TAG_UPDATED:Ljava/lang/String; = "updated"

.field private static final TAG_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field public author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

.field public body:Ljava/lang/String;

.field private hasAuthor:Z

.field private hasBody:Z

.field private hasDispName:Z

.field private hasPublished:Z

.field private hasRecipient:Z

.field private hasSubject:Z

.field private hasUnread:Z

.field private hasUpdated:Z

.field private hasUserName:Z

.field public messageId:Ljava/lang/String;

.field private person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

.field public published:J

.field public recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public unread:I

.field public updated:J


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 125
    new-instance v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;-><init>(Lcom/lge/sns/message/linkbook/MessageUpdateHandler;)V

    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    .line 127
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    .line 129
    iput-wide v3, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    .line 131
    iput-wide v3, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    .line 133
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->subject:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->messageId:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->threadId:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->unread:I

    .line 147
    iput-object v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    .line 149
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasAuthor:Z

    .line 151
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUserName:Z

    .line 153
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasDispName:Z

    .line 155
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasRecipient:Z

    .line 157
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasPublished:Z

    .line 159
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUpdated:Z

    .line 161
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasSubject:Z

    .line 163
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasBody:Z

    .line 165
    iput-boolean v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUnread:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 8
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUserName:Z

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->userName:Ljava/lang/String;

    .line 206
    :cond_c
    :goto_c
    return-void

    .line 177
    :cond_d
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasDispName:Z

    if-eqz v0, :cond_1a

    .line 178
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    goto :goto_c

    .line 179
    :cond_1a
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasAuthor:Z

    if-nez v0, :cond_c

    .line 181
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasRecipient:Z

    if-nez v0, :cond_c

    .line 183
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasPublished:Z

    if-eqz v0, :cond_41

    .line 184
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    .line 186
    iget-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    iget-wide v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 187
    iget-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    iput-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    goto :goto_c

    .line 189
    :cond_41
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUpdated:Z

    if-eqz v0, :cond_54

    .line 190
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    goto :goto_c

    .line 192
    :cond_54
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasSubject:Z

    if-eqz v0, :cond_5f

    .line 193
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->subject:Ljava/lang/String;

    goto :goto_c

    .line 195
    :cond_5f
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasBody:Z

    if-eqz v0, :cond_88

    .line 196
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    if-nez v0, :cond_6e

    .line 197
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    goto :goto_c

    .line 200
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    goto :goto_c

    .line 203
    :cond_88
    iget-boolean v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUnread:Z

    if-eqz v0, :cond_c

    .line 204
    const-string v0, "true"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/4 v0, 0x1

    :goto_99
    iput v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->unread:I

    goto/16 :goto_c

    :cond_9d
    const/4 v0, 0x0

    goto :goto_99
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "tagName"
    .parameter "qName"

    .prologue
    const/4 v4, 0x0

    .line 293
    const-string v0, "username"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 295
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUserName:Z

    .line 330
    :cond_b
    :goto_b
    return-void

    .line 297
    :cond_c
    const-string v0, "displayName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 299
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasDispName:Z

    goto :goto_b

    .line 301
    :cond_17
    const-string v0, "author"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 303
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasAuthor:Z

    .line 304
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->userName:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v1, v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    goto :goto_b

    .line 308
    :cond_3a
    const-string v0, "recipient"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 310
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasRecipient:Z

    .line 311
    iget-object v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 313
    :cond_4c
    const-string v0, "published"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 314
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasPublished:Z

    goto :goto_b

    .line 316
    :cond_57
    const-string v0, "updated"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 317
    iget-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    iget-wide v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_6b

    .line 318
    iget-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    iput-wide v0, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    .line 319
    :cond_6b
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUpdated:Z

    goto :goto_b

    .line 321
    :cond_6e
    const-string v0, "subject"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 322
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasSubject:Z

    goto :goto_b

    .line 324
    :cond_79
    const-string v0, "body"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 325
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasBody:Z

    goto :goto_b

    .line 327
    :cond_84
    const-string v0, "unread"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 328
    iput-boolean v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUnread:Z

    goto/16 :goto_b
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "uri"
    .parameter "tagName"
    .parameter "qName"
    .parameter "attr"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "id"

    .line 217
    const-string v1, "username"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 219
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUserName:Z

    .line 285
    :cond_10
    :goto_10
    return-void

    .line 221
    :cond_11
    const-string v1, "displayName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 223
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasDispName:Z

    goto :goto_10

    .line 225
    :cond_1c
    const-string v1, "author"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 227
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasAuthor:Z

    .line 228
    new-instance v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-direct {v1, p0}, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;-><init>(Lcom/lge/sns/message/linkbook/MessageUpdateHandler;)V

    iput-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    .line 229
    const/4 v0, 0x0

    .local v0, index:I
    :goto_2e
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 231
    const-string v1, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 233
    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    .line 229
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 237
    .end local v0           #index:I
    :cond_4b
    const-string v1, "snsMessage"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    .line 241
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_5b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 243
    const-string v1, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 245
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->messageId:Ljava/lang/String;

    .line 241
    :cond_73
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 247
    :cond_76
    const-string v1, "threadId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 249
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->threadId:Ljava/lang/String;

    goto :goto_73

    .line 254
    .end local v0           #index:I
    :cond_89
    const-string v1, "recipient"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 256
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasRecipient:Z

    .line 257
    new-instance v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-direct {v1, p0}, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;-><init>(Lcom/lge/sns/message/linkbook/MessageUpdateHandler;)V

    iput-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    .line 258
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_9b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 260
    const-string v1, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 262
    iget-object v1, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->person:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    .line 258
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 266
    .end local v0           #index:I
    :cond_b8
    const-string v1, "published"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 267
    iput-wide v5, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    .line 268
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasPublished:Z

    goto/16 :goto_10

    .line 270
    :cond_c6
    const-string v1, "updated"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 271
    iput-wide v5, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    .line 272
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUpdated:Z

    goto/16 :goto_10

    .line 274
    :cond_d4
    const-string v1, "subject"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 275
    iput-object v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->subject:Ljava/lang/String;

    .line 276
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasSubject:Z

    goto/16 :goto_10

    .line 278
    :cond_e2
    const-string v1, "body"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 279
    iput-object v4, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    .line 280
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasBody:Z

    goto/16 :goto_10

    .line 282
    :cond_f0
    const-string v1, "unread"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 283
    iput-boolean v2, p0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->hasUnread:Z

    goto/16 :goto_10
.end method
