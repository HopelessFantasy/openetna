.class public Lcom/android/mms/dom/smil/SmilParElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilParElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# static fields
.field public static final SMIL_SLIDE_END_EVENT:Ljava/lang/String; = "SmilSlideEnd"

.field public static final SMIL_SLIDE_START_EVENT:Ljava/lang/String; = "SmilSlideStart"


# instance fields
.field mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .registers 4
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilParElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .line 100
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "instant"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method getBeginConstraints()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x2

    return v0
.end method

.method public getDur()F
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getEndSync()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEndSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getImplicitDuration()F
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getImplicitDuration()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()F
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getRestart()S

    move-result v0

    return v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->pauseElement()V

    .line 176
    return-void
.end method

.method public resumeElement()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->resumeElement()V

    .line 180
    return-void
.end method

.method public seekElement(F)V
    .registers 3
    .parameter "seekTo"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->seekElement(F)V

    .line 184
    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .registers 3
    .parameter "begin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    .line 188
    return-void
.end method

.method public setDur(F)V
    .registers 3
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setDur(F)V

    .line 192
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .registers 3
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    .line 196
    return-void
.end method

.method public setEndSync(Ljava/lang/String;)V
    .registers 3
    .parameter "endSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setEndSync(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setFill(S)V
    .registers 3
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setFill(S)V

    .line 200
    return-void
.end method

.method public setFillDefault(S)V
    .registers 3
    .parameter "fillDefault"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setFillDefault(S)V

    .line 204
    return-void
.end method

.method public setRepeatCount(F)V
    .registers 3
    .parameter "repeatCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRepeatCount(F)V

    .line 208
    return-void
.end method

.method public setRepeatDur(F)V
    .registers 3
    .parameter "repeatDur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRepeatDur(F)V

    .line 212
    return-void
.end method

.method public setRestart(S)V
    .registers 3
    .parameter "restart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setRestart(S)V

    .line 216
    return-void
.end method
