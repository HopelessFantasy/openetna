.class Lcom/android/internal/telephony/gsm/stk/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field loadOptionalIconFailed:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V
    .registers 3
    .parameter "cmdDet"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 33
    return-void
.end method


# virtual methods
.method getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "icon"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method setLoadOptionalIconFailed(Z)V
    .registers 2
    .parameter "result"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    .line 41
    return-void
.end method
