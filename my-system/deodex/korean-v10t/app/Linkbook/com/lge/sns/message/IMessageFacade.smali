.class public interface abstract Lcom/lge/sns/message/IMessageFacade;
.super Ljava/lang/Object;
.source "IMessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;,
        Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.message.provider"

.field public static final MESSAGE_URI:Landroid/net/Uri; = null

.field public static final MessageListeners:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ:I = 0x0

.field public static final RECIPIENT_URI:Landroid/net/Uri; = null

.field public static final THREAD_URI:Landroid/net/Uri; = null

.field public static final TIME_URI:Landroid/net/Uri; = null

.field public static final TWITTER_INBOX_THREAD:Ljava/lang/String; = "Inbox"

.field public static final TWITTER_OUTBOX_THREAD:Ljava/lang/String; = "Outbox"

.field public static final ThreadListeners:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNREAD:I = 0x1

.field public static final UPDATED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->MessageListeners:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->ThreadListeners:Ljava/util/List;

    .line 82
    const-string v0, "content://com.lge.sns.message.provider/ThreadColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->THREAD_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://com.lge.sns.message.provider/MessageColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->MESSAGE_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "content://com.lge.sns.message.provider/RecipientColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->RECIPIENT_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "content://com.lge.sns.message.provider/TimeColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/IMessageFacade;->TIME_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V
.end method

.method public abstract addThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V
.end method

.method public abstract deleteAll(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteMessage(Lcom/lge/sns/message/Message;)V
.end method

.method public abstract deleteThread(Lcom/lge/sns/message/MessageThread;)V
.end method

.method public abstract getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/Message;
.end method

.method public abstract getMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessages(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getSentMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/MessageThread;
.end method

.method public abstract getThreadCount(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getThreads(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThreads(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatedMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public abstract getUpdatedThreadCount(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public abstract removeMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V
.end method

.method public abstract removeThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V
.end method

.method public abstract replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method

.method public abstract setUpdatedTime(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract updateMessage(Lcom/lge/sns/message/Message;)Landroid/net/Uri;
.end method

.method public abstract updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;,
            Lcom/lge/feed/parser/FeedParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract updateThread(Lcom/lge/sns/message/MessageThread;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method

.method public abstract updateThreads(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation
.end method
