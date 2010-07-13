.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;
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
    .line 519
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$200(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetPreference(I)V

    .line 523
    return-void
.end method
