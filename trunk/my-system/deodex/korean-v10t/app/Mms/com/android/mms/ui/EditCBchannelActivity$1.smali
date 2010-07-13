.class Lcom/android/mms/ui/EditCBchannelActivity$1;
.super Ljava/lang/Object;
.source "EditCBchannelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EditCBchannelActivity;->setupView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditCBchannelActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditCBchannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/mms/ui/EditCBchannelActivity$1;->this$0:Lcom/android/mms/ui/EditCBchannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 597
    const-string v3, "EditCBchannelActivity"

    const-string v4, "[setupView]addTextChangedListener"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 599
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_26

    .line 600
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 601
    .local v0, ch:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1a

    const/16 v3, 0x39

    if-le v0, v3, :cond_23

    .line 602
    :cond_1a
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 603
    add-int/lit8 v2, v2, -0x1

    .line 604
    add-int/lit8 v1, v1, -0x1

    .line 599
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 607
    .end local v0           #ch:C
    :cond_26
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 594
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 595
    return-void
.end method
