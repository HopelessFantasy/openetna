.class Lcom/lge/favoritecontacts/FavoriteContacts$2;
.super Landroid/content/BroadcastReceiver;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$2;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 175
    :cond_14
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$2;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$500(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/render/PhotoMgr;->refreshAllPhotos()V

    .line 177
    :cond_1d
    return-void
.end method
