.class Lcom/lge/favoritecontacts/FavoriteContacts$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 139
    const-string v1, "FavoriteContacts"

    const-string v2, " [[[[[ mDBObserver [onChange] ]]]]]]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$002(Lcom/lge/favoritecontacts/FavoriteContacts;Z)Z

    .line 141
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$100(Lcom/lge/favoritecontacts/FavoriteContacts;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$100(Lcom/lge/favoritecontacts/FavoriteContacts;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_42

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "favoriteContacts.synchronizing.action.ALLDIE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$200(Lcom/lge/favoritecontacts/FavoriteContacts;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$300(Lcom/lge/favoritecontacts/FavoriteContacts;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 146
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$1;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$400(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :cond_42
    return-void
.end method
