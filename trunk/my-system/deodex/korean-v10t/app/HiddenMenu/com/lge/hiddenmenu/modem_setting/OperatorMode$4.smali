.class Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;
.super Ljava/lang/Object;
.source "OperatorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->TelusNumofSubItems:[I

    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v3, v3, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    aget v2, v2, v3

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    .line 212
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$000(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    mul-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->msg:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    .line 213
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v1, v1, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentMainItem:I

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/OperatorMode$4;->this$0:Lcom/lge/hiddenmenu/modem_setting/OperatorMode;

    iget v2, v2, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->CurrentSubItem:I

    invoke-static {v0, v1, v2}, Lcom/lge/hiddenmenu/modem_setting/OperatorMode;->access$300(Lcom/lge/hiddenmenu/modem_setting/OperatorMode;II)V

    .line 214
    return-void
.end method
