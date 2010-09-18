.class Lcom/android/camera/GalleryPicker$4;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GalleryPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 197
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    iget v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 198
    .local v1, position:I
    iget-object v2, p0, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v2, v2, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-static {v2, v1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->access$300(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 199
    iget-object v2, p0, Lcom/android/camera/GalleryPicker$4;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v2, v2, Lcom/android/camera/GalleryPicker;->mAdapter:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-static {v2, v1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->access$400(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    .line 200
    const/16 v2, 0xcf

    const v3, 0x7f09001b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/GalleryPicker$4$1;

    invoke-direct {v3, p0, p3}, Lcom/android/camera/GalleryPicker$4$1;-><init>(Lcom/android/camera/GalleryPicker$4;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 226
    :cond_2f
    const/16 v2, 0xd0

    const v3, 0x7f090016

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/GalleryPicker$4$2;

    invoke-direct {v3, p0, p3}, Lcom/android/camera/GalleryPicker$4$2;-><init>(Lcom/android/camera/GalleryPicker$4;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 234
    return-void
.end method
