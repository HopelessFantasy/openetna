.class public Landroid/syncml/pim/VBuilderCollection;
.super Ljava/lang/Object;
.source "VBuilderCollection.java"

# interfaces
.implements Landroid/syncml/pim/VBuilder;


# instance fields
.field private final mVBuilderCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/syncml/pim/VBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/syncml/pim/VBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, vBuilderCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/syncml/pim/VBuilder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    .line 28
    return-void
.end method


# virtual methods
.method public end()V
    .registers 4

    .prologue
    .line 41
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 42
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0}, Landroid/syncml/pim/VBuilder;->end()V

    goto :goto_6

    .line 44
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public endProperty()V
    .registers 4

    .prologue
    .line 66
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 67
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0}, Landroid/syncml/pim/VBuilder;->endProperty()V

    goto :goto_6

    .line 69
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public endRecord()V
    .registers 4

    .prologue
    .line 53
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 54
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0}, Landroid/syncml/pim/VBuilder;->endRecord()V

    goto :goto_6

    .line 56
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public getVBuilderCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/syncml/pim/VBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .registers 5
    .parameter "group"

    .prologue
    .line 72
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 73
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyGroup(Ljava/lang/String;)V

    goto :goto_6

    .line 75
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 78
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 79
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    goto :goto_6

    .line 81
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 84
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 85
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    goto :goto_6

    .line 87
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 90
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 91
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_6

    .line 93
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 97
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    goto :goto_6

    .line 99
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 35
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 36
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0}, Landroid/syncml/pim/VBuilder;->start()V

    goto :goto_6

    .line 38
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public startProperty()V
    .registers 4

    .prologue
    .line 59
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 60
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0}, Landroid/syncml/pim/VBuilder;->startProperty()V

    goto :goto_6

    .line 62
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 47
    iget-object v2, p0, Landroid/syncml/pim/VBuilderCollection;->mVBuilderCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VBuilder;

    .line 48
    .local v0, builder:Landroid/syncml/pim/VBuilder;
    invoke-interface {v0, p1}, Landroid/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    goto :goto_6

    .line 50
    .end local v0           #builder:Landroid/syncml/pim/VBuilder;
    :cond_16
    return-void
.end method
