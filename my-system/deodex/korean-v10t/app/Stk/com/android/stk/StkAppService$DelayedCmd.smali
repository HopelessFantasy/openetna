.class Lcom/android/stk/StkAppService$DelayedCmd;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCmd"
.end annotation


# instance fields
.field id:I

.field msg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "msg"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/stk/StkAppService$DelayedCmd;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p2, p0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    .line 161
    iput-object p3, p0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 162
    return-void
.end method
