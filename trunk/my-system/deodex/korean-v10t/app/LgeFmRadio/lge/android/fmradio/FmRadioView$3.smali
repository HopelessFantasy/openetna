.class Llge/android/fmradio/FmRadioView$3;
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
    .line 704
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$3;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$3;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioView;->Setonofftimer()V

    .line 706
    return-void
.end method
