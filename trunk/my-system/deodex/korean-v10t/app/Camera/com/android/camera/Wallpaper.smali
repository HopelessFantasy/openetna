.class public Lcom/android/camera/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Wallpaper$SetWallpaperThread;
    }
.end annotation


# static fields
.field static final CROP_DONE:I = 0x2

.field static final FINISH:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Camera"

.field static final PHOTO_PICKED:I = 0x1

.field static final SHOW_PROGRESS:I = 0x0

.field static final sDoLaunchIcicle:Ljava/lang/String; = "do_launch"

.field static final sTempFilePathIcicle:Ljava/lang/String; = "temp_file_path"


# instance fields
.field private mDoLaunch:Z

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTempFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Wallpaper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Wallpaper;->mDoLaunch:Z

    .line 57
    new-instance v0, Lcom/android/camera/Wallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Wallpaper$1;-><init>(Lcom/android/camera/Wallpaper;)V

    iput-object v0, p0, Lcom/android/camera/Wallpaper;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/Wallpaper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/Wallpaper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/Wallpaper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/Wallpaper;->closeProgressDialog()V

    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/Wallpaper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/android/camera/Wallpaper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Wallpaper;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 108
    :cond_d
    monitor-exit p0

    return-void

    .line 104
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected formatIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 162
    const-string v3, "temp-wallpaper"

    invoke-virtual {p0, v3}, Lcom/android/camera/Wallpaper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, f:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v2

    .line 168
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/camera/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    .line 169
    .local v1, height:I
    const-string v3, "outputX"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v3, "outputY"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v3, "aspectX"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v3, "aspectY"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v3, "scale"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v3, "noFaceDetection"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v3, "output"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v3, "outputFormat"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const-string v4, "Camera"

    .line 184
    const/4 v4, 0x1

    if-eq p1, v4, :cond_9

    const/4 v4, 0x2

    if-ne p1, v4, :cond_72

    :cond_9
    const/4 v4, -0x1

    if-ne p2, v4, :cond_72

    if-eqz p3, :cond_72

    .line 187
    :try_start_e
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v3, tempFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 189
    .local v2, s:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_43

    .line 191
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set wallpaper.  Couldn\'t get bitmap for path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/Wallpaper;->mDoLaunch:Z
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_3d} :catch_54
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3d} :catch_70

    .line 200
    if-eqz v2, :cond_42

    .line 202
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_56
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_42} :catch_54

    .line 217
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #s:Ljava/io/InputStream;
    .end local v3           #tempFile:Ljava/io/File;
    :cond_42
    :goto_42
    return-void

    .line 195
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #s:Ljava/io/InputStream;
    .restart local v3       #tempFile:Ljava/io/File;
    :cond_43
    :try_start_43
    iget-object v4, p0, Lcom/android/camera/Wallpaper;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    new-instance v4, Lcom/android/camera/Wallpaper$SetWallpaperThread;

    iget-object v5, p0, Lcom/android/camera/Wallpaper;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v0, v5, p0, v3}, Lcom/android/camera/Wallpaper$SetWallpaperThread;-><init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v4}, Lcom/android/camera/Wallpaper$SetWallpaperThread;->start()V

    goto :goto_3a

    .line 208
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #s:Ljava/io/InputStream;
    .end local v3           #tempFile:Ljava/io/File;
    :catch_54
    move-exception v4

    goto :goto_42

    .line 203
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #s:Ljava/io/InputStream;
    .restart local v3       #tempFile:Ljava/io/File;
    :catch_56
    move-exception v1

    .line 204
    .local v1, e2:Ljava/io/IOException;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while closing the file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_6f} :catch_54
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_6f} :catch_70

    goto :goto_42

    .line 210
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e2:Ljava/io/IOException;
    .end local v2           #s:Ljava/io/InputStream;
    .end local v3           #tempFile:Ljava/io/File;
    :catch_70
    move-exception v4

    goto :goto_42

    .line 214
    :cond_72
    invoke-virtual {p0, v5}, Lcom/android/camera/Wallpaper;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/Wallpaper;->finish()V

    goto :goto_42
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_15

    .line 114
    const-string v0, "do_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Wallpaper;->mDoLaunch:Z

    .line 115
    const-string v0, "temp_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    .line 117
    :cond_15
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/camera/Wallpaper;->closeProgressDialog()V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const-string v4, "com.android.camera"

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    iget-boolean v2, p0, Lcom/android/camera/Wallpaper;->mDoLaunch:Z

    if-nez v2, :cond_a

    .line 155
    :goto_9
    return-void

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, imageToUse:Landroid/net/Uri;
    if-eqz v0, :cond_2b

    .line 140
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.camera"

    const-string v2, "com.android.camera.CropImage"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/camera/Wallpaper;->formatIntent(Landroid/content/Intent;)V

    .line 144
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 146
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.camera"

    const-string v2, "com.android.camera.ImageGallery2"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/camera/Wallpaper;->formatIntent(Landroid/content/Intent;)V

    .line 153
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 121
    const-string v0, "do_launch"

    iget-boolean v1, p0, Lcom/android/camera/Wallpaper;->mDoLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "temp_file_path"

    iget-object v1, p0, Lcom/android/camera/Wallpaper;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
