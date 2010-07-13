.class Lcom/android/settings/vpn/VpnSettings$12;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput p2, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 522
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 523
    const/4 v2, -0x1

    if-ne p2, v2, :cond_32

    .line 524
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$700(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 525
    .local v0, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 527
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$900(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2, v0}, Lcom/android/settings/vpn/VpnSettings;->access$1000(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 530
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :cond_32
    return-void
.end method
