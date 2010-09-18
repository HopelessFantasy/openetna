.class final enum Lcom/android/phone/InCallScreen$InCallScreenMode;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InCallScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$InCallScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 219
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "MANAGE_CONFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 224
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "CALL_ENDED"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallScreenMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 210
    const-class v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object p0
.end method

.method public static final values()[Lcom/android/phone/InCallScreen$InCallScreenMode;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$InCallScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method
