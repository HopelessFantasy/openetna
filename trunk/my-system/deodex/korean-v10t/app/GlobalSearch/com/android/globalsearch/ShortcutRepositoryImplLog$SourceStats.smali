.class final enum Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SourceStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats; = null

.field static final COLUMNS:[Ljava/lang/String; = null

.field static final TABLE_NAME:Ljava/lang/String; = "sourcetotals"

.field public static final enum component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

.field public static final enum total_clicks:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

.field public static final enum total_impressions:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    const-string v1, "component"

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    .line 573
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    const-string v1, "total_clicks"

    invoke-direct {v0, v1, v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    .line 574
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    const-string v1, "total_impressions"

    invoke-direct {v0, v1, v4}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_impressions:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    .line 571
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_impressions:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    .line 578
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourcetotals."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->fullName:Ljava/lang/String;

    .line 593
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 581
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    move-result-object v2

    .line 582
    .local v2, vals:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 583
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 584
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 586
    :cond_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;
    .registers 2
    .parameter "name"

    .prologue
    .line 571
    const-class v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    return-object p0
.end method

.method public static final values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;
    .registers 1

    .prologue
    .line 571
    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0}, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    return-object v0
.end method
