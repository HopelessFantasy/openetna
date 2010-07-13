.class public Lcom/android/browser/GearsPermissions$Permission;
.super Ljava/lang/Object;
.source "GearsPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Permission"
.end annotation


# instance fields
.field mType:Lcom/android/browser/GearsPermissions$PermissionType;

.field mValue:I


# direct methods
.method constructor <init>(Lcom/android/browser/GearsPermissions$PermissionType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/browser/GearsPermissions$Permission;->mType:Lcom/android/browser/GearsPermissions$PermissionType;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/GearsPermissions$Permission;->mValue:I

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/browser/GearsPermissions$PermissionType;I)V
    .registers 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/browser/GearsPermissions$Permission;->mType:Lcom/android/browser/GearsPermissions$PermissionType;

    .line 99
    iput p2, p0, Lcom/android/browser/GearsPermissions$Permission;->mValue:I

    .line 100
    return-void
.end method


# virtual methods
.method public getType()Lcom/android/browser/GearsPermissions$PermissionType;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/browser/GearsPermissions$Permission;->mType:Lcom/android/browser/GearsPermissions$PermissionType;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/browser/GearsPermissions$Permission;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/browser/GearsPermissions$Permission;->mValue:I

    .line 113
    return-void
.end method
