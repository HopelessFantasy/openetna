.class Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;
.super Ljava/lang/Object;
.source "KeyCompassTest.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/KeyCompassTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 267
    const-string v6, "Unknown"

    .line 268
    .local v6, str:Ljava/lang/String;
    const-string v7, "KeyCompassTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mText1Listener keyCode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sparse-switch p2, :sswitch_data_a4

    .line 330
    const-string v6, "QWERTY Keys : Execute Qwerty Test"

    .line 334
    :cond_20
    :goto_20
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    iget-object v7, v7, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v7, v10

    .line 336
    :goto_28
    return v7

    .line 271
    :sswitch_29
    const-string v6, "HOME"

    .line 272
    goto :goto_20

    .line 274
    :sswitch_2c
    const-string v6, "BACK"

    .line 275
    const/4 v7, 0x0

    goto :goto_28

    .line 277
    :sswitch_30
    const-string v6, "END CALL"

    .line 278
    goto :goto_20

    .line 280
    :sswitch_33
    const-string v6, "VOLUME UP"

    .line 281
    goto :goto_20

    .line 283
    :sswitch_36
    const-string v6, "VOLUME DOWN"

    .line 284
    goto :goto_20

    .line 286
    :sswitch_39
    const-string v6, "POWER"

    .line 287
    goto :goto_20

    .line 289
    :sswitch_3c
    const-string v6, "CAMERA"

    .line 290
    goto :goto_20

    .line 292
    :sswitch_3f
    const-string v6, "ENTER"

    .line 293
    goto :goto_20

    .line 295
    :sswitch_42
    const-string v6, "FOCUS"

    .line 296
    goto :goto_20

    .line 298
    :sswitch_45
    const-string v6, "MENU"

    .line 303
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    iget-object v7, v7, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_20

    .line 304
    const-string v4, "com.lge.hiddenmenu"

    .line 305
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 307
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 308
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 309
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 311
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    const-string v2, "QwertyTest"

    .line 314
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-virtual {v7}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->finish()V

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 317
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-virtual {v7, v3}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 324
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :sswitch_9d
    const-string v6, "FOCUS"

    .line 325
    goto :goto_20

    .line 327
    :sswitch_a0
    const-string v6, "MUSIC"

    .line 328
    goto/16 :goto_20

    .line 269
    :sswitch_data_a4
    .sparse-switch
        0x3 -> :sswitch_29
        0x4 -> :sswitch_2c
        0x6 -> :sswitch_30
        0x18 -> :sswitch_33
        0x19 -> :sswitch_36
        0x1a -> :sswitch_39
        0x1b -> :sswitch_3c
        0x42 -> :sswitch_3f
        0x50 -> :sswitch_42
        0x52 -> :sswitch_45
        0x61 -> :sswitch_9d
        0xca -> :sswitch_a0
    .end sparse-switch
.end method
