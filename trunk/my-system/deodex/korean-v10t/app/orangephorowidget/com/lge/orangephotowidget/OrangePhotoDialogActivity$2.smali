.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;
.super Ljava/lang/Object;
.source "OrangePhotoDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryFlag:Z

    .line 396
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$100(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    .line 402
    return-void
.end method
