.class Lcom/android/mms/drm/DrmUtils$4;
.super Ljava/lang/Object;
.source "DrmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/drm/DrmUtils;->obtainNewRight(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$session:Landroid/lge/lgdrm/DrmContentSession;


# direct methods
.method constructor <init>(Landroid/lge/lgdrm/DrmContentSession;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/mms/drm/DrmUtils$4;->val$session:Landroid/lge/lgdrm/DrmContentSession;

    iput-object p2, p0, Lcom/android/mms/drm/DrmUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/drm/DrmUtils$4;->val$session:Landroid/lge/lgdrm/DrmContentSession;

    invoke-static {v0}, Lcom/android/mms/drm/DrmUtils;->getNewRightbyActiveURL(Landroid/lge/lgdrm/DrmContentSession;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 198
    iget-object v0, p0, Lcom/android/mms/drm/DrmUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/drm/DrmUtils$4;->val$context:Landroid/content/Context;

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    :cond_1b
    return-void
.end method
