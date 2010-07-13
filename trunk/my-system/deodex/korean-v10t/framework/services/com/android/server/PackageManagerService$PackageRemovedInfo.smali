.class Lcom/android/server/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field isRemovedPackageSystemUpdate:Z

.field removedPackage:Ljava/lang/String;

.field removedUid:I

.field uid:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 4165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4167
    iput v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 4168
    iput v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 4169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZ)V
    .registers 7
    .parameter "fullRemove"
    .parameter "replacing"

    .prologue
    const/4 v3, 0x1

    .line 4172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 4173
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v2, :cond_33

    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4174
    const-string v1, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4175
    if-eqz p2, :cond_1d

    .line 4176
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4178
    :cond_1d
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 4179
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4181
    :cond_28
    iget v1, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v1, :cond_32

    .line 4182
    const-string v1, "android.intent.action.UID_REMOVED"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4184
    :cond_32
    return-void

    .line 4173
    :cond_33
    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_e
.end method
