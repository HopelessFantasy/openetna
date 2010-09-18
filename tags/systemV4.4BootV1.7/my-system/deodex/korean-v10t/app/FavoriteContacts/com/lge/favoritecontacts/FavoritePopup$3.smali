.class Lcom/lge/favoritecontacts/FavoritePopup$3;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->setPhotoImageOperation()V
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
    .line 612
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$3;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoritePopup$3;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->showDialog(I)V

    .line 614
    return-void
.end method
