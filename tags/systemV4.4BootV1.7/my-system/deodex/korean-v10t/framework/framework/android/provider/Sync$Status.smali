.class public Landroid/provider/Sync$Status;
.super Landroid/provider/Sync$History;
.source "Sync.java"

# interfaces
.implements Landroid/provider/Sync$StatusColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Sync$Status$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 336
    const-string v0, "content://sync/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Sync$Status;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/Sync$History;-><init>(Landroid/provider/Sync$1;)V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x0

    .line 348
    sget-object v1, Landroid/provider/Sync$Status;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "account, authority"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
