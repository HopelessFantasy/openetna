.class public Lcom/lge/sns/message/ui/SNMessageAction;
.super Ljava/lang/Object;
.source "SNMessageAction.java"


# static fields
.field public static final EXTRA_KEY_FRIENDID:Ljava/lang/String; = "friend_userid"

.field public static final EXTRA_KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"

.field public static final EXTRA_KEY_SENDER_NAME:Ljava/lang/String; = "sender_name"

.field public static final EXTRA_KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final EXTRA_KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final INTENT_MESSAGE_INBOX:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_INBOX"

.field public static final INTENT_MESSAGE_LIST:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_LIST"

.field public static final INTENT_MESSAGE_OUTBOX:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_OUTBOX"

.field public static final INTENT_MESSAGE_SEND:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_SEND"

.field public static final INTENT_MESSAGE_VIEW:Ljava/lang/String; = "com.lge.sns.message.intent.action.MESSAGE_VIEW"

.field public static final MESSAGELIST_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.messagelist"

.field public static final MESSAGESEND_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.send"

.field public static final MESSAGE_INBOX_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.inbox"

.field public static final MESSAGE_OUTBOX_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.outbox"

.field public static final THREADLIST_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.threadlist"

.field public static final TWITTERSEND_MIMETYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.snmessage.twitter.send"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
