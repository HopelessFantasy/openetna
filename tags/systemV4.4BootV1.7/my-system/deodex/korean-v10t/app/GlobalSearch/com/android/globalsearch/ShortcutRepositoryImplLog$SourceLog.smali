.class final enum Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SourceLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog; = null

.field static final COLUMNS:[Ljava/lang/String; = null

.field static final TABLE_NAME:Ljava/lang/String; = "sourceeventlog"

.field public static final enum _id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

.field public static final enum click_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

.field public static final enum component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

.field public static final enum impression_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

.field public static final enum time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 540
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    const-string v1, "component"

    invoke-direct {v0, v1, v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 541
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    const-string v1, "time"

    invoke-direct {v0, v1, v4}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 542
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    const-string v1, "click_count"

    invoke-direct {v0, v1, v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->click_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 543
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    const-string v1, "impression_count"

    invoke-direct {v0, v1, v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->impression_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 538
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->click_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->impression_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    .line 545
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->COLUMNS:[Ljava/lang/String;

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
    .line 560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourceeventlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->fullName:Ljava/lang/String;

    .line 562
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 550
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    move-result-object v2

    .line 551
    .local v2, vals:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 552
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 553
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 555
    :cond_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;
    .registers 2
    .parameter "name"

    .prologue
    .line 538
    const-class v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    return-object p0
.end method

.method public static final values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;
    .registers 1

    .prologue
    .line 538
    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v0}, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    return-object v0
.end method
