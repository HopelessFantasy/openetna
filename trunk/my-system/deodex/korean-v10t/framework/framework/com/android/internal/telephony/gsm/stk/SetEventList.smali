.class public final enum Lcom/android/internal/telephony/gsm/stk/SetEventList;
.super Ljava/lang/Enum;
.source "SetEventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/SetEventList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/SetEventList;

.field public static final enum BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

.field public static final enum ERROR_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

.field public static final enum USER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;

    const-string v1, "BROWSER_TERMINATION_EVENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/gsm/stk/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;

    const-string v1, "USER_TERMINATION"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/gsm/stk/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->USER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;

    const-string v1, "ERROR_TERMINATION"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/gsm/stk/SetEventList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ERROR_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/SetEventList;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->USER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ERROR_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->mValue:I

    .line 41
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetEventList;
    .registers 6
    .parameter "value"

    .prologue
    .line 48
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->values()[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/SetEventList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 49
    .local v3, r:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    iget v4, v3, Lcom/android/internal/telephony/gsm/stk/SetEventList;->mValue:I

    if-ne v4, p0, :cond_10

    move-object v4, v3

    .line 53
    .end local v3           #r:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :goto_f
    return-object v4

    .line 48
    .restart local v3       #r:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 53
    .end local v3           #r:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/SetEventList;
    .registers 2
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/SetEventList;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/gsm/stk/SetEventList;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/SetEventList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/SetEventList;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/SetEventList;->mValue:I

    return v0
.end method
