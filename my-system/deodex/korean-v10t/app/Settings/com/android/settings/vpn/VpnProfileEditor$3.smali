.class Lcom/android/settings/vpn/VpnProfileEditor$3;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnProfileEditor;->createServerNamePreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnProfileEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/vpn/VpnProfileEditor$3;->this$0:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 126
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, v:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor$3;->this$0:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-static {v1}, Lcom/android/settings/vpn/VpnProfileEditor;->access$100(Lcom/android/settings/vpn/VpnProfileEditor;)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor$3;->this$0:Lcom/android/settings/vpn/VpnProfileEditor;

    const v2, 0x7f08040a

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    return v1
.end method
