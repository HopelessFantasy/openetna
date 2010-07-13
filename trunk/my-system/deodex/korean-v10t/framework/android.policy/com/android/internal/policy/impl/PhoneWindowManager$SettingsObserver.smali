.class Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 258
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 259
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "end_button_behavior"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    const-string v1, "fancy_rotation_anim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->update()V

    .line 272
    return-void
.end method

.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->update()V

    .line 277
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    .line 282
    :goto_11
    return-void

    .line 279
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public update()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 285
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 286
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 287
    .local v4, updateRotation:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 288
    :try_start_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v7, "end_button_behavior"

    const/4 v8, 0x2

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 290
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v7, "fancy_rotation_anim"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_63

    const/16 v7, 0x80

    :goto_27
    iput v7, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 292
    const-string v6, "accelerometer_rotation"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, accelerometerDefault:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v6, v0, :cond_3f

    .line 295
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v0, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 296
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 298
    :cond_3f
    const-string v6, "default_input_method"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, imId:Ljava/lang/String;
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_65

    const/4 v6, 0x1

    move v1, v6

    .line 301
    .local v1, hasSoftInput:Z
    :goto_4f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v6, v1, :cond_5a

    .line 302
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v1, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 303
    const/4 v4, 0x1

    .line 305
    :cond_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_f .. :try_end_5b} :catchall_67

    .line 306
    if-eqz v4, :cond_62

    .line 307
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 309
    :cond_62
    return-void

    .end local v0           #accelerometerDefault:I
    .end local v1           #hasSoftInput:Z
    .end local v2           #imId:Ljava/lang/String;
    :cond_63
    move v7, v9

    .line 290
    goto :goto_27

    .restart local v0       #accelerometerDefault:I
    .restart local v2       #imId:Ljava/lang/String;
    :cond_65
    move v1, v9

    .line 300
    goto :goto_4f

    .line 305
    .end local v0           #accelerometerDefault:I
    .end local v2           #imId:Ljava/lang/String;
    :catchall_67
    move-exception v6

    :try_start_68
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v6
.end method
