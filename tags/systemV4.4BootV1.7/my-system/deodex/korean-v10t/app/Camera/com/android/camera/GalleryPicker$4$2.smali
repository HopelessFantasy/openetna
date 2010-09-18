.class Lcom/android/camera/GalleryPicker$4$2;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker$4;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/GalleryPicker$4;

.field final synthetic val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker$4;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$4$2;->this$1:Lcom/android/camera/GalleryPicker$4;

    iput-object p2, p0, Lcom/android/camera/GalleryPicker$4$2;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$4$2;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 230
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, p0, Lcom/android/camera/GalleryPicker$4$2;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v1, v1, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v1, v2}, Lcom/android/camera/GalleryPicker;->access$200(Lcom/android/camera/GalleryPicker;I)V

    .line 231
    const/4 v1, 0x1

    return v1
.end method
