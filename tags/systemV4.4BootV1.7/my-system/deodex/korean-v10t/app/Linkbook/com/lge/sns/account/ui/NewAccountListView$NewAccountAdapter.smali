.class public Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NewAccountListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/ui/NewAccountListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewAccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/sns/account/ui/NewAccountListView;


# direct methods
.method public constructor <init>(Lcom/lge/sns/account/ui/NewAccountListView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p4, newList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    iput-object p1, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    .line 36
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    iput-object p4, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->items:Ljava/util/List;

    .line 38
    return-void
.end method

.method private getAccountIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "account"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, srcName:Ljava/lang/String;
    :try_start_1c
    iget-object v3, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/NewAccountListView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 71
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_34

    .line 72
    iget-object v3, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/NewAccountListView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "default.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 74
    :cond_34
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_48

    move-result-object v0

    .line 77
    .end local v1           #is:Ljava/io/InputStream;
    :goto_38
    if-nez v0, :cond_47

    .line 78
    iget-object v3, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    invoke-virtual {v3}, Lcom/lge/sns/account/ui/NewAccountListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    :cond_47
    return-object v0

    .line 75
    :catch_48
    move-exception v3

    goto :goto_38
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    move-object v3, p2

    .line 43
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_14

    .line 44
    iget-object v5, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/lge/sns/account/ui/NewAccountListView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 45
    .local v4, vi:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 48
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_14
    iget-object v5, p0, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->items:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 50
    .local v0, accountItem:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_41

    .line 51
    const/high16 v5, 0x7f08

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .local v1, account_img:Landroid/widget/ImageView;
    const v5, 0x7f080001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, account_name:Landroid/widget/TextView;
    if-eqz v1, :cond_38

    .line 55
    invoke-direct {p0, v0}, Lcom/lge/sns/account/ui/NewAccountListView$NewAccountAdapter;->getAccountIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_38
    if-eqz v2, :cond_41

    .line 59
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .end local v1           #account_img:Landroid/widget/ImageView;
    .end local v2           #account_name:Landroid/widget/TextView;
    :cond_41
    return-object v3
.end method
