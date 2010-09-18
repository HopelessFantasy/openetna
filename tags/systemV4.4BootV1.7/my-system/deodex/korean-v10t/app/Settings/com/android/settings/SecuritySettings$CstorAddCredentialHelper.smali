.class Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;
.super Ljava/lang/Object;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CstorAddCredentialHelper"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNamespaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter "intent"

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->parse(Landroid/content/Intent;)V

    .line 1656
    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mView:Landroid/view/View;

    return-object p1
.end method

.method private parse(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 1709
    const-string v4, "typeName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mTypeName:Ljava/lang/String;

    .line 1710
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mItemList:Ljava/util/List;

    .line 1711
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mNamespaceList:Ljava/util/List;

    .line 1713
    const/4 v1, 0x0

    .line 1714
    .local v1, i:I
    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1716
    .local v0, blob:[B
    if-nez v0, :cond_56

    .line 1726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1728
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1729
    :goto_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "description"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1731
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_7a

    .line 1738
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mDescription:Ljava/lang/String;

    .line 1739
    return-void

    .line 1720
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_56
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mNamespaceList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namespace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1713
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1735
    .restart local v2       #s:Ljava/lang/String;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_7a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method


# virtual methods
.method getDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method getTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method isPkcs12Keystore()Z
    .registers 3

    .prologue
    .line 1663
    const-string v0, "PKCS12 Keystore"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method saveToStorage()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1687
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->isPkcs12Keystore()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1688
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v6

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mItemList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v7, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mPassword:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v8}, Landroid/security/CertTool;->addPkcs12Keystore([BLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1705
    :goto_1b
    return v5

    .line 1692
    :cond_1c
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v3

    .line 1694
    .local v3, ks:Landroid/security/Keystore;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_27
    if-ge v2, v1, :cond_4b

    .line 1695
    iget-object v5, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1696
    .local v0, blob:[B
    iget-object v5, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mNamespaceList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mName:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1699
    .local v4, ret:I
    if-eqz v4, :cond_48

    move v5, v4

    .line 1700
    goto :goto_1b

    .line 1694
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .end local v0           #blob:[B
    .end local v4           #ret:I
    :cond_4b
    move v5, v8

    .line 1705
    goto :goto_1b
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mName:Ljava/lang/String;

    .line 1672
    return-void
.end method

.method setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;->mPassword:Ljava/lang/String;

    .line 1680
    return-void
.end method
