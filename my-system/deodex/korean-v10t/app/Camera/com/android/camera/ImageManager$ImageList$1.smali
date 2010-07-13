.class Lcom/android/camera/ImageManager$ImageList$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$ImageList;

.field final synthetic val$this$0:Lcom/android/camera/ImageManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList$1;->this$1:Lcom/android/camera/ImageManager$ImageList;

    iput-object p2, p0, Lcom/android/camera/ImageManager$ImageList$1;->val$this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 2244
    return-void
.end method
