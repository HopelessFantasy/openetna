.class final Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;
.super Ljava/lang/Object;
.source "FmRadioView.java"

# interfaces
.implements Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateChannelSwingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioView;


# direct methods
.method private constructor <init>(Llge/android/fmradio/FmRadioView;)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llge/android/fmradio/FmRadioView;Llge/android/fmradio/FmRadioView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;-><init>(Llge/android/fmradio/FmRadioView;)V

    return-void
.end method


# virtual methods
.method public onUpdate(I)V
    .registers 5
    .parameter "nChannelPage"

    .prologue
    .line 693
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][UpdateChannelSwingCallback] nChannelPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$3300(Llge/android/fmradio/FmRadioView;)Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->DisplayChannelArrow(I)V

    .line 697
    return-void
.end method
