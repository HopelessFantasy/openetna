.class public final Lcom/lge/sns/message/provider/MessageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/provider/MessageContent$TimeColumns;,
        Lcom/lge/sns/message/provider/MessageContent$RecipientColumns;,
        Lcom/lge/sns/message/provider/MessageContent$MessageColumns;,
        Lcom/lge/sns/message/provider/MessageContent$ThreadColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.message.provider"

.field public static final IDX_URI_MESSAGE:I = 0x100

.field public static final IDX_URI_MESSAGE_COUNT:I = 0x102

.field public static final IDX_URI_MESSAGE_ID:I = 0x101

.field public static final IDX_URI_MESSAGE_MAX_UPDATED:I = 0x103

.field public static final IDX_URI_MESSAGE_UPDATED_COUNT:I = 0x104

.field public static final IDX_URI_RECIPIENT:I = 0x200

.field public static final IDX_URI_RECIPIENT_COUNT:I = 0x202

.field public static final IDX_URI_RECIPIENT_ID:I = 0x201

.field public static final IDX_URI_THREAD:I = 0x0

.field public static final IDX_URI_THREAD_COUNT:I = 0x2

.field public static final IDX_URI_THREAD_ID:I = 0x1

.field public static final IDX_URI_THREAD_MAX_UPDATED:I = 0x3

.field public static final IDX_URI_THREAD_UPDATED_COUNT:I = 0x4

.field public static final IDX_URI_TIME:I = 0x300

.field public static final IDX_URI_TIME_ID:I = 0x301


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method
