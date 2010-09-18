.class Lcom/android/camera/SlideShow$2;
.super Landroid/os/Handler;
.source "SlideShow.java"


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
    .line 278
    iput-object p1, p0, Lcom/android/camera/SlideShow$2;->this$0:Lcom/android/camera/SlideShow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 279
    return-void
.end method
