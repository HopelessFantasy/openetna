.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;
.super Ljava/lang/Thread;
.source "OrangePhotoDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->runDecodeThreads(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

.field final synthetic val$center_pos:I

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iput p3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->val$center_pos:I

    iput p4, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->val$count:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 692
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->val$center_pos:I

    .line 693
    .local v0, i:I
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->val$count:I

    .local v1, no_decode:I
    move v2, v1

    .line 695
    .end local v1           #no_decode:I
    .local v2, no_decode:I
    :goto_6
    sub-int v1, v2, v5

    .end local v2           #no_decode:I
    .restart local v1       #no_decode:I
    if-lez v2, :cond_e

    .line 696
    add-int/lit8 v0, v0, -0x1

    .line 697
    if-ge v0, v5, :cond_f

    .line 705
    :cond_e
    return-void

    .line 700
    :cond_f
    iget-object v3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v3}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$800(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v0

    if-nez v3, :cond_35

    .line 701
    iget-object v3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-virtual {v3, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_check(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 702
    iget-object v3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v3}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$800(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-virtual {v4, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->makeThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    move v2, v1

    .end local v1           #no_decode:I
    .restart local v2       #no_decode:I
    goto :goto_6

    .end local v2           #no_decode:I
    .restart local v1       #no_decode:I
    :cond_35
    move v2, v1

    .end local v1           #no_decode:I
    .restart local v2       #no_decode:I
    goto :goto_6
.end method
