.class Llge/android/fmradio/FmRadioView$23;
.super Ljava/lang/Object;
.source "FmRadioView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1646
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$23;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1649
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$23;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$4400(Llge/android/fmradio/FmRadioView;)V

    .line 1651
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1652
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$23;->this$0:Llge/android/fmradio/FmRadioView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioView;->removeDialog(I)V

    .line 1653
    return-void
.end method
