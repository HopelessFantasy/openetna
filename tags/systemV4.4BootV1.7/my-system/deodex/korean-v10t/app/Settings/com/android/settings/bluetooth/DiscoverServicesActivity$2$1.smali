.class Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;
.super Ljava/lang/Object;
.source "DiscoverServicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;->onGetRemoteServicesResult(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$serviceMask:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->this$1:Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->val$address:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->val$serviceMask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 123
    const-string v0, "DiscoverServicesActivity"

    const-string v1, "Posting UI Update to UI Thread() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->this$1:Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->val$address:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;->val$serviceMask:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->access$100(Lcom/android/settings/bluetooth/DiscoverServicesActivity;Ljava/lang/String;I)V

    .line 125
    return-void
.end method
