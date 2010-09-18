.class public final Landroid/provider/Sync$Stats;
.super Ljava/lang/Object;
.source "Sync.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Sync$StatsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SYNC_STATS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const-string v0, "content://sync/stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Sync$Stats;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Sync$Stats;->SYNC_STATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
