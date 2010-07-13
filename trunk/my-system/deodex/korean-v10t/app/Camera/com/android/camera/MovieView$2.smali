.class Lcom/android/camera/MovieView$2;
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

.field final synthetic val$bookmark:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/camera/MovieView;Ljava/lang/Integer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/camera/MovieView$2;->this$0:Lcom/android/camera/MovieView;

    iput-object p2, p0, Lcom/android/camera/MovieView$2;->val$bookmark:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/MovieView$2;->this$0:Lcom/android/camera/MovieView;

    invoke-static {v0}, Lcom/android/camera/MovieView;->access$000(Lcom/android/camera/MovieView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MovieView$2;->val$bookmark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/MovieView$2;->this$0:Lcom/android/camera/MovieView;

    invoke-static {v0}, Lcom/android/camera/MovieView;->access$000(Lcom/android/camera/MovieView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 124
    return-void
.end method
