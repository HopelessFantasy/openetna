.class public final Landroid/provider/Im$GroupMessages;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$GroupMessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMessages"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im-groupMessages"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/im-groupMessages"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_GROUP_MESSAGES_BY:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1154
    const-string v0, "content://im/groupMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$GroupMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 1160
    const-string v0, "content://im/groupMessagesBy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$GroupMessages;->CONTENT_URI_GROUP_MESSAGES_BY:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUriByGroup(J)Landroid/net/Uri;
    .registers 4
    .parameter "groupId"

    .prologue
    .line 1146
    sget-object v1, Landroid/provider/Im$GroupMessages;->CONTENT_URI_GROUP_MESSAGES_BY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1147
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1148
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
