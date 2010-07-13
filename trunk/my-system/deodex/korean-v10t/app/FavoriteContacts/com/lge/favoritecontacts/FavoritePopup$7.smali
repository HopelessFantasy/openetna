.class Lcom/lge/favoritecontacts/FavoritePopup$7;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setEditBtnOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;

.field final synthetic val$personUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$7;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    iput-object p2, p0, Lcom/lge/favoritecontacts/FavoritePopup$7;->val$personUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoritePopup$7;->val$personUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 688
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$7;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const v2, 0x9c42

    invoke-virtual {v1, v2, v0}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 690
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$7;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    .line 691
    return-void
.end method
