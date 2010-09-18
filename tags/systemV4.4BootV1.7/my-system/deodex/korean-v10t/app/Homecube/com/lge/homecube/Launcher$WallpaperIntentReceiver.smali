.class Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperIntentReceiver"
.end annotation


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/homecube/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/lge/homecube/Launcher;)V
    .registers 3
    .parameter "application"
    .parameter "launcher"

    .prologue
    .line 3722
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3723
    iput-object p1, p0, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->mApplication:Landroid/app/Application;

    .line 3724
    invoke-virtual {p0, p2}, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 3725
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3735
    iget-object v2, p0, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3736
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_25

    .line 3737
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$2602(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3743
    iget-object v2, p0, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_24

    .line 3744
    iget-object v2, p0, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/Launcher;

    .line 3745
    .local v1, launcher:Lcom/lge/homecube/Launcher;
    if-eqz v1, :cond_24

    .line 3746
    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->loadWallpaper()V

    .line 3749
    .end local v1           #launcher:Lcom/lge/homecube/Launcher;
    :cond_24
    return-void

    .line 3739
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The wallpaper must be a BitmapDrawable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 3
    .parameter "launcher"

    .prologue
    .line 3728
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 3729
    return-void
.end method
