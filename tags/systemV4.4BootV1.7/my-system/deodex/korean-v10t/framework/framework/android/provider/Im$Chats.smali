.class public final Landroid/provider/Im$Chats;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$ChatsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chats"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im-chats"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/im-chats"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "last_message_date ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1409
    const-string v0, "content://im/chats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Chats;->CONTENT_URI:Landroid/net/Uri;

    .line 1415
    const-string v0, "content://im/chats/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Chats;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
