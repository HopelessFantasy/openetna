.class Lcom/lge/sns/media/ui/MediaUploadActivity$1;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2a

    const/4 v1, 0x1

    move v0, v1

    .line 106
    .local v0, enabled:Z
    :goto_8
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$000(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    if-eqz v0, :cond_2d

    .line 108
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$000(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_29
    return-void

    .line 105
    .end local v0           #enabled:Z
    :cond_2a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8

    .line 110
    .restart local v0       #enabled:Z
    :cond_2d
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$000(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 116
    return-void
.end method
