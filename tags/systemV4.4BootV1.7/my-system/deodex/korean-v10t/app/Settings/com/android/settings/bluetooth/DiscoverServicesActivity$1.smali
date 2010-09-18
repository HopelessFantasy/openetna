.class Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;
.super Ljava/lang/Object;
.source "DiscoverServicesActivity.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DiscoverServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4
    .parameter "serviceName"

    .prologue
    .line 76
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, p:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$1;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->access$000(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    return-void
.end method
