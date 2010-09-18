.class Lcom/android/camera/GalleryPicker$4$1;
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
    .line 202
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iput-object p2, p0, Lcom/android/camera/GalleryPicker$4$1;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 203
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$4$1;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 204
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 207
    .local v2, position:I
    iget-object v4, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v5, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 208
    if-ltz v2, :cond_20

    :try_start_12
    iget-object v4, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_23

    .line 209
    :cond_20
    monitor-exit v5

    move v4, v8

    .line 222
    :goto_22
    return v4

    .line 212
    :cond_23
    iget-object v4, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/GalleryPicker$Item;

    iget-object v3, v4, Lcom/android/camera/GalleryPicker$Item;->mFirstImageUri:Landroid/net/Uri;

    .line 213
    .local v3, targetUri:Landroid/net/Uri;
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_6d

    .line 214
    if-eqz v3, :cond_58

    if-lez v2, :cond_58

    .line 215
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "bucketId"

    iget-object v4, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    iget v7, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/GalleryPicker$Item;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 219
    :cond_58
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "slideshow"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/android/camera/GalleryPicker$4$1;->this$1:Lcom/android/camera/GalleryPicker$4;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v4, v1}, Lcom/android/camera/GalleryPicker;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 222
    goto :goto_22

    .line 213
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #targetUri:Landroid/net/Uri;
    :catchall_6d
    move-exception v4

    :try_start_6e
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v4
.end method
