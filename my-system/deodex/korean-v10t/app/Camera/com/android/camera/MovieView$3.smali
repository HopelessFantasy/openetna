.class Lcom/android/camera/MovieView$3;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MovieView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MovieView;


# direct methods
.method constructor <init>(Lcom/android/camera/MovieView;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/MovieView$3;->this$0:Lcom/android/camera/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/MovieView$3;->this$0:Lcom/android/camera/MovieView;

    invoke-static {v0}, Lcom/android/camera/MovieView;->access$000(Lcom/android/camera/MovieView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 128
    return-void
.end method
