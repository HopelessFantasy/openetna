.class public Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;
.super Landroid/app/ListActivity;
.source "SMSPreferSetting.java"


# static fields
.field public static final WMS_GW_DOMAIN_PREF_CS_ONLY:I = 0x2

.field public static final WMS_GW_DOMAIN_PREF_CS_PREFERRED:I = 0x0

.field public static final WMS_GW_DOMAIN_PREF_PS_ONLY:I = 0x3

.field public static final WMS_GW_DOMAIN_PREF_PS_PREFERRED:I = 0x1

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 78
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, packageName2:Ljava/lang/String;
    const/4 v3, 0x0

    .line 115
    .local v3, setResult:Z
    if-eqz v0, :cond_29

    .line 116
    const-string v4, "com.lge.hiddenmenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_29
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f060029

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 50
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 63
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 64
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 67
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 72
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/module_test/SMSPreferSetting;->selectMenuItem(I)V

    .line 73
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 56
    return-void
.end method
