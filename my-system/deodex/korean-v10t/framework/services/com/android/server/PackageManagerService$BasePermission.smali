.class final Lcom/android/server/PackageManagerService$BasePermission;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BasePermission"
.end annotation


# static fields
.field static final TYPE_BUILTIN:I = 0x1

.field static final TYPE_DYNAMIC:I = 0x2

.field static final TYPE_NORMAL:I


# instance fields
.field gids:[I

.field final name:Ljava/lang/String;

.field pendingInfo:Landroid/content/pm/PermissionInfo;

.field perm:Landroid/content/pm/PackageParser$Permission;

.field final sourcePackage:Ljava/lang/String;

.field final type:I

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "_name"
    .parameter "_sourcePackage"
    .parameter "_type"

    .prologue
    .line 5052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5053
    iput-object p1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    .line 5054
    iput-object p2, p0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    .line 5055
    iput p3, p0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    .line 5056
    return-void
.end method
