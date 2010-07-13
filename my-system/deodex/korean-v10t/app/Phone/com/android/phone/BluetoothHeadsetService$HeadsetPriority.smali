.class Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;
.super Ljava/lang/Object;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPriority"
.end annotation


# instance fields
.field private mPriority:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 3
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    return-void
.end method

.method private declared-synchronized load(Ljava/lang/String;)I
    .registers 6
    .parameter "address"

    .prologue
    .line 876
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 879
    .local v0, priority:I
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 881
    monitor-exit p0

    return v0

    .line 876
    .end local v0           #priority:I
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized rebalance()V
    .registers 7

    .prologue
    .line 933
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->getSorted()Ljava/util/LinkedList;

    move-result-object v3

    .line 934
    .local v3, sorted:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebalancing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " headset priorities"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 937
    .local v1, li:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/16 v2, 0x64

    .line 938
    .local v2, priority:I
    :goto_2f
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 939
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_43

    .line 941
    add-int/lit8 v2, v2, 0x1

    .line 942
    goto :goto_2f

    .line 943
    .end local v0           #address:Ljava/lang/String;
    :cond_41
    monitor-exit p0

    return-void

    .line 933
    .end local v1           #li:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2           #priority:I
    .end local v3           #sorted:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catchall_43
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized bump(Ljava/lang/String;)V
    .registers 8
    .parameter "address"

    .prologue
    .line 906
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->get(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_48

    move-result v3

    .line 907
    .local v3, oldPriority:I
    const/4 v2, 0x0

    .line 910
    .local v2, maxPriority:I
    const/16 v5, 0x64

    if-ge v3, v5, :cond_c

    .line 928
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 914
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 916
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 917
    .local v4, p:I
    if-le v4, v2, :cond_16

    .line 918
    move v2, v4

    goto :goto_16

    .line 921
    .end local v0           #a:Ljava/lang/String;
    .end local v4           #p:I
    :cond_38
    if-lt v2, v3, :cond_a

    .line 922
    add-int/lit8 v4, v2, 0x1

    .line 923
    .restart local v4       #p:I
    invoke-virtual {p0, p1, v4}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->set(Ljava/lang/String;I)V

    .line 924
    const v5, 0x7fffffff

    if-lt v4, v5, :cond_a

    .line 925
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->rebalance()V
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_48

    goto :goto_a

    .line 906
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #maxPriority:I
    .end local v3           #oldPriority:I
    .end local v4           #p:I
    :catchall_48
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized get(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 885
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 886
    .local v0, priority:Ljava/lang/Integer;
    if-nez v0, :cond_11

    .line 887
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->load(Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v1

    .line 889
    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    move-result v1

    goto :goto_f

    .line 885
    .end local v0           #priority:Ljava/lang/Integer;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSorted()Ljava/util/LinkedList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 949
    .local v5, sorted:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 953
    .local v6, toSort:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_d
    const/4 v2, 0x0

    .line 954
    .local v2, maxAddress:Ljava/lang/String;
    const/4 v3, 0x0

    .line 955
    .local v3, maxPriority:I
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 956
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3d

    move-result v4

    .line 957
    .local v4, priority:I
    if-le v4, v3, :cond_17

    .line 958
    move-object v2, v0

    .line 959
    move v3, v4

    goto :goto_17

    .line 962
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #priority:I
    :cond_32
    if-nez v2, :cond_36

    .line 968
    monitor-exit p0

    return-object v5

    .line 965
    :cond_36
    :try_start_36
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 966
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3d

    goto :goto_d

    .line 948
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #maxAddress:Ljava/lang/String;
    .end local v3           #maxPriority:I
    .end local v5           #sorted:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v6           #toSort:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_3d
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized load()Z
    .registers 7

    .prologue
    .line 865
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->listBonds()[Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1f

    move-result-object v1

    .line 866
    .local v1, addresses:[Ljava/lang/String;
    if-nez v1, :cond_10

    .line 867
    const/4 v5, 0x0

    .line 872
    :goto_e
    monitor-exit p0

    return v5

    .line 869
    :cond_10
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    :try_start_11
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_1d

    aget-object v0, v2, v3

    .line 870
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->load(Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    .line 869
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 872
    .end local v0           #address:Ljava/lang/String;
    :cond_1d
    const/4 v5, 0x1

    goto :goto_e

    .line 865
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_1f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized set(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "priority"

    .prologue
    .line 893
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->get(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_41

    move-result v0

    .line 894
    .local v0, oldPriority:I
    if-ne v0, p2, :cond_9

    .line 902
    :goto_7
    monitor-exit p0

    return-void

    .line 897
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->mPriority:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$HeadsetPriority;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_41

    goto :goto_7

    .line 893
    .end local v0           #oldPriority:I
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1
.end method
