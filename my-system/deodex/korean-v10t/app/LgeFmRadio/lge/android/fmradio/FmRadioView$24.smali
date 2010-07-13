.class Llge/android/fmradio/FmRadioView$24;
.super Ljava/lang/Object;
.source "FmRadioView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llge/android/fmradio/FmRadioView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioView;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioView;)V
    .registers 2
    .parameter

    .prologue
    .line 1636
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$24;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 1640
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView] DIALOG_SET_AF_OK_CANCEL isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$24;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0, p3}, Llge/android/fmradio/FmRadioView;->access$4500(Llge/android/fmradio/FmRadioView;Z)V

    .line 1643
    return-void
.end method
