.class public final Lcom/lge/provider/Memo$Memos;
.super Ljava/lang/Object;
.source "Memo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Memo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Memos"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final IMAGE_COORDINATES:Ljava/lang/String; = "imagecoordinates"

.field public static final IMAGE_URL:Ljava/lang/String; = "imageurl"

.field public static final MEMO:Ljava/lang/String; = "note"

.field public static final MEMOWIDGETID:Ljava/lang/String; = "memoId"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "content://com.lge.provider.Memo/memos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Memo$Memos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
