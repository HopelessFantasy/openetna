.class public Lcom/google/wireless/gdata/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "EventEntry.java"


# static fields
.field public static final STATUS_CANCELED:B = 0x2t

.field public static final STATUS_CONFIRMED:B = 0x1t

.field public static final STATUS_TENTATIVE:B = 0x0t

.field public static final TRANSPARENCY_OPAQUE:B = 0x0t

.field public static final TRANSPARENCY_TRANSPARENT:B = 0x1t

.field public static final VISIBILITY_CONFIDENTIAL:B = 0x1t

.field public static final VISIBILITY_DEFAULT:B = 0x0t

.field public static final VISIBILITY_PRIVATE:B = 0x2t

.field public static final VISIBILITY_PUBLIC:B = 0x3t


# instance fields
.field private attendees:Ljava/util/Vector;

.field private commentsUri:Ljava/lang/String;

.field private extendedProperties:Ljava/util/Hashtable;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private recurrence:Ljava/lang/String;

.field private reminders:Ljava/util/Vector;

.field private status:B

.field private transparency:B

.field private visibility:B

.field private whens:Ljava/util/Vector;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 68
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 74
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 75
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V
    .registers 3
    .parameter "attendee"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 256
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 258
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V
    .registers 3
    .parameter "reminder"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 200
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V
    .registers 3
    .parameter "when"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 93
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 94
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 95
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 96
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 97
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 98
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 99
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 100
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 105
    return-void
.end method

.method public clearAttendees()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 165
    return-void
.end method

.method public clearExtendedProperties()V
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 263
    return-void
.end method

.method public clearReminders()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 207
    return-void
.end method

.method public clearWhens()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 177
    return-void
.end method

.method public getAttendees()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v1, :cond_6

    .line 245
    const/4 v1, 0x0

    .line 251
    :goto_5
    return-object v1

    .line 247
    :cond_6
    const/4 v0, 0x0

    .line 248
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 249
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    :cond_17
    move-object v1, v0

    .line 251
    goto :goto_5
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata/calendar/data/When;
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 189
    const/4 v0, 0x0

    .line 191
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/wireless/gdata/calendar/data/When;

    move-object v0, p0

    goto :goto_9
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    return-object v0
.end method

.method public getStatus()B
    .registers 2

    .prologue
    .line 125
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .registers 2

    .prologue
    .line 139
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getVisibility()B
    .registers 2

    .prologue
    .line 153
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .registers 2
    .parameter "commentsUri"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .registers 2
    .parameter "originalEventId"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .registers 2
    .parameter "originalEventStartTime"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .registers 2
    .parameter "recurrence"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setStatus(B)V
    .registers 2
    .parameter "status"

    .prologue
    .line 132
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 133
    return-void
.end method

.method public setTransparency(B)V
    .registers 2
    .parameter "transparency"

    .prologue
    .line 146
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 147
    return-void
.end method

.method public setVisibility(B)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 160
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 161
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .registers 2
    .parameter "where"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 14
    .parameter "sb"

    .prologue
    const-string v11, "\n"

    .line 274
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STATUS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v9, "RECURRENCE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VISIBILITY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSPARENCY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v9, "ORIGINAL_EVENT_ID"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v9, "ORIGINAL_START_TIME"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 284
    .local v8, whos:Ljava/util/Enumeration;
    :goto_7a
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 285
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 286
    .local v7, who:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v7, p1}, Lcom/google/wireless/gdata/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7a

    .line 289
    .end local v7           #who:Lcom/google/wireless/gdata/calendar/data/Who;
    :cond_8a
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 290
    .local v4, times:Ljava/util/Enumeration;
    :goto_90
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 291
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata/calendar/data/When;

    .line 292
    .local v6, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {v6, p1}, Lcom/google/wireless/gdata/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_90

    .line 294
    .end local v6           #when:Lcom/google/wireless/gdata/calendar/data/When;
    :cond_a0
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v9, :cond_ba

    .line 295
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 296
    .local v0, alarms:Ljava/util/Enumeration;
    :goto_aa
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 297
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 298
    .local v3, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_aa

    .line 301
    .end local v0           #alarms:Ljava/util/Enumeration;
    .end local v3           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    :cond_ba
    const-string v9, "WHERE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v9, "COMMENTS"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v9, :cond_f7

    .line 304
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 305
    .local v1, entryNames:Ljava/util/Enumeration;
    :goto_d2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 306
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 308
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d2

    .line 314
    .end local v1           #entryNames:Ljava/util/Enumeration;
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_f7
    return-void
.end method
