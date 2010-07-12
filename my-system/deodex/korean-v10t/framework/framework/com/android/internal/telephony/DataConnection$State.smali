.class public final enum Lcom/android/internal/telephony/DataConnection$State;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum INACTIVE:Lcom/android/internal/telephony/DataConnection$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "ACTIVATING"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "INACTIVATING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->$VALUES:[Lcom/android/internal/telephony/DataConnection$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/DataConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$State;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/DataConnection$State;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->$VALUES:[Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$State;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInactive()Z
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 52
    const-string v0, "inactive"

    :goto_d
    return-object v0

    .line 43
    :pswitch_e
    const-string v0, "active"

    goto :goto_d

    .line 45
    :pswitch_11
    const-string v0, "setting up"

    goto :goto_d

    .line 49
    :pswitch_14
    const-string v0, "setting down"

    goto :goto_d

    .line 41
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method
