.class public Lcom/lge/hiddenmenu/aging_test/AgingTest;
.super Landroid/app/ListActivity;
.source "AgingTest.java"


# static fields
.field public static final FULL:I = 0x0

.field public static final Full_Shake:I = 0x2

.field public static final PackageName:Ljava/lang/String; = "com.lge.hiddenmenu"

.field public static final SHAKE:I = 0x1


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1. DataBase Full Test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2. Database Shake Test"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AgingTest;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method private runApplication(I)V
    .registers 7
    .parameter "id"

    .prologue
    const-string v4, "com.lge.hiddenmenu"

    .line 46
    const-string v0, "com.lge.hiddenmenu.aging_test"

    .line 48
    .local v0, PackageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6c

    .line 69
    :goto_7
    return-void

    .line 50
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".DB_Full"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 56
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_29
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".DB_Shake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 62
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".DB_Full_Shake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 48
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_29
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AgingTest;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 39
    const/16 v0, 0x8

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->runApplication(I)V

    .line 41
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 34
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/aging_test/AgingTest;->runApplication(I)V

    .line 35
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 27
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 31
    return-void
.end method
