.class Lcom/android/camera/ViewImage$3;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 513
    iget-object v0, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 514
    iget-object v0, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    iget-object v1, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ViewImage;->access$1802(Lcom/android/camera/ViewImage;I)I

    .line 515
    iget-object v0, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    iget-object v1, p0, Lcom/android/camera/ViewImage$3;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ViewImage;->access$1900(Lcom/android/camera/ViewImage;IJZ)V

    .line 516
    return v4
.end method
