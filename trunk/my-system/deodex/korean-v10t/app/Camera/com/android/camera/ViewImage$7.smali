.class Lcom/android/camera/ViewImage$7;
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
    .line 568
    iput-object p1, p0, Lcom/android/camera/ViewImage$7;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/ViewImage$7;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$2000(Lcom/android/camera/ViewImage;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ViewImage$7;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$2100(Lcom/android/camera/ViewImage;)V

    .line 571
    const/4 v0, 0x1

    return v0
.end method
