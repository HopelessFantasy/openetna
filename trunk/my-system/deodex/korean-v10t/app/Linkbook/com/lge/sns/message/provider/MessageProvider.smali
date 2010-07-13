.class public Lcom/lge/sns/message/provider/MessageProvider;
.super Landroid/content/ContentProvider;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "SNS"

.field private static final CLASS_TAG:Ljava/lang/String; = "[MessageProvider] "

.field private static final QUERY_MESSAGE_COUNT:Ljava/lang/String; = "select count(*) from MessageItems"

.field private static final QUERY_MESSAGE_MAX_UPDATE:Ljava/lang/String; = "select max(updated) from MessageItems"

.field private static final QUERY_MESSAGE_UPDATED_COUNT:Ljava/lang/String; = "select count(*) from MessageItems"

.field private static final QUERY_RECIPIENT_COUNT:Ljava/lang/String; = "select count(*) from MessageRecipient"

.field private static final QUERY_THREAD_COUNT:Ljava/lang/String; = "select count(*) from MessageThreads"

.field private static final QUERY_THREAD_MAX_UPDATE:Ljava/lang/String; = "select max(updated) from MessageThreads"

.field private static final QUERY_THREAD_UPDATED_COUNT:Ljava/lang/String; = "select count(*) from MessageThreads"

.field private static final SNMESSAGE_MESSAGE_TABLE_NAME:Ljava/lang/String; = "MessageItems"

.field private static final SNMESSAGE_RECIPIENT_TABLE_NAME:Ljava/lang/String; = "MessageRecipient"

.field private static final SNMESSAGE_THREAD_TABLE_NAME:Ljava/lang/String; = "MessageThreads"

.field private static final SNMESSAGE_TIME_TABLE_NAME:Ljava/lang/String; = "MessageUpdatedTime"

.field private static mMessageProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecipientProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mThreadProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-string v7, "thread_id"

    const-string v6, "user_id"

    const-string v5, "sns_id"

    const-string v4, "_id"

    const-string v3, "com.lge.sns.message.provider"

    .line 69
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 70
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "ThreadColumns"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "ThreadColumns/#"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "ThreadColumns/count"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "ThreadColumns/max_updated"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "ThreadColumns/updated_count"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "MessageColumns"

    const/16 v2, 0x100

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "MessageColumns/#"

    const/16 v2, 0x101

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "MessageColumns/count"

    const/16 v2, 0x102

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "MessageColumns/max_updated"

    const/16 v2, 0x103

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "MessageColumns/updated_count"

    const/16 v2, 0x104

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "RecipientColumns"

    const/16 v2, 0x200

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "RecipientColumns/#"

    const/16 v2, 0x201

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "RecipientColumns/count"

    const/16 v2, 0x202

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "TimeColumns"

    const/16 v2, 0x300

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.message.provider"

    const-string v1, "TimeColumns/#"

    const/16 v2, 0x301

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    .line 90
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v1, "thread_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "author_name"

    const-string v2, "author_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "summary"

    const-string v2, "summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mThreadProjectionMap:Ljava/util/HashMap;

    const-string v1, "unread"

    const-string v2, "unread"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    .line 103
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v1, "thread_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "message_id"

    const-string v2, "message_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "author_id"

    const-string v2, "author_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "author_name"

    const-string v2, "author_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "subject"

    const-string v2, "subject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "body"

    const-string v2, "body"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mMessageProjectionMap:Ljava/util/HashMap;

    const-string v1, "unread"

    const-string v2, "unread"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v1, "thread_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "message_id"

    const-string v2, "message_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "recipient_id"

    const-string v2, "recipient_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "recipient_name"

    const-string v2, "recipient_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mRecipientProjectionMap:Ljava/util/HashMap;

    const-string v1, "recipient_display_name"

    const-string v2, "recipient_display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mTimeProjectionMap:Ljava/util/HashMap;

    .line 127
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mTimeProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mTimeProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mTimeProjectionMap:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mTimeProjectionMap:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 271
    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 380
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 381
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 382
    .local v0, count:I
    const-string v2, "MessageItems"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 383
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 384
    return v0
.end method

.method private deleteRecipient(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 330
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 331
    .local v0, count:I
    const-string v2, "MessageRecipient"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 333
    return v0
.end method

.method private deleteThread(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 354
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 355
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 356
    .local v0, count:I
    const-string v2, "MessageThreads"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 357
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 358
    return v0
.end method

.method private deleteTime(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 318
    .local v0, count:I
    const-string v2, "MessageUpdatedTime"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 320
    return v0
.end method

.method private insertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v8, "subject"

    const-string v7, "sns_id"

    const-string v6, "published"

    const-string v5, "body"

    const-string v4, ""

    .line 1020
    const-string v3, "sns_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1021
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1025
    :cond_1a
    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1026
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1030
    :cond_2a
    const-string v3, "thread_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1031
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "thread_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1035
    :cond_3a
    const-string v3, "message_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1036
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "message_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1040
    :cond_4a
    const-string v3, "author_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1041
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "author_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1047
    :cond_5a
    const-string v3, "author_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 1048
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "author_name should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1052
    :cond_6a
    const-string v3, "subject"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 1053
    const-string v3, "subject"

    const-string v3, ""

    invoke-virtual {p2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_79
    const-string v3, "body"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 1056
    const-string v3, "body"

    const-string v3, ""

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_88
    const-string v3, "updated"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1059
    const-string v3, "updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1062
    :cond_9d
    const-string v3, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b2

    .line 1063
    const-string v3, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    :cond_b2
    const-string v3, "unread"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1067
    const-string v3, "unread"

    const-string v4, "1"

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_c1
    iget-object v3, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1073
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "MessageItems"

    const-string v4, "sns_id"

    invoke-virtual {v0, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1076
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_e6

    .line 1077
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1078
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1080
    :cond_e6
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertRecipient(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v5, "sns_id"

    const-string v4, "recipient_display_name"

    .line 1090
    const-string v3, "sns_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1091
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    :cond_14
    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1096
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1100
    :cond_24
    const-string v3, "thread_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "thread_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1105
    :cond_34
    const-string v3, "message_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1106
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "message_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    :cond_44
    const-string v3, "recipient_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1111
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "recipient_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1117
    :cond_54
    const-string v3, "recipient_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "recipient_name should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1122
    :cond_64
    const-string v3, "recipient_display_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 1123
    const-string v3, "recipient_display_name"

    const-string v3, ""

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_73
    iget-object v3, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1128
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "MessageRecipient"

    const-string v4, "sns_id"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1131
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_98

    .line 1132
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1133
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1135
    :cond_98
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertThread(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v8, "title"

    const-string v5, "summary"

    const-string v7, "sns_id"

    const-string v6, "published"

    const-string v4, ""

    .line 1154
    const-string v3, "sns_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1157
    :cond_1a
    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1160
    :cond_2a
    const-string v3, "thread_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 1161
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "thread_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1163
    :cond_3a
    const-string v3, "author_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "author_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1168
    :cond_4a
    const-string v3, "author_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1169
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "author_name should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1171
    :cond_5a
    const-string v3, "title"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 1172
    const-string v3, "title"

    const-string v3, ""

    invoke-virtual {p2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_69
    const-string v3, "summary"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 1175
    const-string v3, "summary"

    const-string v3, ""

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_78
    const-string v3, "updated"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 1178
    const-string v3, "updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1180
    :cond_8d
    const-string v3, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1181
    const-string v3, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1183
    :cond_a2
    const-string v3, "unread"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 1184
    const-string v3, "unread"

    const-string v4, "1"

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_b1
    iget-object v3, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1190
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "MessageThreads"

    const-string v4, "sns_id"

    invoke-virtual {v0, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1193
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_d6

    .line 1194
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1195
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1197
    :cond_d6
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertTime(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v6, "updated"

    const-string v5, "sns_id"

    .line 473
    const-string v3, "sns_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 474
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 478
    :cond_14
    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 479
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 483
    :cond_24
    const-string v3, "updated"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 484
    const-string v3, "updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    :cond_39
    iget-object v3, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 491
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "MessageUpdatedTime"

    const-string v4, "sns_id"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 494
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_5e

    .line 495
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 496
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 498
    :cond_5e
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private queryMessage(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 815
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 817
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MessageItems"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 820
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 821
    const-string v7, "updated"

    .line 827
    .local v7, orderBy:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 828
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 831
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    .line 834
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 837
    :cond_2e
    return-object v8

    .line 823
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2f
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_13
.end method

.method private queryMessageCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 751
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 757
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from MessageItems"

    .line 758
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryMessageMaxUpdated(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 703
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 704
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select max(updated) from MessageItems"

    .line 705
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryMessageUpdatedCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 588
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 589
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from MessageItems"

    .line 590
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryRecipient(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 660
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 662
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MessageRecipient"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 665
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 666
    const-string v7, "_id"

    .line 672
    .local v7, orderBy:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 673
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 676
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    .line 679
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 681
    :cond_2e
    return-object v8

    .line 668
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2f
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_13
.end method

.method private queryRecipientCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 646
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 647
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from MessageRecipient"

    .line 648
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryThread(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 865
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 867
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MessageThreads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 870
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 871
    const-string v7, "updated DESC"

    .line 877
    .local v7, orderBy:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 878
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 881
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    .line 884
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 887
    :cond_2e
    return-object v8

    .line 873
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2f
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_13
.end method

.method private queryThreadCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 782
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 783
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from MessageThreads"

    .line 784
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 787
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryThreadMaxUpdated(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 730
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 731
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select max(updated) from MessageThreads"

    .line 732
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    :cond_2b
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryThreadUpdatedCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 603
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from MessageThreads"

    .line 604
    .local v1, sql:Ljava/lang/String;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private queryTime(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 616
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 618
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MessageUpdatedTime"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 621
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 622
    const-string v7, "_id"

    .line 628
    .local v7, orderBy:Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 629
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 632
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    .line 635
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 637
    :cond_2e
    return-object v8

    .line 624
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2f
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_13
.end method

.method private updateMessage(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 967
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 968
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "MessageItems"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 970
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 971
    return v1
.end method

.method private updateRecipient(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 952
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 953
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "MessageRecipient"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 955
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 957
    return v1
.end method

.method private updateThread(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 997
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 998
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "MessageThreads"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1000
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1001
    return v1
.end method

.method private updateTime(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 938
    iget-object v2, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 939
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "MessageUpdatedTime"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 941
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 943
    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 292
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :sswitch_22
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/message/provider/MessageProvider;->deleteMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 304
    :goto_26
    return v0

    .line 297
    :sswitch_27
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/message/provider/MessageProvider;->deleteThread(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 300
    :sswitch_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/message/provider/MessageProvider;->deleteRecipient(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 304
    :sswitch_31
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/message/provider/MessageProvider;->deleteTime(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 292
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_27
        0x100 -> :sswitch_22
        0x200 -> :sswitch_2c
        0x300 -> :sswitch_31
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 401
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :sswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.lge.sns.message.message"

    .line 424
    :goto_24
    return-object v0

    .line 406
    :sswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.lge.sns.message.message"

    goto :goto_24

    .line 409
    :sswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.lge.sns.message.thread"

    goto :goto_24

    .line 412
    :sswitch_2b
    const-string v0, "vnd.android.cursor.item/vnd.lge.sns.message.thread"

    goto :goto_24

    .line 415
    :sswitch_2e
    const-string v0, "vnd.android.cursor.dir/vnd.lge.sns.message.recipient"

    goto :goto_24

    .line 418
    :sswitch_31
    const-string v0, "vnd.android.cursor.item/vnd.lge.sns.message.recipient"

    goto :goto_24

    .line 421
    :sswitch_34
    const-string v0, "vnd.android.cursor.dir/vnd.lge.sns.message.time"

    goto :goto_24

    .line 424
    :sswitch_37
    const-string v0, "vnd.android.cursor.item/vnd.lge.sns.message.time"

    goto :goto_24

    .line 401
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_28
        0x1 -> :sswitch_2b
        0x100 -> :sswitch_22
        0x101 -> :sswitch_25
        0x200 -> :sswitch_2e
        0x201 -> :sswitch_31
        0x300 -> :sswitch_34
        0x301 -> :sswitch_37
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 448
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :sswitch_22
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/provider/MessageProvider;->insertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 459
    :goto_26
    return-object v0

    .line 453
    :sswitch_27
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/provider/MessageProvider;->insertThread(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_26

    .line 456
    :sswitch_2c
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/provider/MessageProvider;->insertRecipient(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_26

    .line 459
    :sswitch_31
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/message/provider/MessageProvider;->insertTime(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_26

    .line 448
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_27
        0x100 -> :sswitch_22
        0x200 -> :sswitch_2c
        0x300 -> :sswitch_31
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 512
    new-instance v0, Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {p0}, Lcom/lge/sns/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    .line 513
    iget-object v0, p0, Lcom/lge/sns/message/provider/MessageProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 542
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :sswitch_22
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/message/provider/MessageProvider;->queryMessage(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 574
    :goto_26
    return-object v0

    .line 547
    :sswitch_27
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/message/provider/MessageProvider;->queryThread(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 550
    :sswitch_2c
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/message/provider/MessageProvider;->queryRecipient(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 553
    :sswitch_31
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/message/provider/MessageProvider;->queryTime(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 556
    :sswitch_36
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryMessageCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 559
    :sswitch_3b
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryThreadCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 562
    :sswitch_40
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryRecipientCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 565
    :sswitch_45
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryMessageMaxUpdated(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 568
    :sswitch_4a
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryThreadMaxUpdated(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 571
    :sswitch_4f
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryMessageUpdatedCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 574
    :sswitch_54
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->queryThreadUpdatedCount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_26

    .line 542
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_27
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_54
        0x100 -> :sswitch_22
        0x102 -> :sswitch_36
        0x103 -> :sswitch_45
        0x104 -> :sswitch_4f
        0x200 -> :sswitch_2c
        0x202 -> :sswitch_40
        0x300 -> :sswitch_31
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 914
    sget-object v0, Lcom/lge/sns/message/provider/MessageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :sswitch_22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->updateMessage(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 925
    :goto_26
    return v0

    .line 919
    :sswitch_27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->updateThread(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 922
    :sswitch_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->updateRecipient(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 925
    :sswitch_31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/message/provider/MessageProvider;->updateTime(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 914
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_27
        0x100 -> :sswitch_22
        0x200 -> :sswitch_2c
        0x300 -> :sswitch_31
    .end sparse-switch
.end method
