.class final Lcom/android/server/PackageManagerService$Settings$PendingPackage;
.super Lcom/android/server/PackageManagerService$PackageSettingBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingPackage"
.end annotation


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)V
    .registers 13
    .parameter "name"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "sharedId"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    .line 5719
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$PackageSettingBase;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V

    .line 5720
    iput p4, p0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    .line 5721
    return-void
.end method
