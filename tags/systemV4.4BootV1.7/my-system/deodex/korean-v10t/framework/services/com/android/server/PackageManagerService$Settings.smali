.class final Lcom/android/server/PackageManagerService$Settings;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    }
.end annotation


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$Settings$PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPreferredPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredActivities:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver",
            "<",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadMessages:Ljava/lang/StringBuilder;

.field private final mSettingsFilename:Ljava/io/File;

.field private final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 5726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5659
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    .line 5663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    .line 5666
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 5671
    new-instance v2, Lcom/android/server/PackageManagerService$Settings$1;

    invoke-direct {v2, p0}, Lcom/android/server/PackageManagerService$Settings$1;-><init>(Lcom/android/server/PackageManagerService$Settings;)V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    .line 5691
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 5693
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    .line 5694
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 5698
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 5702
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    .line 5706
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 5709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPreferredPackages:Ljava/util/ArrayList;

    .line 5712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 5723
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 5727
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 5728
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5729
    .local v1, systemDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5730
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 5734
    new-instance v2, Ljava/io/File;

    const-string v3, "packages.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    .line 5735
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-backup.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 5736
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5656
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5656
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 5656
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService$Settings;->insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V
    .registers 9
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    const-string v4, "Package "

    const-string v3, "; I am not changing its files so it will probably fail!"

    .line 5994
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5995
    if-eqz p3, :cond_5a

    .line 5996
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eq v0, p3, :cond_5b

    .line 5997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 6001
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6010
    :cond_4f
    :goto_4f
    iget-object v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6011
    iput-object p3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 6012
    iget v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 6014
    :cond_5a
    return-void

    .line 6002
    :cond_5b
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_4f

    .line 6003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_4f
.end method

.method private addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/16 v3, 0x2710

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v6, " name="

    .line 6081
    const/16 v2, 0x2af8

    if-lt p1, v2, :cond_c

    move v2, v4

    .line 6108
    :goto_b
    return v2

    .line 6085
    :cond_c
    if-lt p1, v3, :cond_52

    .line 6086
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6087
    .local v0, N:I
    sub-int v1, p1, v3

    .line 6088
    .local v1, index:I
    :goto_16
    if-lt v1, v0, :cond_21

    .line 6089
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6090
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 6092
    :cond_21
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 6093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move v2, v4

    .line 6096
    goto :goto_b

    .line 6098
    :cond_4b
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6108
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_50
    const/4 v2, 0x1

    goto :goto_b

    .line 6100
    :cond_52
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 6101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move v2, v4

    .line 6104
    goto :goto_b

    .line 6106
    :cond_7c
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_50
.end method

.method private getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 16
    .parameter "name"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 5887
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5888
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_42

    .line 5889
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 5891
    if-eqz v0, :cond_48

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    .line 5895
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to update system app code path from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5914
    :cond_42
    :goto_42
    if-nez v0, :cond_163

    .line 5917
    if-nez p7, :cond_c9

    .line 5918
    const/4 v1, 0x0

    .line 5963
    .end local p3
    :goto_47
    return-object v1

    .line 5899
    .restart local p3
    :cond_48
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " codePath changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Retaining data and using new code from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_42

    .line 5904
    :cond_80
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eq v1, p2, :cond_42

    .line 5905
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shared user changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_c3

    iget-object v3, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    :goto_a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_c6

    iget-object v3, p2, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    :goto_b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; replacing with new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 5911
    const/4 v0, 0x0

    goto :goto_42

    .line 5905
    :cond_c3
    const-string v3, "<nothing>"

    goto :goto_a2

    :cond_c6
    const-string v3, "<nothing>"

    goto :goto_b0

    .line 5920
    :cond_c9
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v0           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V

    .line 5921
    .restart local v0       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 5922
    iput-object p2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 5923
    if-eqz p2, :cond_106

    .line 5924
    iget v1, p2, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    iput v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 5952
    .end local p3
    :goto_e2
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gez v1, :cond_15e

    .line 5953
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be assigned a valid uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 5955
    const/4 v1, 0x0

    goto/16 :goto_47

    .line 5927
    .restart local p3
    :cond_106
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5928
    .local v6, dis:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_157

    .line 5933
    iget-object v1, v6, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$700(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 5934
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v2, v6, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$700(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v2}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [Landroid/content/pm/Signature;

    invoke-static {v1, p3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$702(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 5936
    :cond_129
    iget v1, v6, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iput v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 5938
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v6, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    .line 5939
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v6, Lcom/android/server/PackageManagerService$PackageSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->loadedPermissions:Ljava/util/HashSet;

    .line 5941
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v6, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    .line 5942
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v6, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    .line 5944
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_e2

    .line 5947
    .restart local p3
    :cond_157
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_e2

    .line 5957
    .end local v6           #dis:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local p3
    :cond_15e
    if-eqz p8, :cond_163

    .line 5960
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    :cond_163
    move-object v1, v0

    .line 5963
    goto/16 :goto_47
.end method

.method private insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .parameter "p"
    .parameter "pkg"
    .parameter "codePath"
    .parameter "resourcePath"

    .prologue
    const-string v4, "PackageManager"

    const-string v3, " to "

    const-string v2, " changing form "

    .line 5968
    iput-object p2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 5970
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 5971
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code path for pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changing form "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    iput-object p3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    .line 5974
    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    .line 5977
    :cond_4e
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 5978
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource path for pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changing form "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    iput-object p4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .line 5981
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 5984
    :cond_94
    iget v0, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-eq v0, v1, :cond_9e

    .line 5985
    iget v0, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    .line 5987
    :cond_9e
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    .line 5988
    return-void
.end method

.method private newUserIdLP(Ljava/lang/Object;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 7043
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7044
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 7045
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 7046
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7047
    add-int/lit16 v2, v1, 0x2710

    .line 7057
    :goto_18
    return v2

    .line 7044
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7052
    :cond_1c
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_22

    .line 7053
    const/4 v2, -0x1

    goto :goto_18

    .line 7056
    :cond_22
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7057
    add-int/lit16 v2, v0, 0x2710

    goto :goto_18
.end method

.method private readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 6820
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 6823
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 6825
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 6830
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6831
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 6832
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6833
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 6834
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6845
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 6836
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_38

    .line 6841
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_38

    .line 6847
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 23
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6596
    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6597
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "codePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6598
    .local v10, codePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6599
    .local v13, resourcePathStr:Ljava/lang/String;
    if-nez v13, :cond_24

    .line 6600
    move-object v13, v10

    .line 6602
    :cond_24
    const/4 v6, 0x0

    const-string v7, "version"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 6603
    .local v20, version:Ljava/lang/String;
    const/4 v8, 0x0

    .line 6604
    .local v8, versionCode:I
    if-eqz v20, :cond_36

    .line 6606
    :try_start_32
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_35} :catch_f4

    move-result v8

    .line 6611
    :cond_36
    :goto_36
    const/4 v9, 0x0

    .line 6612
    .local v9, pkgFlags:I
    or-int/lit8 v9, v9, 0x1

    .line 6613
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v4 .. v9}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V

    .line 6616
    .local v4, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v6, 0x0

    const-string v7, "ts"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6617
    .local v18, timeStampStr:Ljava/lang/String;
    if-eqz v18, :cond_61

    .line 6619
    :try_start_55
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 6620
    .local v16, timeStamp:J
    move-object v0, v4

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(JLjava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_61} :catch_f7

    .line 6624
    .end local v16           #timeStamp:J
    :cond_61
    :goto_61
    const/4 v6, 0x0

    const-string v7, "userId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6625
    .local v11, idStr:Ljava/lang/String;
    if-eqz v11, :cond_c8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_72
    iput v6, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 6626
    iget v6, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gtz v6, :cond_8b

    .line 6627
    const/4 v6, 0x0

    const-string v7, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6628
    .local v14, sharedIdStr:Ljava/lang/String;
    if-eqz v14, :cond_ca

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_89
    iput v6, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 6630
    .end local v14           #sharedIdStr:Ljava/lang/String;
    :cond_8b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 6633
    .end local v8           #versionCode:I
    .local v12, outerDepth:I
    :cond_8f
    :goto_8f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_eb

    const/4 v6, 0x3

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_a5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v12, :cond_eb

    .line 6635
    :cond_a5
    const/4 v6, 0x3

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_8f

    const/4 v6, 0x4

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_8f

    .line 6640
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 6641
    .local v15, tagName:Ljava/lang/String;
    const-string v6, "perms"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 6642
    iget-object v6, v4, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_8f

    .line 6625
    .end local v12           #outerDepth:I
    .end local v15           #tagName:Ljava/lang/String;
    .end local v19           #type:I
    .restart local v8       #versionCode:I
    :cond_c8
    const/4 v6, 0x0

    goto :goto_72

    .line 6628
    .restart local v14       #sharedIdStr:Ljava/lang/String;
    :cond_ca
    const/4 v6, 0x0

    goto :goto_89

    .line 6645
    .end local v8           #versionCode:I
    .end local v14           #sharedIdStr:Ljava/lang/String;
    .restart local v12       #outerDepth:I
    .restart local v15       #tagName:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_cc
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 6648
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8f

    .line 6651
    .end local v15           #tagName:Ljava/lang/String;
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6652
    return-void

    .line 6607
    .end local v4           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v9           #pkgFlags:I
    .end local v11           #idStr:Ljava/lang/String;
    .end local v12           #outerDepth:I
    .end local v18           #timeStampStr:Ljava/lang/String;
    .end local v19           #type:I
    .restart local v8       #versionCode:I
    :catch_f4
    move-exception v6

    goto/16 :goto_36

    .line 6621
    .restart local v4       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v9       #pkgFlags:I
    .restart local v18       #timeStampStr:Ljava/lang/String;
    :catch_f7
    move-exception v6

    goto/16 :goto_61
.end method

.method private readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 6852
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 6855
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 6857
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 6862
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6863
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 6864
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6865
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 6866
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6877
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 6868
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_38

    .line 6873
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_38

    .line 6879
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 11
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 6948
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 6951
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 6953
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 6958
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6959
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 6960
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6961
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 6962
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6973
    .end local v0           #name:Ljava/lang/String;
    :goto_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 6964
    .restart local v0       #name:Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_36

    .line 6969
    .end local v0           #name:Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_36

    .line 6975
    .end local v2           #tagName:Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 6528
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6530
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_8

    move v2, p4

    .line 6540
    :goto_7
    return v2

    .line 6533
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    .line 6534
    :catch_d
    move-exception v0

    .line 6535
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move v2, p4

    .line 6540
    goto :goto_7
.end method

.method private readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 31
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6656
    const/16 v17, 0x0

    .line 6657
    .local v17, name:Ljava/lang/String;
    const/4 v14, 0x0

    .line 6658
    .local v14, idStr:Ljava/lang/String;
    const/16 v21, 0x0

    .line 6659
    .local v21, sharedIdStr:Ljava/lang/String;
    const/4 v11, 0x0

    .line 6660
    .local v11, codePathStr:Ljava/lang/String;
    const/16 v20, 0x0

    .line 6661
    .local v20, resourcePathStr:Ljava/lang/String;
    const/16 v22, 0x0

    .line 6662
    .local v22, systemStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 6663
    .local v16, installerPackageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 6665
    .local v10, pkgFlags:I
    const-wide/16 v24, 0x0

    .line 6666
    .local v24, timeStamp:J
    const/16 v19, 0x0

    .line 6667
    .local v19, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    const/16 v28, 0x0

    .line 6668
    .local v28, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6670
    .local v9, versionCode:I
    const/4 v5, 0x0

    :try_start_15
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 6671
    const/4 v5, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6672
    const/4 v5, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 6673
    const/4 v5, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6674
    const/4 v5, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 6675
    const/4 v5, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_55} :catch_354

    move-result-object v28

    .line 6676
    if-eqz v28, :cond_5c

    .line 6678
    :try_start_58
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_5b} :catch_34e

    move-result v9

    .line 6682
    :cond_5c
    :goto_5c
    const/4 v5, 0x0

    :try_start_5d
    const-string v6, "system"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6683
    const/4 v5, 0x0

    const-string v6, "installer"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6684
    if-eqz v22, :cond_134

    .line 6685
    const-string v5, "true"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 6686
    or-int/lit8 v10, v10, 0x1

    .line 6693
    :cond_81
    :goto_81
    const/4 v5, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_8b} :catch_354

    move-result-object v26

    .line 6694
    .local v26, timeStampStr:Ljava/lang/String;
    if-eqz v26, :cond_92

    .line 6696
    :try_start_8e
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_91} :catch_351

    move-result-wide v24

    .line 6702
    :cond_92
    :goto_92
    if-eqz v14, :cond_138

    :try_start_94
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v8, v5

    .line 6703
    .local v8, userId:I
    :goto_99
    if-nez v20, :cond_9d

    .line 6704
    move-object/from16 v20, v11

    .line 6706
    :cond_9d
    if-nez v17, :cond_13c

    .line 6707
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_ba} :catch_354

    move-object/from16 v4, v19

    .line 6756
    .end local v8           #userId:I
    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v26           #timeStampStr:Ljava/lang/String;
    .local v4, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :goto_bc
    if-eqz v4, :cond_34a

    .line 6757
    move-object/from16 v0, v16

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 6758
    const/4 v5, 0x0

    const-string v6, "enabled"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6759
    .local v13, enabledStr:Ljava/lang/String;
    if-eqz v13, :cond_2d6

    .line 6760
    const-string v5, "true"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_288

    .line 6761
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 6775
    :goto_db
    const/4 v5, 0x0

    const-string v6, "installStatus"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6776
    .local v15, installStatusStr:Ljava/lang/String;
    if-eqz v15, :cond_f3

    .line 6777
    const-string v5, "false"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2db

    .line 6778
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 6784
    :cond_f3
    :goto_f3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 6787
    .local v18, outerDepth:I
    :cond_f7
    :goto_f7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, type:I
    const/4 v5, 0x1

    move/from16 v0, v27

    move v1, v5

    if-eq v0, v1, :cond_34d

    const/4 v5, 0x3

    move/from16 v0, v27

    move v1, v5

    if-ne v0, v1, :cond_110

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_34d

    .line 6789
    :cond_110
    const/4 v5, 0x3

    move/from16 v0, v27

    move v1, v5

    if-eq v0, v1, :cond_f7

    const/4 v5, 0x4

    move/from16 v0, v27

    move v1, v5

    if-eq v0, v1, :cond_f7

    .line 6794
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 6795
    .local v23, tagName:Ljava/lang/String;
    const-string v5, "disabled-components"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 6796
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f7

    .line 6691
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v13           #enabledStr:Ljava/lang/String;
    .end local v15           #installStatusStr:Ljava/lang/String;
    .end local v18           #outerDepth:I
    .end local v23           #tagName:Ljava/lang/String;
    .end local v27           #type:I
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_134
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_81

    .line 6702
    .restart local v26       #timeStampStr:Ljava/lang/String;
    :cond_138
    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_99

    .line 6710
    .restart local v8       #userId:I
    :cond_13c
    if-nez v11, :cond_15d

    .line 6711
    const/4 v5, 0x5

    :try_start_13f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move-object/from16 v4, v19

    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_bc

    .line 6714
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_15d
    if-lez v8, :cond_1df

    .line 6715
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)Lcom/android/server/PackageManagerService$PackageSetting;
    :try_end_175
    .catch Ljava/lang/NumberFormatException; {:try_start_13f .. :try_end_175} :catch_354

    move-result-object v4

    .line 6719
    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    if-nez v4, :cond_1d5

    .line 6720
    const/4 v5, 0x6

    :try_start_179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure adding uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while parsing settings at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_19d} :catch_19f

    goto/16 :goto_bc

    .line 6750
    :catch_19f
    move-exception v5

    move-object v12, v5

    .line 6751
    .end local v8           #userId:I
    .end local v26           #timeStampStr:Ljava/lang/String;
    .local v12, e:Ljava/lang/NumberFormatException;
    :goto_1a1
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_bc

    .line 6725
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    .restart local v26       #timeStampStr:Ljava/lang/String;
    :cond_1d5
    :try_start_1d5
    move-object v0, v4

    move-wide/from16 v1, v24

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(JLjava/lang/String;)V
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1d5 .. :try_end_1dd} :catch_19f

    goto/16 :goto_bc

    .line 6727
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_1df
    if-eqz v21, :cond_252

    .line 6728
    if-eqz v21, :cond_216

    :try_start_1e3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v8, v5

    .line 6730
    :goto_1e8
    if-lez v8, :cond_219

    .line 6731
    new-instance v4, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v4 .. v10}, Lcom/android/server/PackageManagerService$Settings$PendingPackage;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)V
    :try_end_200
    .catch Ljava/lang/NumberFormatException; {:try_start_1e3 .. :try_end_200} :catch_354

    .line 6733
    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :try_start_200
    move-object v0, v4

    move-wide/from16 v1, v24

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSettingBase;->setTimeStamp(JLjava/lang/String;)V

    .line 6734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    move-object v5, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_214
    .catch Ljava/lang/NumberFormatException; {:try_start_200 .. :try_end_214} :catch_19f

    goto/16 :goto_bc

    .line 6728
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_216
    const/4 v5, 0x0

    move v8, v5

    goto :goto_1e8

    .line 6739
    :cond_219
    const/4 v5, 0x5

    :try_start_21a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad sharedId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move-object/from16 v4, v19

    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_bc

    .line 6745
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_252
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_284
    .catch Ljava/lang/NumberFormatException; {:try_start_21a .. :try_end_284} :catch_354

    move-object/from16 v4, v19

    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_bc

    .line 6762
    .end local v8           #userId:I
    .end local v26           #timeStampStr:Ljava/lang/String;
    .restart local v13       #enabledStr:Ljava/lang/String;
    :cond_288
    const-string v5, "false"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_295

    .line 6763
    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_db

    .line 6764
    :cond_295
    const-string v5, "default"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a2

    .line 6765
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_db

    .line 6767
    :cond_2a2
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad enabled value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_db

    .line 6773
    :cond_2d6
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_db

    .line 6780
    .restart local v15       #installStatusStr:Ljava/lang/String;
    :cond_2db
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    goto/16 :goto_f3

    .line 6797
    .restart local v18       #outerDepth:I
    .restart local v23       #tagName:Ljava/lang/String;
    .restart local v27       #type:I
    :cond_2e0
    const-string v5, "enabled-components"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f5

    .line 6798
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f7

    .line 6799
    :cond_2f5
    const-string v5, "sigs"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_310

    .line 6800
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_f7

    .line 6801
    :cond_310
    const-string v5, "perms"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32a

    .line 6802
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->loadedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 6804
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_f7

    .line 6806
    :cond_32a
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <package>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 6809
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f7

    .line 6813
    .end local v13           #enabledStr:Ljava/lang/String;
    .end local v15           #installStatusStr:Ljava/lang/String;
    .end local v18           #outerDepth:I
    .end local v23           #tagName:Ljava/lang/String;
    .end local v27           #type:I
    :cond_34a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6815
    :cond_34d
    return-void

    .line 6679
    .end local v4           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v19       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :catch_34e
    move-exception v5

    goto/16 :goto_5c

    .line 6697
    .restart local v26       #timeStampStr:Ljava/lang/String;
    :catch_351
    move-exception v5

    goto/16 :goto_92

    .line 6750
    .end local v26           #timeStampStr:Ljava/lang/String;
    :catch_354
    move-exception v5

    move-object v12, v5

    move-object/from16 v4, v19

    .end local v19           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v4       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_1a1
.end method

.method private readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 6546
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 6549
    .local v3, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_d1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_d1

    .line 6551
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 6556
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 6557
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 6558
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6559
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6560
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6561
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_8b

    if-eqz v6, :cond_8b

    .line 6562
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 6563
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    if-eqz v1, :cond_89

    const/4 v9, 0x2

    :goto_4a
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6567
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v1, :cond_7f

    .line 6568
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 6569
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 6570
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 6571
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 6572
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 6574
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 6576
    iput-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 6578
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_7f
    iget-object v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6590
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_84
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 6563
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_89
    const/4 v9, 0x0

    goto :goto_4a

    .line 6580
    .end local v1           #dynamic:Z
    :cond_8b
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_84

    .line 6585
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_a7
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_84

    .line 6592
    .end local v7           #tagName:Ljava/lang/String;
    :cond_d1
    return-void
.end method

.method private readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 7010
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 7013
    .local v0, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7a

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_7a

    .line 7015
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 7020
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7021
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 7022
    new-instance v1, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7023
    .local v1, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_35

    .line 7024
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4, v1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_6

    .line 7026
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_6

    .line 7032
    .end local v1           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 7035
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 7038
    .end local v2           #tagName:Ljava/lang/String;
    :cond_7a
    return-void
.end method

.method private readPreferredPackagesLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 6979
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 6982
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_6e

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_6e

    .line 6984
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 6989
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6990
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 6991
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6992
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 6993
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7004
    .end local v0           #name:Ljava/lang/String;
    :goto_34
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 6995
    .restart local v0       #name:Ljava/lang/String;
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-package> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_34

    .line 7000
    .end local v0           #name:Ljava/lang/String;
    :cond_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_34

    .line 7006
    .end local v2           #tagName:Ljava/lang/String;
    :cond_6e
    return-void
.end method

.method private readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6883
    const/4 v2, 0x0

    .line 6884
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 6885
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 6886
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 6888
    .local v5, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/4 v9, 0x0

    :try_start_5
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6889
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6890
    if-eqz v1, :cond_77

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 6891
    .local v8, userId:I
    :goto_19
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 6892
    or-int/lit8 v4, v4, 0x1

    .line 6894
    :cond_2a
    if-nez v2, :cond_7a

    .line 6895
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_47} :catch_ac

    .line 6917
    .end local v8           #userId:I
    :cond_47
    :goto_47
    if-eqz v5, :cond_135

    .line 6918
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 6921
    .local v3, outerDepth:I
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_138

    const/4 v9, 0x3

    if-ne v7, v9, :cond_5d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_138

    .line 6923
    :cond_5d
    const/4 v9, 0x3

    if-eq v7, v9, :cond_4d

    const/4 v9, 0x4

    if-eq v7, v9, :cond_4d

    .line 6928
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6929
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 6930
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4d

    .line 6890
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_77
    const/4 v9, 0x0

    move v8, v9

    goto :goto_19

    .line 6898
    .restart local v8       #userId:I
    :cond_7a
    if-nez v8, :cond_df

    .line 6899
    const/4 v9, 0x5

    :try_start_7d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_ab} :catch_ac

    goto :goto_47

    .line 6910
    .end local v8           #userId:I
    :catch_ac
    move-exception v9

    move-object v0, v9

    .line 6911
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_47

    .line 6904
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_df
    :try_start_df
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_47

    .line 6905
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_df .. :try_end_104} :catch_ac

    goto/16 :goto_47

    .line 6931
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_106
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 6932
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_4d

    .line 6934
    :cond_115
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <shared-user>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 6937
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4d

    .line 6942
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_135
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6944
    :cond_138
    return-void
.end method

.method private removePackageLP(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 6062
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6063
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_41

    .line 6064
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6065
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_39

    .line 6066
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6067
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 6068
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6069
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 6070
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 6077
    :goto_38
    return v1

    .line 6073
    :cond_39
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 6074
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_38

    .line 6077
    :cond_41
    const/4 v1, -0x1

    goto :goto_38
.end method

.method private removeUserIdLP(I)V
    .registers 6
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 6122
    if-lt p1, v3, :cond_15

    .line 6123
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6124
    .local v0, N:I
    sub-int v1, p1, v3

    .line 6125
    .local v1, index:I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6129
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_14
    :goto_14
    return-void

    .line 6127
    :cond_15
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14
.end method

.method private updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .registers 13
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 6025
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_e

    .line 6026
    :cond_6
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    :cond_d
    :goto_d
    return-void

    .line 6030
    :cond_e
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v8, :cond_d

    .line 6033
    iget-object v6, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 6035
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6036
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 6037
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 6040
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6041
    .local v5, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 6042
    const/4 v7, 0x1

    .line 6046
    .end local v5           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4e
    if-nez v7, :cond_1c

    .line 6048
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6049
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 6053
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_5b
    move-object v4, p2

    .line 6054
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6055
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 6056
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    .line 6057
    goto :goto_62

    .line 6058
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_7d
    iput-object v4, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    goto :goto_d
.end method


# virtual methods
.method addPackageLP(Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 14
    .parameter "name"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    const/4 v6, 0x0

    .line 5847
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5848
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_2a

    .line 5849
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-ne v1, p4, :cond_11

    move-object v1, v0

    .line 5862
    :goto_10
    return-object v1

    .line 5852
    :cond_11
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move-object v1, v6

    .line 5854
    goto :goto_10

    .line 5856
    :cond_2a
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v0           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V

    .line 5857
    .restart local v0       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iput p4, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 5858
    invoke-direct {p0, p4, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5859
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 5860
    goto :goto_10

    :cond_43
    move-object v1, v6

    .line 5862
    goto :goto_10
.end method

.method addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .registers 9
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v4, 0x0

    .line 5866
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 5867
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v0, :cond_2a

    .line 5868
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_11

    move-object v1, v0

    .line 5881
    :goto_10
    return-object v1

    .line 5871
    :cond_11
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    move-object v1, v4

    .line 5873
    goto :goto_10

    .line 5875
    :cond_2a
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 5876
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iput p2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 5877
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5878
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 5879
    goto :goto_10

    :cond_3e
    move-object v1, v4

    .line 5881
    goto :goto_10
.end method

.method disableSystemPackageLP(Ljava/lang/String;)I
    .registers 7
    .parameter "name"

    .prologue
    .line 5813
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5814
    .local v1, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v1, :cond_2a

    .line 5815
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an installed package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    const/4 v2, -0x1

    .line 5826
    :goto_29
    return v2

    .line 5818
    :cond_2a
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5820
    .local v0, dp:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_4d

    .line 5821
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_48

    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_48

    .line 5822
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5824
    :cond_48
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5826
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I

    move-result v2

    goto :goto_29
.end method

.method enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 11
    .parameter "name"

    .prologue
    .line 5830
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5831
    .local v7, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v7, :cond_2a

    .line 5832
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    const/4 v0, 0x0

    .line 5842
    :goto_29
    return-object v0

    .line 5836
    :cond_2a
    iget-object v0, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3e

    iget-object v0, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    .line 5837
    iget-object v0, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5839
    :cond_3e
    iget-object v2, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v3, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    iget v4, v7, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v8

    .line 5841
    .local v8, ret:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    .line 5842
    goto :goto_29
.end method

.method public getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 5
    .parameter "name"

    .prologue
    .line 7061
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7062
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7063
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v1

    return-object v0

    .line 7064
    .end local v0           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v2
.end method

.method getInstallStatus(Ljava/lang/String;)I
    .registers 4
    .parameter "pkgName"

    .prologue
    .line 5781
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5782
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_f

    .line 5783
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    .line 5785
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "pkgName"

    .prologue
    .line 5776
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5777
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method getListOfIncompleteInstallPackages()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6382
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6383
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6384
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6385
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6387
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6388
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_14

    .line 6389
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 6392
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    return-object v4
.end method

.method getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 18
    .parameter "pkg"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 5741
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5742
    .local v1, name:Ljava/lang/String;
    iget v5, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v9

    .line 5744
    .local v9, p:Lcom/android/server/PackageManagerService$PackageSetting;
    return-object v9
.end method

.method getReadMessagesLP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6378
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .registers 8
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 5790
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 5791
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_46

    .line 5792
    if-nez p3, :cond_e

    .line 5793
    const/4 v1, 0x0

    .line 5809
    :goto_d
    return-object v1

    .line 5795
    :cond_e
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 5797
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 5801
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ltz v1, :cond_46

    .line 5805
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v1, v0

    .line 5809
    goto :goto_d
.end method

.method public getUserIdLP(I)Ljava/lang/Object;
    .registers 6
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 6112
    if-lt p1, v3, :cond_17

    .line 6113
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6114
    .local v0, N:I
    sub-int v1, p1, v3

    .line 6115
    .local v1, index:I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6117
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_14
    return-object v2

    .line 6115
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    .line 6117
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_17
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14
.end method

.method isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z
    .registers 7
    .parameter "componentInfo"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    .line 7068
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7077
    .local v0, packageSettings:Lcom/android/server/PackageManagerService$PackageSetting;
    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_36

    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v1, :cond_2c

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-eq v1, v3, :cond_22

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2c

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    :cond_22
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_2c
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_36
    move v1, v3

    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
.end method

.method peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 3
    .parameter "name"

    .prologue
    .line 5748
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    return-object p0
.end method

.method readLP()Z
    .registers 27

    .prologue
    .line 6396
    const/16 v22, 0x0

    .line 6397
    .local v22, str:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 6399
    :try_start_d
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_37e

    .line 6400
    .end local v22           #str:Ljava/io/FileInputStream;
    .local v23, str:Ljava/io/FileInputStream;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6401
    const-string v3, "PackageManager"

    const-string v4, "Reading from backup settings file!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2b} :catch_381

    move-object/from16 v22, v23

    .line 6407
    .end local v23           #str:Ljava/io/FileInputStream;
    .restart local v22       #str:Ljava/io/FileInputStream;
    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6410
    if-nez v22, :cond_64

    .line 6411
    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_55

    .line 6412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6413
    const-string v3, "PackageManager"

    const-string v4, "No current settings file!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    const/4 v3, 0x0

    .line 6523
    :goto_54
    return v3

    .line 6416
    :cond_55
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v22           #str:Ljava/io/FileInputStream;
    .restart local v23       #str:Ljava/io/FileInputStream;
    move-object/from16 v22, v23

    .line 6418
    .end local v23           #str:Ljava/io/FileInputStream;
    .restart local v22       #str:Ljava/io/FileInputStream;
    :cond_64
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 6419
    .local v20, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6423
    :cond_71
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, type:I
    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_81

    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_71

    .line 6427
    :cond_81
    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_9a

    .line 6428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6429
    const-string v3, "PackageManager"

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    const/4 v3, 0x0

    goto :goto_54

    .line 6433
    :cond_9a
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 6435
    .local v18, outerDepth:I
    :cond_9e
    :goto_9e
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_241

    const/4 v3, 0x3

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_b7

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v18

    if-le v0, v1, :cond_241

    .line 6437
    :cond_b7
    const/4 v3, 0x3

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_9e

    const/4 v3, 0x4

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_9e

    .line 6442
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 6443
    .local v24, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 6444
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_d9} :catch_da
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_d9} :catch_18c

    goto :goto_9e

    .line 6466
    .end local v18           #outerDepth:I
    .end local v20           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v24           #tagName:Ljava/lang/String;
    .end local v25           #type:I
    :catch_da
    move-exception v3

    move-object v13, v3

    .line 6467
    .local v13, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6468
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6476
    .end local v13           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 6477
    .local v12, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_10c
    if-ge v14, v12, :cond_2d5

    .line 6478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    .line 6479
    .local v21, pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v15

    .line 6480
    .local v15, idObj:Ljava/lang/Object;
    if-eqz v15, :cond_24f

    instance-of v3, v15, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_24f

    .line 6481
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v15

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->codePath:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->resourcePath:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->versionCode:I

    move v8, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->pkgFlags:I

    move v9, v0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v19

    .line 6484
    .local v19, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v19, :cond_246

    .line 6485
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6477
    .end local v19           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_16f
    add-int/lit8 v14, v14, 0x1

    goto :goto_10c

    .line 6445
    .end local v12           #N:I
    .end local v14           #i:I
    .end local v15           #idObj:Ljava/lang/Object;
    .end local v21           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    .restart local v18       #outerDepth:I
    .restart local v20       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24       #tagName:Ljava/lang/String;
    .restart local v25       #type:I
    :cond_172
    :try_start_172
    const-string v3, "permissions"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 6446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_18a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_18a} :catch_da
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_18a} :catch_18c

    goto/16 :goto_9e

    .line 6470
    .end local v18           #outerDepth:I
    .end local v20           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v24           #tagName:Ljava/lang/String;
    .end local v25           #type:I
    :catch_18c
    move-exception v3

    move-object v13, v3

    .line 6471
    .local v13, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6472
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_102

    .line 6447
    .end local v13           #e:Ljava/io/IOException;
    .restart local v18       #outerDepth:I
    .restart local v20       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24       #tagName:Ljava/lang/String;
    .restart local v25       #type:I
    :cond_1b6
    :try_start_1b6
    const-string v3, "permission-trees"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 6448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6449
    :cond_1d0
    const-string v3, "shared-user"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 6450
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6451
    :cond_1e4
    const-string v3, "preferred-packages"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 6452
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPreferredPackagesLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6453
    :cond_1f8
    const-string v3, "preferred-activities"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 6454
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6455
    :cond_20c
    const-string v3, "updated-package"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_220

    .line 6456
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6458
    :cond_220
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6460
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 6464
    .end local v24           #tagName:Ljava/lang/String;
    :cond_241
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_244
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b6 .. :try_end_244} :catch_da
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_244} :catch_18c

    goto/16 :goto_102

    .line 6489
    .end local v18           #outerDepth:I
    .end local v20           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v25           #type:I
    .restart local v12       #N:I
    .restart local v14       #i:I
    .restart local v15       #idObj:Ljava/lang/Object;
    .restart local v19       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v21       #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_246
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    goto/16 :goto_16f

    .line 6490
    .end local v19           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_24f
    if-eqz v15, :cond_293

    .line 6491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 6494
    .local v16, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6495
    const-string v3, "PackageManager"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16f

    .line 6497
    .end local v16           #msg:Ljava/lang/String;
    :cond_293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 6500
    .restart local v16       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6501
    const-string v3, "PackageManager"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16f

    .line 6504
    .end local v15           #idObj:Ljava/lang/Object;
    .end local v16           #msg:Ljava/lang/String;
    .end local v21           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPreferredPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 6507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6508
    const/4 v14, 0x0

    :goto_2ef
    if-ge v14, v12, :cond_336

    .line 6509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPreferredPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 6510
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6511
    .restart local v19       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v19, :cond_31a

    .line 6512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6508
    :goto_317
    add-int/lit8 v14, v14, 0x1

    goto :goto_2ef

    .line 6514
    :cond_31a
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown preferred package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_317

    .line 6517
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPreferredPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6523
    const/4 v3, 0x1

    goto/16 :goto_54

    .line 6402
    .end local v12           #N:I
    .end local v14           #i:I
    :catch_37e
    move-exception v3

    goto/16 :goto_2d

    .end local v22           #str:Ljava/io/FileInputStream;
    .restart local v23       #str:Ljava/io/FileInputStream;
    :catch_381
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #str:Ljava/io/FileInputStream;
    .restart local v22       #str:Ljava/io/FileInputStream;
    goto/16 :goto_2d
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .registers 5
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 5759
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5760
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_13

    .line 5761
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_13

    .line 5762
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallStatus(I)V

    .line 5765
    :cond_13
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 5769
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5770
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_d

    .line 5771
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 5773
    :cond_d
    return-void
.end method

.method writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 13
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v9, "updated-package"

    const-string v8, "perms"

    const-string v7, "name"

    const-string v6, "item"

    .line 6239
    const-string v3, "updated-package"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6240
    const-string v3, "name"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6241
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6242
    const-string v3, "ts"

    invoke-virtual {p2}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStampStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6243
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6244
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 6245
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6247
    :cond_41
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_8f

    .line 6248
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6254
    :goto_50
    const-string v3, "perms"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6255
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_9b

    .line 6260
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6261
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 6262
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_5f

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_5f

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_5f

    .line 6265
    const-string v3, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6266
    const-string v3, "name"

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6267
    const-string v3, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5f

    .line 6251
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_8f
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_50

    .line 6271
    :cond_9b
    const-string v3, "perms"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6272
    const-string v3, "updated-package"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6273
    return-void
.end method

.method writeLP()V
    .registers 21

    .prologue
    .line 6136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_30

    .line 6137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_21

    .line 6138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 6140
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6143
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 6146
    :try_start_39
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6149
    .local v14, str:Ljava/io/FileOutputStream;
    new-instance v13, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v13}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6150
    .local v13, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v16, "utf-8"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6151
    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6152
    const-string v16, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v17, 0x1

    move-object v0, v13

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 6154
    const/16 v16, 0x0

    const-string v17, "packages"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6156
    const/16 v16, 0x0

    const-string v17, "permission-trees"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_97
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_bb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 6158
    .local v5, bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_aa} :catch_f5

    goto :goto_97

    .line 6226
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v14           #str:Ljava/io/FileOutputStream;
    :catch_ab
    move-exception v16

    move-object/from16 v6, v16

    .line 6227
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "PackageManager"

    const-string v17, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6235
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_ba
    return-void

    .line 6160
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v13       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14       #str:Ljava/io/FileOutputStream;
    :cond_bb
    const/16 v16, 0x0

    :try_start_bd
    const-string v17, "permission-trees"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6162
    const/16 v16, 0x0

    const-string v17, "permissions"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_105

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 6164
    .restart local v5       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_f4} :catch_ab
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_f4} :catch_f5

    goto :goto_e1

    .line 6229
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v14           #str:Ljava/io/FileOutputStream;
    :catch_f5
    move-exception v16

    move-object/from16 v6, v16

    .line 6230
    .local v6, e:Ljava/io/IOException;
    const-string v16, "PackageManager"

    const-string v17, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    .line 6166
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v13       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14       #str:Ljava/io/FileOutputStream;
    :cond_105
    const/16 v16, 0x0

    :try_start_107
    const-string v17, "permissions"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_133

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6169
    .local v12, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_11f

    .line 6172
    .end local v12           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_141
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_155

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6173
    .restart local v12       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_141

    .line 6176
    .end local v12           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_155
    const/16 v16, 0x0

    const-string v17, "preferred-packages"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6178
    .local v4, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_16c
    if-ge v7, v4, :cond_1ab

    .line 6179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredPackages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6180
    .restart local v12       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6181
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6182
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6178
    add-int/lit8 v7, v7, 0x1

    goto :goto_16c

    .line 6184
    .end local v12           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1ab
    const/16 v16, 0x0

    const-string v17, "preferred-packages"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6186
    const/16 v16, 0x0

    const-string v17, "preferred-activities"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1f9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6188
    .local v11, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6189
    invoke-virtual {v11, v13}, Lcom/android/server/PackageManagerService$PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 6190
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d1

    .line 6192
    .end local v11           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_1f9
    const/16 v16, 0x0

    const-string v17, "preferred-activities"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :goto_213
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2cd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 6195
    .local v15, usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v16, 0x0

    const-string v17, "shared-user"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6196
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6197
    const/16 v16, 0x0

    const-string v17, "userId"

    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6199
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v16, v0

    const-string v17, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6200
    const/16 v16, 0x0

    const-string v17, "perms"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6201
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_281
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2b3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 6202
    .local v10, name:Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6203
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6204
    const/16 v16, 0x0

    const-string v17, "item"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_281

    .line 6206
    .end local v10           #name:Ljava/lang/String;
    :cond_2b3
    const/16 v16, 0x0

    const-string v17, "perms"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6207
    const/16 v16, 0x0

    const-string v17, "shared-user"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_213

    .line 6210
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_2cd
    const/16 v16, 0x0

    const-string v17, "packages"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6212
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6214
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 6215
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 6219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 6220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1b4

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_2fe} :catch_ab
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_2fe} :catch_f5

    goto/16 :goto_ba
.end method

.method writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 13
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v9, "disabled-components"

    const-string v8, "false"

    const-string v7, "name"

    const-string v6, "item"

    .line 6277
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6278
    const-string v2, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6279
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6280
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 6281
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6283
    :cond_2d
    const-string v2, "system"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bd

    const-string v3, "true"

    :goto_37
    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6286
    const-string v2, "ts"

    invoke-virtual {p2}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStampStr()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6287
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6288
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_c2

    .line 6289
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6295
    :goto_5d
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-eqz v2, :cond_6d

    .line 6296
    const-string v2, "enabled"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ce

    const-string v3, "true"

    :goto_6a
    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6300
    :cond_6d
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    if-nez v2, :cond_78

    .line 6301
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6303
    :cond_78
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_83

    .line 6304
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6306
    :cond_83
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6307
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_d7

    .line 6308
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6309
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_d2

    .line 6314
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6315
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6316
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6317
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a1

    .line 6283
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_bd
    const-string v3, "false"

    move-object v3, v8

    goto/16 :goto_37

    .line 6292
    :cond_c2
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5d

    .line 6296
    :cond_ce
    const-string v3, "false"

    move-object v3, v8

    goto :goto_6a

    .line 6320
    :cond_d2
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6322
    :cond_d7
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_10b

    .line 6323
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6324
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6325
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6326
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6327
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ea

    .line 6329
    .end local v1           #name:Ljava/lang/String;
    :cond_106
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6331
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_10b
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_13f

    .line 6332
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6333
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_11e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6334
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6335
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6336
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11e

    .line 6338
    .end local v1           #name:Ljava/lang/String;
    :cond_13a
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6341
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_13f
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6342
    return-void
.end method

.method writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    .registers 8
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "item"

    .line 6346
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_68

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 6348
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6349
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6350
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6353
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    .line 6354
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_69

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    .line 6356
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_2d
    if-eqz v0, :cond_63

    .line 6357
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6358
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_45

    .line 6359
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6362
    :cond_45
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_54

    .line 6363
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6366
    :cond_54
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v1, :cond_63

    .line 6368
    const-string v1, "protection"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6373
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_63
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6375
    :cond_68
    return-void

    .line 6354
    :cond_69
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    goto :goto_2d
.end method
