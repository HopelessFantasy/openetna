.class public Lcom/lge/hiddenmenu/device_test/VibratorTest;
.super Landroid/app/Activity;
.source "VibratorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;
    }
.end annotation


# static fields
.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final VIBRATOR_LENGTH:I = 0x1388


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private mBackButton:Landroid/widget/Button;

.field volatile mContinueVibrating:Z

.field mVibDuration:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibDuration:I

    .line 43
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v8, 0x7f03003d

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->setContentView(I)V

    .line 64
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 67
    const v8, 0x7f0700fd

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mBackButton:Landroid/widget/Button;

    .line 68
    iget-object v8, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mBackButton:Landroid/widget/Button;

    new-instance v9, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;

    invoke-direct {v9, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v8, 0x7f0700fe

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 80
    .local v7, onButton:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v8, 0x7f0700ff

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 93
    .local v6, offButton:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v8, 0x7f070100

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, dur1_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$4;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$4;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v8, 0x7f070101

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, dur2_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$5;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$5;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v8, 0x7f070102

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 128
    .local v2, dur3_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$6;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$6;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v8, 0x7f070103

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 139
    .local v3, dur4_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$7;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$7;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v8, 0x7f070104

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 149
    .local v4, dur5_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v8, 0x7f070105

    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 159
    .local v5, dur6_btn:Landroid/widget/Button;
    new-instance v8, Lcom/lge/hiddenmenu/device_test/VibratorTest$9;

    invoke-direct {v8, p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$9;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 207
    sparse-switch p1, :sswitch_data_6c

    :cond_6
    :goto_6
    move v5, v7

    .line 253
    :goto_7
    return v5

    .line 209
    :sswitch_8
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 211
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-eqz v5, :cond_21

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    if-ne v5, v6, :cond_21

    .line 212
    iput-boolean v7, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 213
    iput-object v8, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 214
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 216
    :cond_21
    const-string v4, "com.lge.hiddenmenu"

    .line 217
    .local v4, packageName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    .line 221
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 227
    .local v0, AutoAllTest:Ljava/lang/Integer;
    const-string v5, "com.lge.ExternalMemoryTest"

    const-string v6, "com.lge.ExternalMemoryTest.ExternalMemoryTest"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->finish()V

    goto :goto_6

    .line 235
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    :sswitch_3f
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_56

    .line 238
    const-string v5, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 239
    .local v3, mToast1:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .end local v3           #mToast1:Landroid/widget/Toast;
    :goto_54
    move v5, v6

    .line 250
    goto :goto_7

    .line 243
    :cond_56
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-eqz v5, :cond_67

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    if-ne v5, v6, :cond_67

    .line 244
    iput-boolean v7, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 245
    iput-object v8, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 246
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 248
    :cond_67
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->finish()V

    goto :goto_54

    .line 207
    nop

    :sswitch_data_6c
    .sparse-switch
        0x4 -> :sswitch_3f
        0x52 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 198
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 182
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_38

    .line 184
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 185
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-nez v1, :cond_2f

    .line 186
    new-instance v1, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;Lcom/lge/hiddenmenu/device_test/VibratorTest$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 187
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;->start()V

    .line 189
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 192
    :cond_38
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 259
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-eqz v0, :cond_12

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 262
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 264
    :cond_12
    return-void
.end method
