.class Landroid/app/ApplicationContext$WallpaperCallback;
.super Landroid/app/IWallpaperServiceCallback$Stub;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperCallback"
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ApplicationContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ApplicationContext;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3069
    invoke-direct {p0}, Landroid/app/IWallpaperServiceCallback$Stub;-><init>()V

    .line 3070
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ApplicationContext$WallpaperCallback;->mContext:Ljava/lang/ref/WeakReference;

    .line 3071
    return-void
.end method


# virtual methods
.method public declared-synchronized onWallpaperChanged()V
    .registers 3

    .prologue
    .line 3080
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationContext$WallpaperCallback;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationContext;

    .line 3081
    .local v0, applicationContext:Landroid/app/ApplicationContext;
    if-eqz v0, :cond_f

    .line 3082
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ApplicationContext;->access$1002(Landroid/app/ApplicationContext;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 3084
    :cond_f
    monitor-exit p0

    return-void

    .line 3080
    .end local v0           #applicationContext:Landroid/app/ApplicationContext;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method
