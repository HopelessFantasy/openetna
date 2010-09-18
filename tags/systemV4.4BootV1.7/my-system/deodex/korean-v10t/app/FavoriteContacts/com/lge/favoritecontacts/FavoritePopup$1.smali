.class Lcom/lge/favoritecontacts/FavoritePopup$1;
.super Landroid/content/BroadcastReceiver;
.source "FavoritePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoritePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$1;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v1, "favoriteContacts.synchronizing.action.ALLDIE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 121
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$1;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const/16 v2, -0x12c

    invoke-virtual {v1, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(I)V

    .line 122
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$1;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 124
    :cond_18
    return-void
.end method
