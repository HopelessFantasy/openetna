.class Lcom/android/settings/vpn/VpnSettings$17;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->checkVpnConnectionStatusInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$17;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$17;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings;->access$1200(Lcom/android/settings/vpn/VpnSettings;)Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$17;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$700(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->check(Ljava/util/List;)V

    .line 874
    return-void
.end method
