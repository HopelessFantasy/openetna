.class Lcom/android/server/PackageManagerService$PackageSettingBase;
.super Lcom/android/server/PackageManagerService$GrantedPermissions;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSettingBase"
.end annotation


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field permissionsFixed:Z

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

.field private timeStamp:J

.field private timeStampString:Ljava/lang/String;

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V
    .registers 8
    .parameter "name"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 5524
    invoke-direct {p0, p5}, Lcom/android/server/PackageManagerService$GrantedPermissions;-><init>(I)V

    .line 5505
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 5508
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 5513
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 5515
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 5516
    iput v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 5517
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 5525
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    .line 5526
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 5527
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 5528
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 5529
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 5530
    iput p4, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 5531
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V
    .registers 4
    .parameter "base"

    .prologue
    .line 5570
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    .line 5571
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    .line 5572
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->loadedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->loadedPermissions:Ljava/util/HashSet;

    .line 5574
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 5575
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 5576
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 5577
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    .line 5578
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 5579
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 5580
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 5581
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 5582
    return-void
.end method

.method currentEnabledStateLP(Ljava/lang/String;)I
    .registers 3
    .parameter "componentName"

    .prologue
    .line 5600
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5601
    const/4 v0, 0x1

    .line 5605
    :goto_9
    return v0

    .line 5602
    :cond_a
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5603
    const/4 v0, 0x2

    goto :goto_9

    .line 5605
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method disableComponentLP(Ljava/lang/String;)V
    .registers 3
    .parameter "componentClassName"

    .prologue
    .line 5590
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5591
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5592
    return-void
.end method

.method enableComponentLP(Ljava/lang/String;)V
    .registers 3
    .parameter "componentClassName"

    .prologue
    .line 5585
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5586
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5587
    return-void
.end method

.method public getInstallStatus()I
    .registers 2

    .prologue
    .line 5546
    iget v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5538
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 5562
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    return-wide v0
.end method

.method public getTimeStampStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5566
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    return-object v0
.end method

.method restoreComponentLP(Ljava/lang/String;)V
    .registers 3
    .parameter "componentClassName"

    .prologue
    .line 5595
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5596
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5597
    return-void
.end method

.method public setInstallStatus(I)V
    .registers 2
    .parameter "newStatus"

    .prologue
    .line 5542
    iput p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 5543
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 5534
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 5535
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 5
    .parameter "newStamp"

    .prologue
    .line 5550
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    .line 5551
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 5552
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 5554
    :cond_e
    return-void
.end method

.method public setTimeStamp(JLjava/lang/String;)V
    .registers 4
    .parameter "newStamp"
    .parameter "newStampStr"

    .prologue
    .line 5557
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 5558
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 5559
    return-void
.end method
