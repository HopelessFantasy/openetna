.class Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;
.super Ljava/lang/Object;
.source "fmradiotest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 109
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fmradiotest][onCreate] onClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {v3}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->access$200(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_2a
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    iget-object v1, v1, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    iget-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {v2}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->access$200(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;->tuneFrequency(I)V

    .line 116
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->access$200(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_4e} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_4e} :catch_55

    .line 127
    :goto_4e
    return-void

    .line 117
    :catch_4f
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4e

    .line 120
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_55
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4e
.end method
