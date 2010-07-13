.class Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;
.super Ljava/lang/Object;
.source "FavoriteContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->initFavoriteContactsList(Landroid/database/Cursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

.field final synthetic val$cur:I


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;->this$1:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    iput p2, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;->val$cur:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;->this$1:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    iget-object v0, v0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1600(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    move-result-object v0

    iget v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;->val$cur:I

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->setHoriProgress(I)V

    .line 1412
    return-void
.end method
