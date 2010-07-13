.class final enum Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Shortcuts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts; = null

.field static final COLUMNS:[Ljava/lang/String; = null

.field static final TABLE_NAME:Ljava/lang/String; = "shortcuts"

.field public static final enum action_msg_call:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum description:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum format:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum icon1:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum icon2:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_action:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_component_name:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_data:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_extradata:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum spinner_while_refreshing:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum title:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_key"

    invoke-direct {v0, v1, v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 467
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "source"

    invoke-direct {v0, v1, v4}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 468
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "format"

    invoke-direct {v0, v1, v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 469
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "title"

    invoke-direct {v0, v1, v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 470
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "description"

    invoke-direct {v0, v1, v7}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 471
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "icon1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 472
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "icon2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 473
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_action"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 474
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_data"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 475
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_query"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 476
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "action_msg_call"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->action_msg_call:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 477
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_extradata"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 478
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_component_name"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_component_name:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 479
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "shortcut_id"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 483
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "spinner_while_refreshing"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 465
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->action_msg_call:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_component_name:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    .line 485
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->COLUMNS:[Ljava/lang/String;

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
    .line 500
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shortcuts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    .line 502
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 490
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    move-result-object v2

    .line 491
    .local v2, vals:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 492
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 493
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 495
    :cond_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;
    .registers 2
    .parameter "name"

    .prologue
    .line 465
    const-class v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    return-object p0
.end method

.method public static final values()[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;
    .registers 1

    .prologue
    .line 465
    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->$VALUES:[Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v0}, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    return-object v0
.end method
