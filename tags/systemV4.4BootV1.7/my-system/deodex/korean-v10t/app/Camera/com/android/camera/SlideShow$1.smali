.class Lcom/android/camera/SlideShow$1;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlideShow;


# direct methods
.method constructor <init>(Lcom/android/camera/SlideShow;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/SlideShow$1;->this$0:Lcom/android/camera/SlideShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/SlideShow$1;->this$0:Lcom/android/camera/SlideShow;

    invoke-static {v0}, Lcom/android/camera/SlideShow;->access$100(Lcom/android/camera/SlideShow;)V

    .line 250
    return-void
.end method
