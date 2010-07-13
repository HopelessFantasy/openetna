.class Lcom/lge/favoritecontacts/FavoriteContacts$5;
.super Ljava/lang/Object;
.source "FavoriteContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 992
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$5;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 994
    return-void
.end method
