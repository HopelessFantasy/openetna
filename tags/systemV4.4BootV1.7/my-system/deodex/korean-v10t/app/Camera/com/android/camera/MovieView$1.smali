.class Lcom/android/camera/MovieView$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 116
    iput-object p1, p0, Lcom/android/camera/MovieView$1;->this$0:Lcom/android/camera/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/MovieView$1;->this$0:Lcom/android/camera/MovieView;

    invoke-virtual {v0}, Lcom/android/camera/MovieView;->finish()V

    .line 118
    return-void
.end method
