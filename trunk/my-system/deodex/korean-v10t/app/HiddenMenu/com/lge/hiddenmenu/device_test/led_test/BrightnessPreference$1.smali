.class Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;->this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 94
    packed-switch p2, :pswitch_data_3c

    .line 104
    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 96
    :pswitch_c
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;->this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->access$000(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;->this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->access$000(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v3

    .line 97
    goto :goto_b

    .line 100
    :pswitch_24
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;->this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->access$000(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference$1;->this$0:Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;->access$000(Lcom/lge/hiddenmenu/device_test/led_test/BrightnessPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v3

    .line 101
    goto :goto_b

    .line 94
    nop

    :pswitch_data_3c
    .packed-switch 0x15
        :pswitch_c
        :pswitch_24
    .end packed-switch
.end method
