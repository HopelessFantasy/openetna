.class Lcom/android/alarmclock/AlarmClock$7;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 673
    iget-object v7, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 674
    .local v6, view:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v7}, Lcom/android/alarmclock/AlarmClock;->access$000(Lcom/android/alarmclock/AlarmClock;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 679
    .local v0, cursorAdapter:Landroid/widget/CursorAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 682
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 683
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 684
    .local v4, strKey:Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 686
    .local v3, nData:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 688
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 692
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #nData:Ljava/lang/Boolean;
    .end local v4           #strKey:Ljava/lang/Integer;
    :cond_48
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8d

    .line 694
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    const v9, 0x7f070002

    invoke-virtual {v8, v9}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    const v9, 0x7f070006

    invoke-virtual {v8, v9}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/alarmclock/AlarmClock$7$2;

    invoke-direct {v9, p0, v5}, Lcom/android/alarmclock/AlarmClock$7$2;-><init>(Lcom/android/alarmclock/AlarmClock$7;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    new-instance v9, Lcom/android/alarmclock/AlarmClock$7$1;

    invoke-direct {v9, p0}, Lcom/android/alarmclock/AlarmClock$7$1;-><init>(Lcom/android/alarmclock/AlarmClock$7;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 723
    :cond_8d
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 724
    return-void
.end method
