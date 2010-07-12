.class public final Landroid/provider/Sync;
.super Ljava/lang/Object;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Sync$1;,
        Landroid/provider/Sync$Settings;,
        Landroid/provider/Sync$SettingsColumns;,
        Landroid/provider/Sync$Active;,
        Landroid/provider/Sync$ActiveColumns;,
        Landroid/provider/Sync$Pending;,
        Landroid/provider/Sync$Status;,
        Landroid/provider/Sync$History;,
        Landroid/provider/Sync$StatusColumns;,
        Landroid/provider/Sync$HistoryColumns;,
        Landroid/provider/Sync$Stats;,
        Landroid/provider/Sync$StatsColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "content://sync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Sync;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
