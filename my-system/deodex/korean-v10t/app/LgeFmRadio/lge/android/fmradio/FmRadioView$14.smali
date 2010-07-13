.class Llge/android/fmradio/FmRadioView$14;
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
    .line 1533
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$14;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1535
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$14;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$4000(Llge/android/fmradio/FmRadioView;)V

    .line 1536
    return-void
.end method
