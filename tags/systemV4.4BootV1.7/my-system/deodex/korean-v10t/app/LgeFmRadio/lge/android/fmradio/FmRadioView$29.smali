.class Llge/android/fmradio/FmRadioView$29;
.super Ljava/lang/Object;
.source "FmRadioView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioView;
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
    .line 2229
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$29;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2230
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$29;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView$29;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$4700(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioView;->access$4800(Llge/android/fmradio/FmRadioView;Z)V

    .line 2231
    return-void
.end method
