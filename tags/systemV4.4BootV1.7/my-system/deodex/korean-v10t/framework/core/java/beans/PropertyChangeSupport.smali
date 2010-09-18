.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private transient allPropertiesChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private children:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private propertyChangeSupportSerializedDataVersion:I

.field private transient selectedPropertiesChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/Object;

.field private transient sourceBean:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "sourceBean"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Ljava/beans/PropertyChangeSupport;->propertyChangeSupportSerializedDataVersion:I

    .line 62
    if-nez p1, :cond_1c

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_1c
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private createPropertyChangeEvent(Ljava/lang/String;II)Ljava/beans/PropertyChangeEvent;
    .registers 8
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 454
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createPropertyChangeEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/beans/PropertyChangeEvent;
    .registers 6
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 442
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createPropertyChangeEvent(Ljava/lang/String;ZZ)Ljava/beans/PropertyChangeEvent;
    .registers 8
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 448
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 15
    .parameter "event"

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, propertyName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v9

    .line 461
    .local v9, oldValue:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v8

    .line 463
    .local v8, newValue:Ljava/lang/Object;
    if-eqz v8, :cond_17

    if-eqz v9, :cond_17

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 499
    :cond_16
    return-void

    .line 476
    :cond_17
    const/4 v7, 0x0

    .line 477
    .local v7, listensToOne:[Ljava/beans/PropertyChangeListener;
    monitor-enter p0

    .line 478
    :try_start_19
    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    iget-object v12, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/beans/PropertyChangeListener;

    .line 482
    .local v6, listensToAll:[Ljava/beans/PropertyChangeListener;
    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 484
    .local v5, listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz v5, :cond_41

    .line 485
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    move-object v7, v0

    .line 488
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_4f

    .line 491
    move-object v1, v6

    .local v1, arr$:[Ljava/beans/PropertyChangeListener;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_45
    if-ge v2, v3, :cond_52

    aget-object v4, v1, v2

    .line 492
    .local v4, listener:Ljava/beans/PropertyChangeListener;
    invoke-interface {v4, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 488
    .end local v1           #arr$:[Ljava/beans/PropertyChangeListener;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #listener:Ljava/beans/PropertyChangeListener;
    .end local v5           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .end local v6           #listensToAll:[Ljava/beans/PropertyChangeListener;
    :catchall_4f
    move-exception v11

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v11

    .line 494
    .restart local v1       #arr$:[Ljava/beans/PropertyChangeListener;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .restart local v6       #listensToAll:[Ljava/beans/PropertyChangeListener;
    :cond_52
    if-eqz v7, :cond_16

    .line 495
    move-object v1, v7

    array-length v3, v1

    const/4 v2, 0x0

    :goto_57
    if-ge v2, v3, :cond_16

    aget-object v4, v1, v2

    .line 496
    .restart local v4       #listener:Ljava/beans/PropertyChangeListener;
    invoke-interface {v4, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_57
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->children:Ljava/util/Hashtable;

    .line 418
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->children:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    .line 420
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    .line 422
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    if-nez v0, :cond_28

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    .line 426
    :cond_28
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljava/beans/PropertyChangeSupport;->propertyChangeSupportSerializedDataVersion:I

    .line 428
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 13
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, allSerializedPropertiesChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    .line 368
    .local v4, pcl:Ljava/beans/PropertyChangeListener;
    instance-of v9, v4, Ljava/io/Serializable;

    if-eqz v9, :cond_b

    .line 369
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 374
    .end local v4           #pcl:Ljava/beans/PropertyChangeListener;
    :cond_1f
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v6, selectedSerializedPropertiesChangeListeners:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/beans/PropertyChangeListener;>;>;"
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 378
    .local v5, propertyName:Ljava/lang/String;
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 381
    .local v3, keyValues:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz v3, :cond_2e

    .line 382
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v7, serializedPropertiesChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    .line 386
    .restart local v4       #pcl:Ljava/beans/PropertyChangeListener;
    instance-of v9, v4, Ljava/io/Serializable;

    if-eqz v9, :cond_4d

    .line 387
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 391
    .end local v4           #pcl:Ljava/beans/PropertyChangeListener;
    :cond_61
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 392
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 398
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keyValues:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .end local v5           #propertyName:Ljava/lang/String;
    .end local v7           #serializedPropertiesChangeListeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :cond_6b
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9, v6}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v9, p0, Ljava/beans/PropertyChangeSupport;->children:Ljava/util/Hashtable;

    .line 400
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->children:Ljava/util/Hashtable;

    const-string v10, ""

    invoke-virtual {v9, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->children:Ljava/util/Hashtable;

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 403
    const/4 v8, 0x0

    .line 404
    .local v8, source:Ljava/lang/Object;
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    instance-of v9, v9, Ljava/io/Serializable;

    if-eqz v9, :cond_87

    .line 405
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    .line 407
    .end local v8           #source:Ljava/lang/Object;
    :cond_87
    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 409
    iget v9, p0, Ljava/beans/PropertyChangeSupport;->propertyChangeSupportSerializedDataVersion:I

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 410
    return-void
.end method


# virtual methods
.method public declared-synchronized addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 324
    monitor-enter p0

    if-eqz p1, :cond_1a

    .line 325
    :try_start_3
    instance-of v3, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v3, :cond_1c

    .line 326
    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, name:Ljava/lang/String;
    check-cast p1, Ljava/beans/PropertyChangeListenerProxy;

    .end local p1
    invoke-virtual {p1}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 330
    .local v1, lst:Ljava/beans/PropertyChangeListener;
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    .line 335
    .end local v1           #lst:Ljava/beans/PropertyChangeListener;
    .end local v2           #name:Ljava/lang/String;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 332
    .restart local p1
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_1a

    .line 324
    .end local p1
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 9
    .parameter "propertyName"
    .parameter "listener"

    .prologue
    .line 145
    monitor-enter p0

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    .line 146
    :try_start_5
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 149
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-nez v1, :cond_19

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v1       #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_19
    instance-of v3, p2, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v3, :cond_35

    .line 156
    move-object v0, p2

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v2, v0

    .line 159
    .local v2, proxy:Ljava/beans/PropertyChangeListenerProxy;
    new-instance v4, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyChangeListener;

    invoke-direct {v4, v5, v3}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_39

    .line 166
    .end local v1           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .end local v2           #proxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 163
    .restart local v1       #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :cond_35
    :try_start_35
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_33

    .line 145
    .end local v1           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :catchall_39
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .registers 7
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 267
    if-eq p3, p4, :cond_f

    .line 268
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    :cond_f
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 107
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Ljava/beans/PropertyChangeSupport;->doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 109
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .registers 7
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 225
    if-eq p3, p4, :cond_d

    .line 226
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 229
    :cond_d
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Ljava/beans/PropertyChangeSupport;->doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 438
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .registers 5
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->createPropertyChangeEvent(Ljava/lang/String;II)Ljava/beans/PropertyChangeEvent;

    move-result-object v0

    .line 247
    .local v0, event:Ljava/beans/PropertyChangeEvent;
    invoke-direct {p0, v0}, Ljava/beans/PropertyChangeSupport;->doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 248
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->createPropertyChangeEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/beans/PropertyChangeEvent;

    move-result-object v0

    .line 85
    .local v0, event:Ljava/beans/PropertyChangeEvent;
    invoke-direct {p0, v0}, Ljava/beans/PropertyChangeSupport;->doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 86
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->createPropertyChangeEvent(Ljava/lang/String;ZZ)Ljava/beans/PropertyChangeEvent;

    move-result-object v0

    .line 205
    .local v0, event:Ljava/beans/PropertyChangeEvent;
    invoke-direct {p0, v0}, Ljava/beans/PropertyChangeSupport;->doFirePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 206
    return-void
.end method

.method public declared-synchronized getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .registers 8

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/beans/PropertyChangeListener;>;"
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 348
    .local v3, propertyName:Ljava/lang/String;
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 351
    .local v5, selectedListeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz v5, :cond_12

    .line 353
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeListener;

    .line 354
    .local v2, listener:Ljava/beans/PropertyChangeListener;
    new-instance v6, Ljava/beans/PropertyChangeListenerProxy;

    invoke-direct {v6, v3, v2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    goto :goto_2c

    .line 343
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Ljava/beans/PropertyChangeListener;
    .end local v3           #propertyName:Ljava/lang/String;
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/beans/PropertyChangeListener;>;"
    .end local v5           #selectedListeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :catchall_41
    move-exception v6

    monitor-exit p0

    throw v6

    .line 360
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/beans/PropertyChangeListener;>;"
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/beans/PropertyChangeListener;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/beans/PropertyChangeListener;
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_41

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .registers 5
    .parameter "propertyName"

    .prologue
    .line 178
    monitor-enter p0

    const/4 v1, 0x0

    .line 180
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz p1, :cond_e

    .line 181
    :try_start_4
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 184
    :cond_e
    if-nez v1, :cond_15

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/beans/PropertyChangeListener;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_22

    :goto_13
    monitor-exit p0

    return-object v2

    :cond_15
    :try_start_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/beans/PropertyChangeListener;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_13

    .line 178
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized hasListeners(Ljava/lang/String;)Z
    .registers 7
    .parameter "propertyName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    move v1, v4

    .line 284
    .local v1, result:Z
    :goto_c
    if-nez v1, :cond_21

    if-eqz p1, :cond_21

    .line 285
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 287
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz v0, :cond_21

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_27

    move-result v2

    if-lez v2, :cond_25

    move v1, v4

    .line 291
    .end local v0           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :cond_21
    :goto_21
    monitor-exit p0

    return v1

    .end local v1           #result:Z
    :cond_23
    move v1, v3

    .line 283
    goto :goto_c

    .restart local v0       #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .restart local v1       #result:Z
    :cond_25
    move v1, v3

    .line 288
    goto :goto_21

    .line 283
    .end local v0           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    .end local v1           #result:Z
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 302
    monitor-enter p0

    if-eqz p1, :cond_1a

    .line 303
    :try_start_3
    instance-of v3, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v3, :cond_1c

    .line 304
    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, name:Ljava/lang/String;
    check-cast p1, Ljava/beans/PropertyChangeListenerProxy;

    .end local p1
    invoke-virtual {p1}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 309
    .local v1, lst:Ljava/beans/PropertyChangeListener;
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    .line 314
    .end local v1           #lst:Ljava/beans/PropertyChangeListener;
    .end local v2           #name:Ljava/lang/String;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 311
    .restart local p1
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->allPropertiesChangeListeners:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_1a

    .line 302
    .end local p1
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .parameter "propertyName"
    .parameter "listener"

    .prologue
    .line 124
    monitor-enter p0

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 125
    :try_start_5
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->selectedPropertiesChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    if-eqz v0, :cond_12

    .line 129
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    .line 132
    .end local v0           #listeners:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    :cond_12
    monitor-exit p0

    return-void

    .line 124
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
