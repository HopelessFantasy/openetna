.class final enum Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
.super Ljava/lang/Enum;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmilPlayerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "NO_ACTIVE_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 58
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "RELOAD"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 59
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 60
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 61
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .registers 2
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object p0
.end method

.method public static final values()[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-virtual {v0}, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object v0
.end method
