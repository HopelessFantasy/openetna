.class final enum Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ClickLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog; = null

.field static final COLUMNS:[Ljava/lang/String; = null

.field static final TABLE_NAME:Ljava/lang/String; = "clicklog"

.field public static final enum _id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    .line 510
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "intent_key"

    invoke-direct {v0, v1, v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    .line 511
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "query"

    invoke-direct {v0, v1, v4}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    .line 512
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "hit_time"

    invoke-direct {v0, v1, v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    .line 508
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    .line 514
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->COLUMNS:[Ljava/lang/String;

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
    .line 529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    .line 531
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 519
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    move-result-object v2

    .line 520
    .local v2, vals:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 521
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 522
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 524
    :cond_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;
    .registers 2
    .parameter "name"

    .prologue
    .line 508
    const-class v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    return-object p0
.end method

.method public static final values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;
    .registers 1

    .prologue
    .line 508
    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v0}, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    return-object v0
.end method
