.class Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GearsPermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/GearsPermissionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecureSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/GearsPermissionsManager;


# direct methods
.method constructor <init>(Landroid/webkit/GearsPermissionsManager;)V
    .registers 3
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;->this$0:Landroid/webkit/GearsPermissionsManager;

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 233
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 236
    iget-object v1, p0, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;->this$0:Landroid/webkit/GearsPermissionsManager;

    iget-object v1, v1, Landroid/webkit/GearsPermissionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "use_location"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 243
    iget-object v0, p0, Landroid/webkit/GearsPermissionsManager$SecureSettingsObserver;->this$0:Landroid/webkit/GearsPermissionsManager;

    invoke-static {v0}, Landroid/webkit/GearsPermissionsManager;->access$000(Landroid/webkit/GearsPermissionsManager;)V

    .line 244
    return-void
.end method
