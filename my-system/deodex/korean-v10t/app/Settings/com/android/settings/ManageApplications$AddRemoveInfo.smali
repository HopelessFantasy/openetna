.class Lcom/android/settings/ManageApplications$AddRemoveInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddRemoveInfo"
.end annotation


# instance fields
.field add:Z

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter "pPkgName"
    .parameter "pAdd"

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AddRemoveInfo;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-object p2, p0, Lcom/android/settings/ManageApplications$AddRemoveInfo;->pkgName:Ljava/lang/String;

    .line 1298
    iput-boolean p3, p0, Lcom/android/settings/ManageApplications$AddRemoveInfo;->add:Z

    .line 1299
    return-void
.end method
